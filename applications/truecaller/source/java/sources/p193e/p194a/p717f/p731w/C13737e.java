package p193e.p194a.p717f.p731w;

import com.truecaller.incallui.utils.InCallUISearchDirection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p734z.AbstractC13826k;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.h;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.w.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/w/e.class */
public final class C13737e implements AbstractC13734c, i0 {

    /* renamed from: a */
    public final Map<String, C13642g> f39787a = new LinkedHashMap();

    /* renamed from: b */
    public final h<AbstractC13738f> f39788b = d.d(-1);

    /* renamed from: c */
    public p1 f39789c;

    /* renamed from: d */
    public final AbstractC13826k f39790d;

    /* renamed from: e */
    public final f f39791e;

    /* renamed from: f */
    public final f f39792f;

    @Inject
    public C13737e(AbstractC13826k abstractC13826k, @Named("UI") f fVar, @Named("IO") f fVar2) {
        l.e(abstractC13826k, "callerInfoProvider");
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        this.f39790d = abstractC13826k;
        this.f39791e = fVar;
        this.f39792f = fVar2;
    }

    @Override // p193e.p194a.p717f.p731w.AbstractC13734c
    /* renamed from: a */
    public h<AbstractC13738f> mo21236a() {
        return this.f39788b;
    }

    @Override // p193e.p194a.p717f.p731w.AbstractC13734c
    /* renamed from: b */
    public C13642g mo21235b(String str) {
        l.e(str, "phoneNumber");
        return this.f39787a.get(str);
    }

    @Override // p193e.p194a.p717f.p731w.AbstractC13734c
    /* renamed from: c */
    public void mo21234c(String str, InCallUISearchDirection inCallUISearchDirection) {
        AbstractC13738f.C13739a c13739a = AbstractC13738f.C13739a.f39793a;
        l.e(inCallUISearchDirection, "searchDirection");
        p1 p1Var = this.f39789c;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        if (str == null) {
            this.f39788b.offer(c13739a);
        } else if (!this.f39787a.containsKey(str)) {
            this.f39788b.offer(new AbstractC13738f.C13741c(str));
            this.f39789c = d.w2(this, (f) null, (j0) null, new C13735d(this, str, inCallUISearchDirection, null), 3, (Object) null);
        } else {
            C13642g c13642g = this.f39787a.get(str);
            if (c13642g != null) {
                this.f39788b.offer(new AbstractC13738f.C13740b(c13642g));
            } else {
                this.f39788b.offer(c13739a);
            }
        }
    }

    public f getCoroutineContext() {
        return this.f39791e;
    }

    @Override // p193e.p194a.p717f.p731w.AbstractC13734c
    public void release() {
        p1 p1Var = this.f39789c;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f39787a.clear();
    }
}
