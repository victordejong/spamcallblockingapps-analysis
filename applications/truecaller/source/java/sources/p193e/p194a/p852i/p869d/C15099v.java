package p193e.p194a.p852i.p869d;

import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.i.d.v */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/v.class */
public final class C15099v implements AbstractC15101x {

    /* renamed from: a */
    public final AbstractC15082k f43040a;

    /* renamed from: b */
    public final C15098u f43041b;

    /* renamed from: c */
    public final AbstractC15079h f43042c;

    /* renamed from: d */
    public final AbstractC15081j f43043d;

    /* renamed from: e */
    public final AbstractC15084m f43044e;

    /* renamed from: f */
    public final AbstractC15083l f43045f;

    @Inject
    public C15099v(AbstractC15082k abstractC15082k, C15098u c15098u, AbstractC15079h abstractC15079h, AbstractC15081j abstractC15081j, AbstractC15084m abstractC15084m, AbstractC15083l abstractC15083l) {
        l.e(abstractC15082k, "nativeAdsPresenter");
        l.e(c15098u, "customNativeAdsPresenter");
        l.e(abstractC15079h, "bannerAdsPresenter");
        l.e(abstractC15081j, "houseAdsPresenter");
        l.e(abstractC15084m, "placeholderAdsPresenter");
        l.e(abstractC15083l, "noneAdsPresenter");
        this.f43040a = abstractC15082k;
        this.f43041b = c15098u;
        this.f43042c = abstractC15079h;
        this.f43043d = abstractC15081j;
        this.f43044e = abstractC15084m;
        this.f43045f = abstractC15083l;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15101x
    /* renamed from: a */
    public AbstractC15080i mo19173a() {
        return this.f43041b;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15101x
    /* renamed from: b */
    public AbstractC15081j mo19172b() {
        return this.f43043d;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15101x
    /* renamed from: c */
    public AbstractC15079h mo19171c() {
        return this.f43042c;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15101x
    /* renamed from: d */
    public AbstractC15083l mo19170d() {
        return this.f43045f;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15101x
    /* renamed from: e */
    public AbstractC15082k mo19169e() {
        return this.f43040a;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15101x
    /* renamed from: f */
    public AbstractC15084m mo19168f() {
        return this.f43044e;
    }
}
