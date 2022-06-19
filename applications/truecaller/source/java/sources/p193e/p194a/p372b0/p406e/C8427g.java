package p193e.p194a.p372b0.p406e;

import com.tenor.android.core.util.AbstractLocaleUtils;
import e.m.f.a.j;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p614c3.AbstractC10925a;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.b0.e.g */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/g.class */
public final class C8427g implements AbstractC8426f {

    /* renamed from: a */
    public final a<AbstractC8438a> f26106a;

    /* renamed from: b */
    public final a<AbstractC10925a> f26107b;

    /* renamed from: c */
    public final a<AbstractC8432l> f26108c;

    /* renamed from: d */
    public final Provider<Boolean> f26109d;

    /* renamed from: e */
    public final Provider<Boolean> f26110e;

    /* renamed from: f */
    public final Provider<Boolean> f26111f;

    @Inject
    public C8427g(a<AbstractC8438a> aVar, a<AbstractC10925a> aVar2, a<AbstractC8432l> aVar3, Provider<Boolean> provider, Provider<Boolean> provider2, Provider<Boolean> provider3) {
        l.e(aVar, "accountSettings");
        l.e(aVar2, "buildHelper");
        l.e(aVar3, "truecallerAccountManager");
        l.e(provider, "regionCConsentRequired");
        l.e(provider2, "regionBrConsentEnabled");
        l.e(provider3, "regionZaConsentEnabled");
        this.f26106a = aVar;
        this.f26107b = aVar2;
        this.f26108c = aVar3;
        this.f26109d = provider;
        this.f26110e = provider2;
        this.f26111f = provider3;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8426f
    /* renamed from: a */
    public boolean mo28597a() {
        return ((AbstractC8438a) this.f26106a.get()).getBoolean("featureRegionC_qa") || (mo28591g() && ((AbstractC8438a) this.f26106a.get()).getBoolean("region_c_accepted"));
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8426f
    /* renamed from: b */
    public boolean mo28596b() {
        if (((AbstractC8438a) this.f26106a.get()).getBoolean("useUkLogo", false)) {
            return true;
        }
        if (((AbstractC10925a) this.f26107b.get()).mo25495b()) {
            return r.n("gb", m28590h(), true);
        }
        return false;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8426f
    /* renamed from: c */
    public boolean mo28595c(String str) {
        Boolean bool;
        l.e(str, "normalizedNumber");
        j q = j.q();
        try {
            String y = q.y(q.R(str, (String) null).b);
            bool = null;
            if (y != null) {
                bool = Boolean.valueOf(mo28593e(y));
            }
        } catch (Exception e) {
            bool = null;
        }
        return bool != null ? bool.booleanValue() : true;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8426f
    /* renamed from: d */
    public boolean mo28594d() {
        boolean z;
        AbstractC8438a abstractC8438a = (AbstractC8438a) this.f26106a.get();
        if (abstractC8438a.contains("featureRegion1_qa")) {
            z = abstractC8438a.getBoolean("featureRegion1_qa");
        } else if (abstractC8438a.getLong("key_region_1_timestamp", 0L).longValue() > 0) {
            z = abstractC8438a.getBoolean("featureRegion1");
        } else {
            String m28590h = m28590h();
            z = m28590h != null ? mo28593e(m28590h) : true;
        }
        return z;
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8426f
    /* renamed from: e */
    public boolean mo28593e(String str) {
        l.e(str, "countryIso");
        List<String> list = (List) C8424e.f26104a.getValue();
        boolean z = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (String str2 : list) {
                if (r.n(str2, str, true)) {
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a6, code lost:
        if (s1.f0.r.n("br", m28590h(), true) != false) goto L22;
     */
    @Override // p193e.p194a.p372b0.p406e.AbstractC8426f
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.common.account.Region mo28592f() {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.mo28597a()
            if (r0 == 0) goto Le
            com.truecaller.common.account.Region r0 = com.truecaller.common.account.Region.REGION_C
            r5 = r0
            goto Lca
        Le:
            r0 = r4
            javax.inject.Provider<java.lang.Boolean> r0 = r0.f26111f
            java.lang.Object r0 = r0.get()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "regionZaConsentEnabled.get()"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L56
            r0 = r4
            o3.a<e.a.b0.e.r.a> r0 = r0.f26106a
            java.lang.Object r0 = r0.get()
            e.a.b0.e.r.a r0 = (p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r0
            java.lang.String r1 = "featureRegionZa_qa"
            r2 = 0
            boolean r0 = r0.getBoolean(r1, r2)
            if (r0 != 0) goto L50
            java.lang.String r0 = "za"
            r1 = r4
            java.lang.String r1 = r1.m28590h()
            r2 = 1
            boolean r0 = s1.f0.r.n(r0, r1, r2)
            if (r0 == 0) goto L56
        L50:
            r0 = 1
            r8 = r0
            goto L59
        L56:
            r0 = 0
            r8 = r0
        L59:
            r0 = r8
            if (r0 == 0) goto L65
            com.truecaller.common.account.Region r0 = com.truecaller.common.account.Region.REGION_ZA
            r5 = r0
            goto Lca
        L65:
            r0 = r4
            javax.inject.Provider<java.lang.Boolean> r0 = r0.f26110e
            java.lang.Object r0 = r0.get()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "regionBrConsentEnabled.get()"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            r8 = r0
            r0 = r5
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lac
            r0 = r4
            o3.a<e.a.b0.e.r.a> r0 = r0.f26106a
            java.lang.Object r0 = r0.get()
            e.a.b0.e.r.a r0 = (p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r0
            java.lang.String r1 = "featureRegionBr_qa"
            r2 = 0
            boolean r0 = r0.getBoolean(r1, r2)
            if (r0 != 0) goto La9
            r0 = r7
            r8 = r0
            java.lang.String r0 = "br"
            r1 = r4
            java.lang.String r1 = r1.m28590h()
            r2 = 1
            boolean r0 = s1.f0.r.n(r0, r1, r2)
            if (r0 == 0) goto Lac
        La9:
            r0 = 1
            r8 = r0
        Lac:
            r0 = r8
            if (r0 == 0) goto Lb8
            com.truecaller.common.account.Region r0 = com.truecaller.common.account.Region.REGION_BR
            r5 = r0
            goto Lca
        Lb8:
            r0 = r4
            boolean r0 = r0.mo28594d()
            if (r0 == 0) goto Lc6
            com.truecaller.common.account.Region r0 = com.truecaller.common.account.Region.REGION_1
            r5 = r0
            goto Lca
        Lc6:
            com.truecaller.common.account.Region r0 = com.truecaller.common.account.Region.REGION_2
            r5 = r0
        Lca:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p406e.C8427g.mo28592f():com.truecaller.common.account.Region");
    }

    @Override // p193e.p194a.p372b0.p406e.AbstractC8426f
    /* renamed from: g */
    public boolean mo28591g() {
        boolean z = true;
        if (!((AbstractC8438a) this.f26106a.get()).getBoolean("featureRegionC_qa")) {
            Object obj = this.f26109d.get();
            l.d(obj, "regionCConsentRequired.get()");
            z = ((Boolean) obj).booleanValue() && r.n(AbstractLocaleUtils.ISO_US, m28590h(), true);
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r4 != null) goto L7;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m28590h() {
        /*
            r3 = this;
            r0 = r3
            o3.a<e.a.b0.e.l> r0 = r0.f26108c
            java.lang.Object r0 = r0.get()
            e.a.b0.e.l r0 = (p193e.p194a.p372b0.p406e.AbstractC8432l) r0
            e.a.b0.e.b r0 = r0.mo28577g()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L22
            r0 = r4
            java.lang.String r0 = r0.f26094a
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L22
            goto L36
        L22:
            r0 = r3
            o3.a<e.a.b0.e.r.a> r0 = r0.f26106a
            java.lang.Object r0 = r0.get()
            e.a.b0.e.r.a r0 = (p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r0
            java.lang.String r1 = "profileCountryIso"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
        L36:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p406e.C8427g.m28590h():java.lang.String");
    }
}
