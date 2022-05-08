package p081h.p119d.p120a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.ParcelFileDescriptor;
import android.widget.ImageView;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p131j.C5909g;
import p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5956d;
import p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5958f;
import p081h.p119d.p120a.p124s.p134k.p135e.C5963h;
import p081h.p119d.p120a.p124s.p134k.p135e.C5968l;
import p081h.p119d.p120a.p124s.p134k.p135e.C5973p;
import p081h.p119d.p120a.p144v.AbstractC6049f;
import p081h.p119d.p120a.p145w.p146i.AbstractC6065d;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
/* renamed from: h.d.a.b */
/* loaded from: classes-dex2jar.jar:h/d/a/b.class */
public class C5764b<ModelType, TranscodeType> extends C5770h<ModelType, C5909g, Bitmap, TranscodeType> implements AbstractC5763a, AbstractC5767e {

    /* renamed from: D */
    public final AbstractC5856c f14422D;

    /* renamed from: E */
    public EnumC5804a f14423E;

    /* renamed from: F */
    public AbstractC5808e<InputStream, Bitmap> f14424F;

    /* renamed from: G */
    public AbstractC5808e<ParcelFileDescriptor, Bitmap> f14425G;

    public C5764b(AbstractC6049f<ModelType, C5909g, Bitmap, TranscodeType> fVar, Class<TranscodeType> cls, C5770h<ModelType, ?, ?, ?> hVar) {
        super(fVar, cls, hVar);
        AbstractC5958f fVar2 = AbstractC5958f.f14877c;
        this.f14422D = hVar.f14438c.m24468e();
        this.f14423E = hVar.f14438c.m24467f();
        this.f14424F = new C5973p(this.f14422D, this.f14423E);
        this.f14425G = new C5963h(this.f14422D, this.f14423E);
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24521a(int i) {
        super.mo24521a(i);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24519a(Drawable drawable) {
        super.mo24519a(drawable);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24505a(EnumC5779n nVar) {
        super.mo24505a(nVar);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24504a(AbstractC5806c cVar) {
        super.mo24504a(cVar);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24503a(AbstractC5808e<C5909g, Bitmap> eVar) {
        super.mo24503a((AbstractC5808e) eVar);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24502a(EnumC5827b bVar) {
        super.mo24502a(bVar);
        return this;
    }

    /* renamed from: a */
    public final C5764b<ModelType, TranscodeType> m24538a(AbstractC5958f fVar) {
        this.f14424F = new C5973p(fVar, this.f14422D, this.f14423E);
        super.mo24503a((AbstractC5808e) new C5968l(this.f14424F, this.f14425G));
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24500a(AbstractC6065d<TranscodeType> dVar) {
        super.mo24500a((AbstractC6065d) dVar);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24499a(boolean z) {
        super.mo24499a(z);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> mo24498a(AbstractC5810g<Bitmap>... gVarArr) {
        super.mo24498a((AbstractC5810g[]) gVarArr);
        return this;
    }

    /* renamed from: a */
    public C5764b<ModelType, TranscodeType> m24537a(AbstractC5956d... dVarArr) {
        super.mo24498a((AbstractC5810g[]) dVarArr);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public AbstractC6082k<TranscodeType> mo24518a(ImageView imageView) {
        return super.mo24518a(imageView);
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: b */
    public C5764b<ModelType, TranscodeType> mo24495b(int i, int i2) {
        super.mo24495b(i, i2);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    public C5764b<ModelType, TranscodeType> clone() {
        return (C5764b) super.clone();
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: d */
    public void mo24493d() {
        m24535j();
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: e */
    public void mo24492e() {
        m24534k();
    }

    /* renamed from: i */
    public C5764b<ModelType, TranscodeType> m24536i() {
        m24538a(AbstractC5958f.f14878d);
        return this;
    }

    /* renamed from: j */
    public C5764b<ModelType, TranscodeType> m24535j() {
        m24537a(this.f14438c.m24471c());
        return this;
    }

    /* renamed from: k */
    public C5764b<ModelType, TranscodeType> m24534k() {
        m24537a(this.f14438c.m24469d());
        return this;
    }
}
