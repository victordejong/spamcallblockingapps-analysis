package p081h.p119d.p120a.p124s.p134k.p138h;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
/* renamed from: h.d.a.s.k.h.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/h/c.class */
public class C5982c<T> implements AbstractC5808e<File, T> {

    /* renamed from: c */
    public static final C5983a f14921c = new C5983a();

    /* renamed from: a */
    public AbstractC5808e<InputStream, T> f14922a;

    /* renamed from: b */
    public final C5983a f14923b;

    /* renamed from: h.d.a.s.k.h.c$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/h/c$a.class */
    public static class C5983a {
        /* renamed from: a */
        public InputStream m24086a(File file) throws FileNotFoundException {
            return new FileInputStream(file);
        }
    }

    public C5982c(AbstractC5808e<InputStream, T> eVar) {
        this(eVar, f14921c);
    }

    public C5982c(AbstractC5808e<InputStream, T> eVar, C5983a aVar) {
        this.f14922a = eVar;
        this.f14923b = aVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5848l<T> mo24025a(File file, int i, int i2) throws IOException {
        InputStream inputStream = null;
        try {
            InputStream a = this.f14923b.m24086a(file);
            inputStream = a;
            AbstractC5848l<T> a2 = this.f14922a.mo24025a(a, i, i2);
            if (a != null) {
                try {
                    a.close();
                } catch (IOException e) {
                }
            }
            return a2;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5808e
    public String getId() {
        return "";
    }
}
