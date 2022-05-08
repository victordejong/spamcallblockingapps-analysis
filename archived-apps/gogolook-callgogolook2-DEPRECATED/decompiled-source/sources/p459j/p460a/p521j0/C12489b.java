package p459j.p460a.p521j0;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import androidx.core.app.NotificationCompat;
import com.google.firebase.perf.metrics.Trace;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.phone.CallReceiver;
import gogolook.callgogolook2.phone.call.dialog.CallDialogService;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.UUID;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p463b0.p466s.C11243e;
import p459j.p460a.p521j0.p522u.C12518a;
import p459j.p460a.p521j0.p522u.p523d.C12617h0;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14128q1;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13921a;
/* renamed from: j.a.j0.b */
/* loaded from: classes3-dex2jar.jar:j/a/j0/b.class */
public class C12489b {

    /* renamed from: a */
    public Bundle f28168a;

    /* renamed from: b */
    public CallStats f28169b;

    /* renamed from: j.a.j0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/b$a.class */
    public class RunnableC12490a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Intent f28170a;

        public RunnableC12490a(Intent intent) {
            this.f28170a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            C12489b.this.m6015a(this.f28170a, (C12617h0) null);
        }
    }

    /* renamed from: j.a.j0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/b$b.class */
    public static class C12491b {

        /* renamed from: a */
        public static volatile C12489b f28172a = new C12489b(null);
    }

    public C12489b() {
    }

    public /* synthetic */ C12489b(RunnableC12490a aVar) {
        this();
    }

    /* renamed from: b */
    public static C12489b m6010b() {
        return C12491b.f28172a;
    }

    /* renamed from: a */
    public Bundle m6018a() {
        return this.f28168a;
    }

    /* renamed from: a */
    public EnumC12488a m6015a(Intent intent, C12617h0 h0Var) {
        synchronized (this) {
            boolean booleanExtra = intent.getBooleanExtra("debug_ui", false);
            String stringExtra = intent.getStringExtra(IapProductRealmObject.STATE);
            String str = C12489b.class.getCanonicalName() + ".onReceiveCallIntent";
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - start");
            if (h0Var == null) {
                Bundle extras = intent.getExtras();
                if (intent.getAction() != null && CallReceiver.m26754b(intent.getAction())) {
                    if (m6013a(m6018a(), extras)) {
                        C13921a.m3037a(C13921a.EnumC13926e.CD).m3032c();
                        return null;
                    }
                    m6014a(extras);
                }
            }
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3034a(intent.getAction(), stringExtra);
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - setLastCallEvent");
            this.f28169b = CallStats.m28534h();
            Context o = MyApplication.m29013o();
            if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction()) || TelephonyManager.EXTRA_STATE_RINGING.equals(stringExtra)) {
                C6357a.m23016c(NotificationCompat.CATEGORY_CALL);
            }
            if (("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction()) && !this.f28169b.m28539c().m28508c().equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) || this.f28169b.m28539c().m28478y()) {
                m6012a(h0Var);
            } else if (CallReceiver.m26754b(intent.getAction()) && TelephonyManager.EXTRA_STATE_RINGING.equals(stringExtra) && !this.f28169b.m28539c().m28508c().equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                m6012a(h0Var);
            }
            CallStats.Call c = this.f28169b.m28539c();
            c.m28506c(m6011a(intent.getAction(), intent.getExtras()));
            c.m28497f(UUID.randomUUID().toString().replace("-", ""));
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - addStatsHistory");
            if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction())) {
                String d = C14108o4.m2482d(intent.getStringExtra("android.intent.extra.PHONE_NUMBER"));
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - outgoing call, number=" + d);
                boolean equals = c.m28508c().equals(TelephonyManager.EXTRA_STATE_OFFHOOK);
                c.m28500e("android.intent.action.NEW_OUTGOING_CALL");
                c.m28498f(System.currentTimeMillis());
                c.m28509b(d);
                c.m28520a(CallStats.BlockType.NONE);
                c.m28512b(CallReceiver.f12106c);
                if (!c.m28487p()) {
                    C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - isNotContact");
                } else {
                    C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - isContact");
                }
                if (equals) {
                    c.m28500e(TelephonyManager.EXTRA_STATE_OFFHOOK);
                    c.m28523a(System.currentTimeMillis());
                }
                if (!CallReceiver.f12105b) {
                    C14217x3.m2191a(o, 29, d, false);
                }
            } else if (CallReceiver.m26754b(intent.getAction())) {
                String b = C14108o4.m2490b(intent.getStringExtra("incoming_number"));
                c.m28500e(stringExtra);
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - START state=" + stringExtra + ", number=" + b);
                if (TelephonyManager.EXTRA_STATE_RINGING.equals(stringExtra)) {
                    Trace a = C10062a.m13511c().m13516a("call_dialog_popup.handle_call_state");
                    a.start();
                    c.m28509b(b);
                    c.m28511b(System.currentTimeMillis());
                    C12942i a2 = m6017a(o, b, booleanExtra);
                    C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - checkPhoneBlocked");
                    c.m28520a(a2.m4961c());
                    C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - setLastRemoteBlockType");
                    if (!c.m28487p()) {
                        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - isNotContact");
                    } else {
                        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - isContact");
                    }
                    C11243e.m9944e();
                    a.stop();
                } else if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(stringExtra)) {
                    if (intent.hasExtra("incoming_number")) {
                        c.m28509b(b);
                    }
                    c.m28523a(System.currentTimeMillis());
                } else if (TelephonyManager.EXTRA_STATE_IDLE.equals(stringExtra)) {
                    if (intent.hasExtra("incoming_number")) {
                        c.m28509b(b);
                    }
                    c.m28507c(System.currentTimeMillis());
                    C14217x3.m2119o(o);
                    CallStats.m28534h().m28535g();
                }
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - END state=" + stringExtra + ", number=" + b);
            }
            EnumC12488a aVar = null;
            if (!"android.intent.action.NEW_OUTGOING_CALL".equals(c.m28508c())) {
                aVar = null;
                if (c.m28483t() > 0) {
                    if (h0Var != null) {
                        aVar = C12495d.m5972b().m5976a(o, intent, h0Var);
                    } else {
                        C12495d.m5972b().m5977a(o, intent);
                        aVar = null;
                    }
                }
            }
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - end");
            return aVar;
        }
    }

    /* renamed from: a */
    public final C12942i m6017a(Context context, String str, boolean z) {
        Trace b = C10062a.m13512b("call_dialog_popup.check_phone_blocked");
        C12942i a = C12518a.m5962a().m5959a(context, str, z ? C12518a.EnumC12519a.DEBUG_UI : C12518a.EnumC12519a.CALL_RECEIVER);
        b.stop();
        return a;
    }

    /* renamed from: a */
    public final String m6011a(String str, Bundle bundle) {
        if (str != null && str.equalsIgnoreCase("android.intent.action.NEW_OUTGOING_CALL")) {
            return "OUTGOING";
        }
        if (bundle == null) {
            return "";
        }
        for (String str2 : bundle.keySet()) {
            if (str2.equalsIgnoreCase(IapProductRealmObject.STATE)) {
                return bundle.get(str2).toString();
            }
        }
        return "";
    }

    /* renamed from: a */
    public void m6016a(Intent intent) {
        synchronized (this) {
            C14174u.m2301c().submit(new RunnableC12490a(intent));
        }
    }

    /* renamed from: a */
    public void m6014a(Bundle bundle) {
        this.f28168a = bundle;
    }

    /* renamed from: a */
    public final void m6012a(C12617h0 h0Var) {
        Context o = MyApplication.m29013o();
        if (!CallUtils.m26527q()) {
            CallDialogService.m26641a(o);
        } else if (h0Var != null) {
            h0Var.m5721p();
        }
        C14037j3.m2731a().mo2704a(new C14128q1());
        this.f28169b.m28536f();
    }

    /* renamed from: a */
    public final boolean m6013a(Bundle bundle, Bundle bundle2) {
        return (bundle == null || bundle2 == null || bundle.getString(IapProductRealmObject.STATE) == null || bundle2.getString(IapProductRealmObject.STATE) == null || !bundle.getString(IapProductRealmObject.STATE).equals(bundle2.getString(IapProductRealmObject.STATE))) ? false : true;
    }
}
