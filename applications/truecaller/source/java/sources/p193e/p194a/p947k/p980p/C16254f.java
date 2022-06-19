package p193e.p194a.p947k.p980p;

import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.b3.c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.upload.VideoUploadServicePresenter$onUploadRequest$1", f = "VideoUploadServicePresenter.kt", l = {94, 44}, m = "invokeSuspend")
/* renamed from: e.a.k.p.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/p/f.class */
public final class C16254f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f45790e;

    /* renamed from: f */
    public int f45791f;

    /* renamed from: g */
    public final /* synthetic */ C16255g f45792g;

    /* renamed from: h */
    public final /* synthetic */ OnboardingData f45793h;

    /* renamed from: i */
    public final /* synthetic */ String f45794i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16254f(C16255g c16255g, OnboardingData onboardingData, String str, d dVar) {
        super(2, dVar);
        this.f45792g = c16255g;
        this.f45793h = onboardingData;
        this.f45794i = str;
    }

    /* renamed from: i */
    public final d<s> m17670i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16254f(this.f45792g, this.f45793h, this.f45794i, dVar);
    }

    /* renamed from: k */
    public final Object m17669k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16254f(this.f45792g, this.f45793h, this.f45794i, dVar).m17668s(s.a);
    }

    /* renamed from: s */
    public final Object m17668s(Object obj) {
        c cVar;
        c cVar2;
        c cVar3;
        a aVar = a.a;
        int i = this.f45791f;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                C16255g c16255g = this.f45792g;
                c16255g.f45796e++;
                c cVar4 = c16255g.f45795d;
                this.f45790e = cVar4;
                this.f45791f = 1;
                cVar = cVar4;
                if (cVar4.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c cVar5 = (c) this.f45790e;
                cVar3 = cVar5;
                try {
                    C25225a.m3932a3(obj);
                    cVar = cVar5;
                    cVar3 = cVar;
                    s sVar = s.a;
                    cVar.c((Object) null);
                    return sVar;
                } catch (Throwable th) {
                    cVar2 = cVar3;
                    th = th;
                    cVar2.c((Object) null);
                    throw th;
                }
            } else {
                C25225a.m3932a3(obj);
                cVar = (c) this.f45790e;
            }
            AbstractC16253e abstractC16253e = (AbstractC16253e) this.f45792g.f57683a;
            if (abstractC16253e != null) {
                abstractC16253e.mo17671d();
            }
            AbstractC16253e abstractC16253e2 = (AbstractC16253e) this.f45792g.f57683a;
            if (abstractC16253e2 != null) {
                abstractC16253e2.mo17674a(this.f45793h, this.f45794i);
            }
            C16255g c16255g2 = this.f45792g;
            OnboardingData onboardingData = this.f45793h;
            String str = this.f45794i;
            this.f45790e = cVar;
            this.f45791f = 2;
            if (c16255g2.m17667Ij(onboardingData, str, this) == aVar) {
                return aVar;
            }
            cVar3 = cVar;
            s sVar2 = s.a;
            cVar.c((Object) null);
            return sVar2;
        } catch (Throwable th2) {
            th = th2;
            cVar2 = cVar;
            cVar2.c((Object) null);
            throw th;
        }
    }
}
