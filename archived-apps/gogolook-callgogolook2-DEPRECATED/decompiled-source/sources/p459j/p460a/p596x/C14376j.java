package p459j.p460a.p596x;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
import com.google.firebase.analytics.FirebaseAnalytics;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.intro.SplashActivity;
import gogolook.callgogolook2.intro.registration.RegistrationActivity;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.List;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p081h.p203i.p325c.p337n.C9510c;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p513i.AbstractC12404c;
import p459j.p460a.p541n0.C13085e;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13987e3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14169t1;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14233b;
import p660rx.Single;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.x.j */
/* loaded from: classes2-dex2jar.jar:j/a/x/j.class */
public class C14376j {

    /* renamed from: a */
    public static boolean f32193a = false;

    /* renamed from: b */
    public static boolean f32194b = false;

    /* renamed from: c */
    public static EnumC14379c f32195c = EnumC14379c.none;

    /* renamed from: d */
    public static RegistrationActivity.EnumC4523g f32196d = RegistrationActivity.EnumC4523g.UNKNOWN;

    /* renamed from: e */
    public static Bundle f32197e = null;

    /* renamed from: f */
    public static boolean f32198f = false;

    /* renamed from: g */
    public static boolean f32199g = false;

    /* renamed from: j.a.x.j$a */
    /* loaded from: classes2-dex2jar.jar:j/a/x/j$a.class */
    public static final class C14377a extends AbstractC6378d {
        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) {
            C14376j.m1447e();
        }
    }

    /* renamed from: j.a.x.j$b */
    /* loaded from: classes2-dex2jar.jar:j/a/x/j$b.class */
    public static final class C14378b extends AbstractC6377c {
        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1446a() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1445a(int i) {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
            C14037j3.m2731a().mo2704a(new C14169t1());
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
            C14037j3.m2731a().mo2704a(new C14169t1());
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
        }
    }

    /* renamed from: j.a.x.j$c */
    /* loaded from: classes2-dex2jar.jar:j/a/x/j$c.class */
    public enum EnumC14379c {
        none,
        IAP,
        OfflineDb,
        Referral,
        Redeem,
        Guardian,
        MyTag
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x018d, code lost:
        if (gogolook.callgogolook2.gson.UserProfile.m28128n().m28130l() != false) goto L_0x0190;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent m1460a(android.content.Context r5, boolean r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p596x.C14376j.m1460a(android.content.Context, boolean, boolean):android.content.Intent");
    }

    /* renamed from: a */
    public static void m1464a(Activity activity, boolean z) {
        activity.startActivity(m1460a((Context) activity, false, z));
        activity.finish();
    }

    /* renamed from: a */
    public static void m1463a(Context context) {
        f32193a = false;
        f32194b = false;
        if (!C14217x3.m2107z()) {
            C14217x3.m2205C();
        }
        C13987e3.m2930b();
        if (C14137r4.m2368j()) {
            C14137r4.m2381a(new C14377a());
        } else {
            m1447e();
        }
        if (C14137r4.m2372f()) {
            C13915b3.m3057b("appListSyncTime", 0L);
        }
    }

    /* renamed from: a */
    public static void m1462a(Context context, int i, String str) {
        if (i == 1) {
            C14092n3.m2583b("gmailAccount", str);
            FirebaseAnalytics.getInstance(MyApplication.m29013o()).m31115a("email", str);
        } else if (i == 2) {
            C14092n3.m2583b("fbAccount", str);
        }
        C14233b bVar = new C14233b("fb_mobile_complete_registration");
        C14231a aVar = new C14231a();
        aVar.m2100a("fb_registration_method", i == 1 ? Payload.SOURCE_GOOGLE : "facebook");
        bVar.mo2087a(aVar);
        C13625a.m3821a(context, 0);
        C9510c.m15023a().m15016b(C14217x3.m2118p());
        C13987e3.m2930b();
        m1449c(context);
    }

    /* renamed from: a */
    public static /* synthetic */ void m1461a(Context context, boolean z) {
        context.startActivity(m1460a(context, false, false));
        if (context instanceof Activity) {
            ((Activity) context).finish();
        }
    }

    /* renamed from: a */
    public static void m1459a(Bundle bundle) {
        f32197e = bundle;
    }

    /* renamed from: a */
    public static void m1458a(RegistrationActivity.EnumC4523g gVar) {
        f32196d = gVar;
    }

    /* renamed from: a */
    public static void m1457a(EnumC14379c cVar) {
        f32195c = cVar;
    }

    /* renamed from: a */
    public static void m1456a(boolean z) {
        f32198f = z;
    }

    /* renamed from: b */
    public static void m1455b() {
        Single.fromCallable(CallableC14369c.f32185a).subscribeOn(Schedulers.m0io()).subscribe();
    }

    /* renamed from: b */
    public static void m1454b(Context context) {
        m1448d();
        context.startActivity(m1460a(context, false, false));
        if (context instanceof Activity) {
            ((Activity) context).finish();
        }
    }

    /* renamed from: b */
    public static void m1453b(Context context, boolean z) {
        m1452b(context, z, false);
    }

    /* renamed from: b */
    public static void m1452b(Context context, boolean z, boolean z2) {
        Intent a = m1460a(context, z2, false);
        m1455b();
        if (!z || !(context instanceof Activity)) {
            if (!(context instanceof Activity)) {
                a.addFlags(335544320);
            }
            context.startActivity(a);
            return;
        }
        a.addFlags(335544320);
        SplashActivity.m28050a(context, a);
        ((Activity) context).finish();
    }

    /* renamed from: b */
    public static void m1451b(boolean z) {
        f32193a = z;
    }

    /* renamed from: c */
    public static /* synthetic */ Integer m1450c() throws Exception {
        if (f32199g) {
            return null;
        }
        f32199g = true;
        List<IapPlanRealmObject> c = C13085e.m4637c();
        if (c != null && !c.isEmpty()) {
            return null;
        }
        C13760c.m3488c().m3492a(Dispatchers.getIO());
        return null;
    }

    /* renamed from: c */
    public static void m1449c(final Context context) {
        C13760c.m3488c().m3490a(CoroutineScopeKt.MainScope(), new C13760c.AbstractC13762b() { // from class: j.a.x.b
            @Override // p459j.p460a.p576w.p577n.C13760c.AbstractC13762b
            /* renamed from: a */
            public final void mo1469a(boolean z) {
                C14376j.m1461a(context, z);
            }
        }, (AbstractC12402b<AbstractC12404c>) null);
    }

    /* renamed from: d */
    public static void m1448d() {
        C14092n3.m2583b("gmailAccount", "");
        C14092n3.m2583b("fbAccount", "");
        C14092n3.m2583b("userId", "");
        C14092n3.m2583b("accessToken", "");
        f32193a = true;
    }

    /* renamed from: e */
    public static void m1447e() {
        C14063l4.m2677a(false, (AbstractC6377c) new C14378b());
    }
}
