package p081h.p415j.p416a.p417a.p418a.p421e;

import android.content.Context;
import android.os.Handler;
import p081h.p415j.p416a.p417a.p418a.p419b.AbstractC10614c;
import p081h.p415j.p416a.p417a.p418a.p419b.C10613b;
import p081h.p415j.p416a.p417a.p418a.p419b.C10615d;
import p081h.p415j.p416a.p417a.p418a.p419b.C10616e;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
import p081h.p415j.p416a.p417a.p418a.p421e.C10628b;
import p081h.p415j.p416a.p417a.p418a.p426j.C10654a;
/* renamed from: h.j.a.a.a.e.e */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/e/e.class */
public class C10634e implements AbstractC10614c, C10628b.AbstractC10630b {

    /* renamed from: f */
    public static C10634e f24216f;

    /* renamed from: a */
    public float f24217a = 0.0f;

    /* renamed from: b */
    public final C10616e f24218b;

    /* renamed from: c */
    public final C10613b f24219c;

    /* renamed from: d */
    public C10615d f24220d;

    /* renamed from: e */
    public C10627a f24221e;

    public C10634e(C10616e eVar, C10613b bVar) {
        this.f24218b = eVar;
        this.f24219c = bVar;
    }

    /* renamed from: e */
    public static C10634e m11113e() {
        if (f24216f == null) {
            f24216f = new C10634e(new C10616e(), new C10613b());
        }
        return f24216f;
    }

    /* renamed from: a */
    public void m11120a() {
        C10628b.m11137g().m11145a(this);
        C10628b.m11137g().m11147a();
        if (C10628b.m11137g().m11141c()) {
            C10654a.m11035m().m11054a();
        }
        this.f24220d.m11202a();
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p419b.AbstractC10614c
    /* renamed from: a */
    public void mo11119a(float f) {
        this.f24217a = f;
        for (C10626i iVar : m11114d().m11152b()) {
            iVar.m11157j().m11072a(f);
        }
    }

    /* renamed from: a */
    public void m11118a(Context context) {
        this.f24220d = this.f24218b.m11197a(new Handler(), context, this.f24219c.m11203a(), this);
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p421e.C10628b.AbstractC10630b
    /* renamed from: a */
    public void mo11117a(boolean z) {
        if (z) {
            C10654a.m11035m().m11054a();
        } else {
            C10654a.m11035m().m11045c();
        }
    }

    /* renamed from: b */
    public void m11116b() {
        C10654a.m11035m().m11048b();
        C10628b.m11137g().m11142b();
        this.f24220d.m11200b();
    }

    /* renamed from: c */
    public float m11115c() {
        return this.f24217a;
    }

    /* renamed from: d */
    public final C10627a m11114d() {
        if (this.f24221e == null) {
            this.f24221e = C10627a.m11148d();
        }
        return this.f24221e;
    }
}
