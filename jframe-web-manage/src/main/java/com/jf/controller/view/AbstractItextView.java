package com.jf.controller.view;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import org.springframework.web.servlet.view.AbstractView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.Map;

public abstract class AbstractItextView extends AbstractView {

    public AbstractItextView() {
        setContentType("application/pdf");
    }

    @Override
    protected boolean generatesDownloadContent() {
        return true;
    }

    @Override
    protected final void renderMergedOutputModel(
            Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {

        // IE workaround: write into byte array first.
        ByteArrayOutputStream baos = createTemporaryOutputStream();

        // Apply preferences and build metadata.
        Document document = newDocument();
        PdfWriter writer = newWriter(document, baos);
        prepareWriter(model, writer, request);
        buildPdfMetadata(model, document, request);

        // Build PDF document.
        document.open();
        buildPdfDocument(model, document, writer, request, response);
        document.close();

        // Flush to HTTP response.
        writeToResponse(response, baos);
    }

    /**
     * Create a new document to hold the PDF contents.
     * <p>By default returns an A4 document, but the subclass can specify any
     * Document, possibly parameterized via bean properties defined on the View.
     *
     * @return the newly created iText Document instance
     * @see com.lowagie.text.Document#Document(com.lowagie.text.Rectangle)
     */
    protected Document newDocument() {
        return new Document(PageSize.A4);
    }

    /**
     * Create a new PdfWriter for the given iText Document.
     *
     * @param document the iText Document to create a writer for
     * @param os       the OutputStream to write to
     * @return the PdfWriter instance to use
     * @throws DocumentException if thrown during writer creation
     */
    protected PdfWriter newWriter(Document document, OutputStream os) throws DocumentException {
        return PdfWriter.getInstance(document, os);
    }

    /**
     * Prepare the given PdfWriter. Called before building the PDF document,
     * that is, before the call to {@code Document.open()}.
     * <p>Useful for registering a page event listener, for example.
     * The default implementation sets the viewer preferences as returned
     * by this class's {@code getViewerPreferences()} method.
     *
     * @param model   the model, in case meta information must be populated from it
     * @param writer  the PdfWriter to prepare
     * @param request in case we need locale etc. Shouldn't look at attributes.
     * @throws DocumentException if thrown during writer preparation
     * @see com.lowagie.text.Document#open()
     * @see com.lowagie.text.pdf.PdfWriter#setPageEvent
     * @see com.lowagie.text.pdf.PdfWriter#setViewerPreferences
     * @see #getViewerPreferences()
     */
    protected void prepareWriter(Map<String, Object> model, PdfWriter writer, HttpServletRequest request)
            throws DocumentException {

        writer.setViewerPreferences(getViewerPreferences());
    }

    /**
     * Return the viewer preferences for the PDF file.
     * <p>By default returns {@code AllowPrinting} and
     * {@code PageLayoutSinglePage}, but can be subclassed.
     * The subclass can either have fixed preferences or retrieve
     * them from bean properties defined on the View.
     *
     * @return an int containing the bits information against PdfWriter definitions
     * @see com.lowagie.text.pdf.PdfWriter#AllowPrinting
     * @see com.lowagie.text.pdf.PdfWriter#PageLayoutSinglePage
     */
    protected int getViewerPreferences() {
        return PdfWriter.ALLOW_PRINTING | PdfWriter.PageLayoutSinglePage;
    }

    /**
     * Populate the iText Document's meta fields (author, title, etc.).
     * <br>Default is an empty implementation. Subclasses may override this method
     * to add meta fields such as title, subject, author, creator, keywords, etc.
     * This method is called after assigning a PdfWriter to the Document and
     * before calling {@code document.open()}.
     *
     * @param model    the model, in case meta information must be populated from it
     * @param document the iText document being populated
     * @param request  in case we need locale etc. Shouldn't look at attributes.
     * @see com.lowagie.text.Document#addTitle
     * @see com.lowagie.text.Document#addSubject
     * @see com.lowagie.text.Document#addKeywords
     * @see com.lowagie.text.Document#addAuthor
     * @see com.lowagie.text.Document#addCreator
     * @see com.lowagie.text.Document#addProducer
     * @see com.lowagie.text.Document#addCreationDate
     * @see com.lowagie.text.Document#addHeader
     */
    protected void buildPdfMetadata(Map<String, Object> model, Document document, HttpServletRequest request) {
    }

    /**
     * Subclasses must implement this method to build an iText PDF document,
     * given the model. Called between {@code Document.open()} and
     * {@code Document.close()} calls.
     * <p>Note that the passed-in HTTP response is just supposed to be used
     * for setting cookies or other HTTP headers. The built PDF document itself
     * will automatically get written to the response after this method returns.
     *
     * @param model    the model Map
     * @param document the iText Document to add elements to
     * @param writer   the PdfWriter to use
     * @param request  in case we need locale etc. Shouldn't look at attributes.
     * @param response in case we need to set cookies. Shouldn't write to it.
     * @throws Exception any exception that occurred during document building
     * @see com.lowagie.text.Document#open()
     * @see com.lowagie.text.Document#close()
     */
    protected abstract void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
                                             HttpServletRequest request, HttpServletResponse response) throws Exception;

}