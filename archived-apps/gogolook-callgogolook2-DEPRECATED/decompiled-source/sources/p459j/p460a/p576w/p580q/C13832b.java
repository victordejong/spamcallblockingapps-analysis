package p459j.p460a.p576w.p580q;

import android.content.Context;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.PromoInfo;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14165s3;
import p459j.p460a.p596x.p597k.AbstractC14384b;
import p459j.p460a.p596x.p597k.AbstractC14386c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� \u00172\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\b\u0010\r\u001a\u00020\tH\u0016J!\u0010\u000e\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0002\u0010\u0013J!\u0010\u0014\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0002\u0010\u0013J!\u0010\u0015\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0002\u0010\u0013J\b\u0010\u0016\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, m815d2 = {"Lgogolook/callgogolook2/iap/promo/IapRestorePresenter;", "Lgogolook/callgogolook2/intro/iap/IapPromoContract$Presenter;", "view", "Lgogolook/callgogolook2/intro/iap/IapPromoContract$View;", "(Lgogolook/callgogolook2/intro/iap/IapPromoContract$View;)V", "promoView", "getNegativeString", "", "handleLeaveAction", "", "handleNegativeAction", "handlePositiveAction", "initData", "updateFeatures", "updateHeader", PlanProductRealmObject.PROMO_TYPE, "", "productInfo", "Lgogolook/callgogolook2/gson/PromoInfo$ProductInfo;", "(Ljava/lang/Integer;Lgogolook/callgogolook2/gson/PromoInfo$ProductInfo;)V", "updatePositiveCta", "updatePricing", "updateSubtitle", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.q.b */
/* loaded from: classes2-dex2jar.jar:j/a/w/q/b.class */
public final class C13832b implements AbstractC14384b {

    /* renamed from: a */
    public final AbstractC14386c f31060a;

    /* renamed from: j.a.w.q.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/q/b$a.class */
    public static final class C13833a {
        public C13833a() {
        }

        public /* synthetic */ C13833a(C15145g gVar) {
            this();
        }
    }

    static {
        new C13833a(null);
    }

    public C13832b(AbstractC14386c cVar) {
        C15149k.m377b(cVar, "view");
        this.f31060a = cVar;
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: a */
    public void mo1438a() {
        this.f31060a.mo1421C();
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: a */
    public void mo1437a(Integer num, PromoInfo.ProductInfo productInfo) {
        Context a = this.f31060a.mo1414a();
        if (a != null) {
            AbstractC14386c cVar = this.f31060a;
            String string = a.getString(R$string.more_about_premium_title);
            C15149k.m383a((Object) string, "it.getString(R.string.more_about_premium_title)");
            String string2 = a.getString(R$string.close);
            C15149k.m383a((Object) string2, "it.getString(R.string.close)");
            cVar.mo1413a(R$drawable.im_protect_promo, string, string2);
        }
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: b */
    public void mo1436b() {
        Context a = this.f31060a.mo1414a();
        if (a != null) {
            C14165s3.f31680a.m2329a(a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r7 != null) goto L_0x001f;
     */
    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1435b(java.lang.Integer r7, gogolook.callgogolook2.gson.PromoInfo.ProductInfo r8) {
        /*
            r6 = this;
            r0 = r6
            j.a.x.k.c r0 = r0.f31060a
            android.content.Context r0 = r0.mo1414a()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001c
            r0 = r7
            r1 = 2131888650(0x7f120a0a, float:1.9411941E38)
            java.lang.String r0 = r0.getString(r1)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001c
            goto L_0x001f
        L_0x001c:
            java.lang.String r0 = ""
            r7 = r0
        L_0x001f:
            r0 = r6
            j.a.x.k.c r0 = r0.f31060a
            l.j r1 = new l.j
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r0.mo1409a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p580q.C13832b.mo1435b(java.lang.Integer, gogolook.callgogolook2.gson.PromoInfo$ProductInfo):void");
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: c */
    public void mo1434c() {
        Context a = this.f31060a.mo1414a();
        if (a != null) {
            C14165s3.f31680a.m2324d(a, "restore");
        }
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: c */
    public void mo1433c(Integer num, PromoInfo.ProductInfo productInfo) {
        Context a = this.f31060a.mo1414a();
        if (a != null) {
            AbstractC14386c cVar = this.f31060a;
            String string = a.getString(R$string.restore_subscription_cta);
            C15149k.m383a((Object) string, "it.getString(R.string.restore_subscription_cta)");
            cVar.mo1407d(string);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r4 != null) goto L_0x001f;
     */
    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo1432d() {
        /*
            r3 = this;
            r0 = r3
            j.a.x.k.c r0 = r0.f31060a
            android.content.Context r0 = r0.mo1414a()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001c
            r0 = r4
            r1 = 2131887578(0x7f1205da, float:1.9409767E38)
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001c
            goto L_0x001f
        L_0x001c:
            java.lang.String r0 = ""
            r4 = r0
        L_0x001f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p580q.C13832b.mo1432d():java.lang.String");
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14384b
    /* renamed from: e */
    public void mo1431e() {
        AbstractC14384b.C14385a.m1430a(this, null, null, 3, null);
        m3362g();
        AbstractC14384b.C14385a.m1428c(this, null, null, 3, null);
        m3363f();
        AbstractC14384b.C14385a.m1429b(this, null, null, 3, null);
    }

    /* renamed from: f */
    public void m3363f() {
        Context a = this.f31060a.mo1414a();
        if (a != null) {
            this.f31060a.mo1405i(C14021h2.f31457a.m2795a(a));
        }
    }

    /* renamed from: g */
    public void m3362g() {
        Context a = this.f31060a.mo1414a();
        if (a != null) {
            AbstractC14386c cVar = this.f31060a;
            String string = a.getString(R$string.more_about_premium_content);
            C15149k.m383a((Object) string, "it.getString(R.string.more_about_premium_content)");
            cVar.mo1410a(string);
        }
    }
}
