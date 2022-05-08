package p459j.p460a.p582w0.p590x4.p591a0;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.UserProfile;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14000f2;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/delegate/FirebaseEventDelegate;", "Lgogolook/callgogolook2/util/analytics/delegate/IEventDelegate;", "eventName", "", "(Ljava/lang/String;)V", "commit", "", "eventValues", "Lgogolook/callgogolook2/util/analytics/delegate/EventValues;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.a0.c */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/a0/c.class */
public final class C14234c implements AbstractC14238e {

    /* renamed from: b */
    public static final C14235a f31786b = new C14235a(null);

    /* renamed from: a */
    public final String f31787a;

    /* renamed from: j.a.w0.x4.a0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/a0/c$a.class */
    public static final class C14235a {
        public C14235a() {
        }

        public /* synthetic */ C14235a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final void m2094a(Context context, String str, Bundle bundle) {
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "eventName");
            C15149k.m377b(bundle, "parameters");
            m2092b(context, str, bundle);
        }

        /* renamed from: b */
        public final void m2092b(Context context, String str, Bundle bundle) {
            FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
            instance.m31115a("gga_uid", C14217x3.m2120o());
            instance.m31115a("gga_did", C14017g4.m2820d());
            instance.m31115a("user_region", C14017g4.m2810n());
            String a = C14000f2.m2905a();
            if (!(a == null || a.length() == 0)) {
                instance.m31115a("gga_ad_id", a);
            }
            String str2 = "1";
            instance.m31115a("purchase_order_status", C14021h2.m2779g() ? "1" : "0");
            UserProfile n = UserProfile.m28128n();
            C15149k.m383a((Object) n, "UserProfile.currentProfile()");
            if (n.m28138d() == 0) {
                str2 = "3";
            } else {
                UserProfile n2 = UserProfile.m28128n();
                C15149k.m383a((Object) n2, "UserProfile.currentProfile()");
                if (n2.m28135g() == 0) {
                    str2 = "2";
                }
            }
            instance.m31115a("showcard_status", str2);
            instance.m31116a(str, bundle);
        }
    }

    public C14234c(String str) {
        C15149k.m377b(str, "eventName");
        this.f31787a = str;
    }

    /* renamed from: a */
    public static final void m2095a(Context context, String str, Bundle bundle) {
        f31786b.m2094a(context, str, bundle);
    }

    @Override // p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e
    /* renamed from: a */
    public void mo2087a(C14231a aVar) throws IllegalArgumentException {
        C15149k.m377b(aVar, "eventValues");
        try {
            C14235a aVar2 = f31786b;
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            aVar2.m2092b(o, this.f31787a, aVar.m2096e());
        } catch (ClassCastException e) {
            C14060l2.m2705a(e);
        }
    }
}
