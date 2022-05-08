package p081h.p119d.p120a.p124s.p134k.p140j;

import android.graphics.Bitmap;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p131j.C5909g;
import p081h.p119d.p120a.p124s.p134k.p135e.C5955c;
import p081h.p119d.p120a.p124s.p134k.p135e.C5970n;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
import p081h.p119d.p120a.p149y.C6089a;
/* renamed from: h.d.a.s.k.j.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/c.class */
public class C6009c implements AbstractC5808e<C5909g, C6007a> {

    /* renamed from: g */
    public static final C6011b f14987g = new C6011b();

    /* renamed from: h */
    public static final C6010a f14988h = new C6010a();

    /* renamed from: a */
    public final AbstractC5808e<C5909g, Bitmap> f14989a;

    /* renamed from: b */
    public final AbstractC5808e<InputStream, C5988b> f14990b;

    /* renamed from: c */
    public final AbstractC5856c f14991c;

    /* renamed from: d */
    public final C6011b f14992d;

    /* renamed from: e */
    public final C6010a f14993e;

    /* renamed from: f */
    public String f14994f;

    /* renamed from: h.d.a.s.k.j.c$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/c$a.class */
    public static class C6010a {
        /* renamed from: a */
        public InputStream m24030a(InputStream inputStream, byte[] bArr) {
            return new C5970n(inputStream, bArr);
        }
    }

    /* renamed from: h.d.a.s.k.j.c$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/c$b.class */
    public static class C6011b {
        /* renamed from: a */
        public ImageHeaderParser.ImageType m24029a(InputStream inputStream) throws IOException {
            return new ImageHeaderParser(inputStream).m36087c();
        }
    }

    public C6009c(AbstractC5808e<C5909g, Bitmap> eVar, AbstractC5808e<InputStream, C5988b> eVar2, AbstractC5856c cVar) {
        this(eVar, eVar2, cVar, f14987g, f14988h);
    }

    public C6009c(AbstractC5808e<C5909g, Bitmap> eVar, AbstractC5808e<InputStream, C5988b> eVar2, AbstractC5856c cVar, C6011b bVar, C6010a aVar) {
        this.f14989a = eVar;
        this.f14990b = eVar2;
        this.f14991c = cVar;
        this.f14992d = bVar;
        this.f14993e = aVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5848l<C6007a> mo24025a(C5909g gVar, int i, int i2) throws IOException {
        C6089a b = C6089a.m23886b();
        byte[] a = b.m23888a();
        try {
            C6007a a2 = m24034a(gVar, i, i2, a);
            return a2 != null ? new C6008b(a2) : null;
        } finally {
            b.m23887a(a);
        }
    }

    /* renamed from: a */
    public final C6007a m24034a(C5909g gVar, int i, int i2, byte[] bArr) throws IOException {
        return gVar.m24149b() != null ? m24031b(gVar, i, i2, bArr) : m24032b(gVar, i, i2);
    }

    /* renamed from: a */
    public final C6007a m24033a(InputStream inputStream, int i, int i2) throws IOException {
        C6007a aVar;
        AbstractC5848l<C5988b> a = this.f14990b.mo24025a(inputStream, i, i2);
        if (a != null) {
            C5988b bVar = a.get();
            aVar = bVar.m24080d() > 1 ? new C6007a(null, a) : new C6007a(new C5955c(bVar.m24081c(), this.f14991c), null);
        } else {
            aVar = null;
        }
        return aVar;
    }

    /* renamed from: b */
    public final C6007a m24032b(C5909g gVar, int i, int i2) throws IOException {
        AbstractC5848l<Bitmap> a = this.f14989a.mo24025a(gVar, i, i2);
        C6007a aVar = null;
        if (a != null) {
            aVar = new C6007a(a, null);
        }
        return aVar;
    }

    /* renamed from: b */
    public final C6007a m24031b(C5909g gVar, int i, int i2, byte[] bArr) throws IOException {
        InputStream a = this.f14993e.m24030a(gVar.m24149b(), bArr);
        a.mark(2048);
        ImageHeaderParser.ImageType a2 = this.f14992d.m24029a(a);
        a.reset();
        C6007a a3 = a2 == ImageHeaderParser.ImageType.GIF ? m24033a(a, i, i2) : null;
        C6007a aVar = a3;
        if (a3 == null) {
            aVar = m24032b(new C5909g(a, gVar.m24150a()), i, i2);
        }
        return aVar;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5808e
    public String getId() {
        if (this.f14994f == null) {
            this.f14994f = this.f14990b.getId() + this.f14989a.getId();
        }
        return this.f14994f;
    }
}
