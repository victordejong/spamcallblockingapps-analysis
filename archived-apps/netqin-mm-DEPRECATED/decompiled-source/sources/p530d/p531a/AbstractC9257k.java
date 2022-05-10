package p530d.p531a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: d.a.k */
/* loaded from: classes2-dex2jar.jar:d/a/k.class */
public interface AbstractC9257k extends AbstractC9270l, AbstractC9302r {

    /* renamed from: d.a.k$a */
    /* loaded from: classes2-dex2jar.jar:d/a/k$a.class */
    public static final class C9258a implements AbstractC9257k {
        @Override // p530d.p531a.AbstractC9302r
        /* renamed from: a */
        public InputStream mo2972a(InputStream inputStream) throws IOException {
            return new GZIPInputStream(inputStream);
        }

        @Override // p530d.p531a.AbstractC9270l
        /* renamed from: a */
        public OutputStream mo3033a(OutputStream outputStream) throws IOException {
            return new GZIPOutputStream(outputStream);
        }

        @Override // p530d.p531a.AbstractC9270l, p530d.p531a.AbstractC9302r
        /* renamed from: a */
        public String mo2973a() {
            return "gzip";
        }
    }

    /* renamed from: d.a.k$b */
    /* loaded from: classes2-dex2jar.jar:d/a/k$b.class */
    public static final class C9259b implements AbstractC9257k {

        /* renamed from: a */
        public static final AbstractC9257k f35812a = new C9259b();

        @Override // p530d.p531a.AbstractC9302r
        /* renamed from: a */
        public InputStream mo2972a(InputStream inputStream) {
            return inputStream;
        }

        @Override // p530d.p531a.AbstractC9270l
        /* renamed from: a */
        public OutputStream mo3033a(OutputStream outputStream) {
            return outputStream;
        }

        @Override // p530d.p531a.AbstractC9270l, p530d.p531a.AbstractC9302r
        /* renamed from: a */
        public String mo2973a() {
            return "identity";
        }
    }
}
