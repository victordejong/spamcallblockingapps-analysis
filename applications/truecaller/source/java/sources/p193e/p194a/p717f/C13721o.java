package p193e.p194a.p717f;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.incallui.service.InCallUIService;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p717f.p718a.p729v.C13687b;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p733y.C13794x;
import p193e.p194a.p717f.p734z.AbstractC13851q;
import p193e.p194a.p717f.p734z.AbstractC13861v;
import p193e.p194a.p717f.p734z.AbstractC13864y;
import q3.a.w2.z;
import s1.z.c.l;
/* renamed from: e.a.f.o */
/* loaded from: classes10-dex2jar.jar:e/a/f/o.class */
public final class C13721o implements AbstractC13706b {

    /* renamed from: b */
    public final AbstractC13719m f39745b;

    /* renamed from: c */
    public final a<AbstractC13762c> f39746c;

    /* renamed from: d */
    public final Provider<AbstractC13864y> f39747d;

    /* renamed from: e */
    public final a<AbstractC13861v> f39748e;

    /* renamed from: f */
    public final AbstractC13851q f39749f;

    @Inject
    public C13721o(AbstractC13719m abstractC13719m, a<AbstractC13762c> aVar, Provider<AbstractC13864y> provider, a<AbstractC13861v> aVar2, AbstractC13851q abstractC13851q) {
        l.e(abstractC13719m, "inCallUIConfig");
        l.e(aVar, "callManager");
        l.e(provider, "inCallUISettings");
        l.e(aVar2, "promoManager");
        l.e(abstractC13851q, "featureWatchDog");
        this.f39745b = abstractC13719m;
        this.f39746c = aVar;
        this.f39747d = provider;
        this.f39748e = aVar2;
        this.f39749f = abstractC13851q;
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: a */
    public boolean mo21268a() {
        return ((AbstractC13861v) this.f39748e.get()).mo20985a();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: b */
    public void mo21267b() {
        ((AbstractC13861v) this.f39748e.get()).mo20984b();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: c */
    public boolean mo21266c() {
        boolean z = false;
        if (!m21249t()) {
            return false;
        }
        Collection collection = (Collection) C19291g.m13593R0(((AbstractC13762c) this.f39746c.get()).mo21195l());
        if (collection == null || collection.isEmpty()) {
            z = true;
        }
        return !z;
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: d */
    public boolean mo21265d() {
        return ((AbstractC13861v) this.f39748e.get()).mo20983c();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: e */
    public void mo21264e(boolean z) {
        this.f39745b.mo21272e(z);
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: f */
    public boolean mo21263f() {
        return this.f39745b.mo21275a();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: g */
    public boolean mo21262g() {
        return this.f39745b.mo21271g();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: h */
    public boolean mo21261h() {
        return this.f39745b.mo21270h();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: i */
    public void mo21260i(FragmentManager fragmentManager, boolean z) {
        l.e(fragmentManager, "fragmentManager");
        Objects.requireNonNull(C13687b.f39662h);
        l.e(fragmentManager, "fragmentManager");
        C13687b c13687b = new C13687b();
        Bundle bundle = new Bundle();
        bundle.putBoolean("forceDarkTheme", z);
        c13687b.setArguments(bundle);
        c13687b.show(fragmentManager, C13687b.class.getSimpleName());
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: j */
    public boolean mo21259j() {
        return this.f39745b.mo21269j();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: k */
    public void mo21258k() {
        ((AbstractC13864y) this.f39747d.get()).remove("voipTooltip");
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: l */
    public boolean mo21257l() {
        return this.f39745b.mo21273c();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: m */
    public void mo21256m(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (!m21249t()) {
            return;
        }
        m21250s(context);
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: n */
    public boolean mo21255n() {
        return ((AbstractC13864y) this.f39747d.get()).getBoolean("showPromo", false);
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: o */
    public void mo21254o(boolean z) {
        ((AbstractC13864y) this.f39747d.get()).putBoolean("showPromo", z);
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: p */
    public z<List<C13794x>> mo21253p() {
        return ((AbstractC13762c) this.f39746c.get()).mo21195l().p2();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: q */
    public void mo21252q(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (!this.f39745b.mo21274b()) {
            m21250s(context);
        } else if (m21249t()) {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, InCallUIService.class), 1, 1);
        }
        this.f39749f.init();
    }

    @Override // p193e.p194a.p717f.AbstractC13706b
    /* renamed from: r */
    public boolean mo21251r() {
        return ((AbstractC13864y) this.f39747d.get()).contains("incalluiEnabled");
    }

    /* renamed from: s */
    public final void m21250s(Context context) {
        if (!m21249t()) {
            return;
        }
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, InCallUIService.class), 2, 1);
    }

    /* renamed from: t */
    public final boolean m21249t() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
