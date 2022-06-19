package p193e.p194a.p682e.p700d2.p701p;

import com.truecaller.C2752R;
import com.truecaller.bottombar.BottomBarButtonType;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.C16595p;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p431b3.AbstractC8625b;
import p193e.p194a.p431b3.AbstractC8626c;
import p193e.p194a.p431b3.C8624a;
import p193e.p194a.p431b3.C8634k;
import p193e.p194a.p431b3.C8635l;
import s1.z.c.l;
/* renamed from: e.a.e.d2.p.k */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/p/k.class */
public final class C13249k extends AbstractC8626c {

    /* renamed from: a */
    public final int f38522a = C2752R.C2754id.bottombar2_premium;

    /* renamed from: b */
    public final BottomBarButtonType f38523b = BottomBarButtonType.PREMIUM;

    /* renamed from: c */
    public final int f38524c = C2752R.string.TabBarPremium;

    /* renamed from: d */
    public final int f38525d = 2131232639;

    /* renamed from: e */
    public final int f38526e = 2131232629;

    /* renamed from: f */
    public final C16595p f38527f;

    /* renamed from: g */
    public final C17030a1 f38528g;

    @Inject
    public C13249k(C16595p c16595p, C17030a1 c17030a1) {
        l.e(c16595p, "premiumBottomBarAttentionHelper");
        l.e(c17030a1, "premiumSubscriptionProblemHelper");
        this.f38527f = c16595p;
        this.f38528g = c17030a1;
    }

    @Override // p193e.p194a.p431b3.AbstractC8626c
    /* renamed from: a */
    public int mo21985a() {
        return this.f38525d;
    }

    @Override // p193e.p194a.p431b3.AbstractC8626c
    /* renamed from: b */
    public int mo21984b() {
        return this.f38526e;
    }

    @Override // p193e.p194a.p431b3.AbstractC8626c
    /* renamed from: c */
    public int mo21983c() {
        return this.f38522a;
    }

    @Override // p193e.p194a.p431b3.AbstractC8626c
    /* renamed from: d */
    public int mo21982d() {
        return this.f38524c;
    }

    @Override // p193e.p194a.p431b3.AbstractC8626c
    /* renamed from: e */
    public BottomBarButtonType mo21981e() {
        return this.f38523b;
    }

    @Override // p193e.p194a.p431b3.AbstractC8626c
    /* renamed from: f */
    public AbstractC8625b mo21980f() {
        C16595p c16595p = this.f38527f;
        return c16595p.f46625a.m17199a() || c16595p.f46626b.m17222a() || c16595p.f46627c.mo16953d() ? C8624a.f26475a : this.f38528g.m16622a() ? C8634k.f26488a : C8635l.f26489a;
    }
}
