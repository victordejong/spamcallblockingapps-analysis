package p459j.p460a.p576w;

import gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject;
import p459j.p460a.p541n0.C13103h;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14174u;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Actions;
/* renamed from: j.a.w.f */
/* loaded from: classes2-dex2jar.jar:j/a/w/f.class */
public class C13748f {
    /* renamed from: a */
    public static void m3549a() {
        m3539d("onBillingSetupFinished successfully");
    }

    /* renamed from: a */
    public static void m3548a(C13773d.AbstractC13775b bVar) {
        m3539d("new iap repository state " + bVar.m3451a());
    }

    /* renamed from: a */
    public static void m3546a(String str) {
        m3539d("fetchPlan successfully: " + str);
    }

    /* renamed from: a */
    public static /* synthetic */ void m3545a(String str, SingleSubscriber singleSubscriber) {
        C13103h.m4615a(new PurchaseLogRealmObject(str, System.currentTimeMillis()));
        singleSubscriber.onSuccess(null);
    }

    /* renamed from: a */
    public static /* synthetic */ void m3544a(SingleSubscriber singleSubscriber) {
        C13103h.m4616a(System.currentTimeMillis() - 1209600000);
        singleSubscriber.onSuccess(null);
    }

    /* renamed from: b */
    public static void m3543b() {
        m3539d("Launch Purchase");
    }

    /* renamed from: b */
    public static void m3542b(String str) {
        m3539d("log ad status from server: " + str);
    }

    /* renamed from: c */
    public static void m3541c() {
        Single.create(C13732c.f30831a).subscribeOn(C14174u.m2292l()).subscribe(C13730a.f30829a, C14081m3.m2611a());
    }

    /* renamed from: c */
    public static void m3540c(String str) {
        m3539d("ERROR: " + str);
    }

    /* renamed from: d */
    public static void m3539d(final String str) {
        Single.create(new Single.OnSubscribe() { // from class: j.a.w.b
            @Override // p660rx.functions.Action1
            public final void call(Object obj) {
                C13748f.m3545a(str, (SingleSubscriber) obj);
            }
        }).subscribeOn(C14174u.m2292l()).subscribe(Actions.empty(), C14081m3.m2611a());
    }

    /* renamed from: e */
    public static void m3538e(String str) {
        m3539d("[token] " + str);
    }

    /* renamed from: f */
    public static void m3537f(String str) {
        m3539d("processValidPurchase: " + str);
    }

    /* renamed from: g */
    public static void m3536g(String str) {
        m3539d("purchaseUpdated " + str);
    }

    /* renamed from: h */
    public static void m3535h(String str) {
        m3539d("querySkuDetailsSuccess successfully: " + str);
    }

    /* renamed from: i */
    public static void m3534i(String str) {
        m3539d("subscription Purchases: " + str);
    }
}
