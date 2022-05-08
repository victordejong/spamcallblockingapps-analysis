package p459j.p460a.p521j0.p522u;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.android.internal.telephony.ITelephony;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.block.blocklog.BlockLogActivity;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.lang.reflect.Method;
import p459j.p460a.p521j0.C12510n;
import p459j.p460a.p530k.AsyncTaskC12833e;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14296p;
import p459j.p460a.p582w0.p590x4.C14299q;
/* renamed from: j.a.j0.u.a */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/a.class */
public class C12518a {

    /* renamed from: a */
    public static C12518a f28211a;

    /* renamed from: j.a.j0.u.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/a$a.class */
    public enum EnumC12519a {
        DEBUG_UI,
        CALL_SCREENING,
        CALL_RECEIVER,
        SLIDE_TO_BLOCK
    }

    /* renamed from: a */
    public static C12518a m5962a() {
        if (f28211a == null) {
            f28211a = new C12518a();
        }
        return f28211a;
    }

    @WorkerThread
    /* renamed from: a */
    public C12942i m5959a(Context context, String str, EnumC12519a aVar) {
        C12942i a = m5957a(str, context, aVar);
        if (a.m4960d()) {
            C14217x3.m2181a(new AsyncTaskC12833e(str, 1, 1, "", a, CallUtils.m26536h(), CallUtils.m26528p(), aVar));
            boolean b = C14217x3.m2160b(C14217x3.m2146e(context, str));
            long j = 0;
            try {
                j = Long.valueOf(str.replace("+", "")).longValue();
            } catch (Exception e) {
                e.printStackTrace();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Call_");
            sb.append(b ^ true ? "Contact_" : "NonContact_");
            sb.append(a.f29291c);
            sb.append("_Block");
            C14296p.m1829a("Blockevent", sb.toString(), j);
        }
        return a;
    }

    @WorkerThread
    /* renamed from: a */
    public final C12942i m5957a(String str, Context context, EnumC12519a aVar) {
        CallStats h = CallStats.m28534h();
        C12942i b = C12928g.m5000a().m4982b(context, str, "", 1);
        if (!b.m4960d()) {
            b.m4965a(CallStats.BlockType.NONE);
            return b;
        } else if (!h.m28539c().m28479x() || C13915b3.m3062a("isBlockCallWaiting", true)) {
            CallStats.BlockResult blockResult = m5960a(context, aVar) ? CallStats.BlockResult.SUCCESS : CallStats.BlockResult.FAILURE;
            h.m28539c().m28510b(blockResult);
            b.m4965a(CallStats.BlockType.BLOCK);
            b.m4966a(blockResult);
            if (blockResult == CallStats.BlockResult.SUCCESS) {
                C13915b3.m3048d("prefs_taotal_block_counts", C13915b3.m3066a("prefs_taotal_block_counts", 0) + 1);
                m5956a(str, context, b, 1);
                m5958a(h.m28539c());
            }
            return b;
        } else {
            b.m4965a(CallStats.BlockType.NONE);
            return b;
        }
    }

    /* renamed from: a */
    public String m5961a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public final void m5958a(CallStats.Call call) {
        C14289m.m1881a(call.m28529B(), call.m28487p(), CallUtils.m26588a(MyApplication.m29013o(), call.m28529B(), call.m28486q()), (Integer) null, 6);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m5956a(String str, Context context, C12942i iVar, int i) {
        String str2;
        String str3;
        if (C13915b3.m3062a("isCallBlockNotification", true)) {
            String a = m5961a(R$string.notification_silence_head);
            String a2 = m5961a(R$string.notification_silence_ticker);
            if (TextUtils.isEmpty(str)) {
                str2 = m5961a(R$string.unknown_number) + " " + a2;
                str3 = m5961a(R$string.unknown_number);
            } else {
                str2 = str + " " + a2;
                str3 = str;
            }
            String a3 = C12942i.m4964a(iVar.f29289a);
            Intent intent = new Intent(context, C14017g4.m2835A() ? BlockManageActivity.class : BlockLogActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("from", "block");
            intent.putExtras(bundle);
            intent.addFlags(805306368);
            PendingIntent a4 = C14217x3.m2188a(context, intent, 1975);
            Intent intent2 = new Intent(context, BlockManageActivity.class);
            Bundle bundle2 = new Bundle();
            bundle2.putString("unblock_number", str);
            bundle2.putString("unblock_keyword", iVar.f29290b);
            bundle2.putInt("unblock_kind", 1);
            bundle2.putString("from", "block");
            bundle2.putString("goto", "blocklist");
            intent2.putExtras(bundle2);
            PendingIntent a5 = C14217x3.m2188a(context, intent2, 1998);
            int i2 = Build.VERSION.SDK_INT;
            NotificationManagerCompat.from(context).notify(1975, C14173t4.m2305a(C14173t4.m2307a(context).setContentTitle(a).setContentText(str3).setTicker(str2).setSubText(a3).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(str3 + "\n" + a3)).setContentIntent(a4).setAutoCancel(true).setDefaults(0).setPriority(2).addAction(R$drawable.notification_unblock, m5961a(R$string.title_unblock), a5)));
        }
    }

    /* renamed from: a */
    public boolean m5960a(Context context, EnumC12519a aVar) {
        Throwable th;
        String str;
        boolean z = true;
        try {
            if (CallUtils.m26527q()) {
                C14037j3.m2731a().mo2704a(new C12510n());
                str = "Is using InCallService";
            } else if (aVar == EnumC12519a.CALL_SCREENING) {
                str = "Is using CallScreeningService";
            } else {
                if (C13565v.m3921g().m23335b() && C13978e.f31386a.m9462a("pref_debug_blocking_failed_emulation", (Boolean) false)) {
                    str = "Develop mode failure testing";
                } else if (aVar == EnumC12519a.DEBUG_UI) {
                    str = "Test from debug UI";
                } else if (C14017g4.m2799y()) {
                    str = "Since Q it's invalid to call non-sdk method";
                } else {
                    Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getITelephony", null);
                    declaredMethod.setAccessible(true);
                    boolean endCall = ((ITelephony) declaredMethod.invoke((TelephonyManager) context.getSystemService("phone"), null)).endCall();
                    z = endCall;
                    str = "call ITelephony.endCall()";
                    if (!endCall) {
                        z = endCall;
                        try {
                            C14299q.m1746a(C14017g4.m2818f());
                            str = "call ITelephony.endCall()";
                            z = endCall;
                        } catch (Throwable th2) {
                            th = th2;
                            C13973d4.m2952a(th);
                            LogManager.m28572b("CallBlocker.performEndCall FAILED, " + th.getMessage());
                            return z;
                        }
                    }
                }
                z = false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("CallBlocker.performEndCall DONE, isCallEnded=");
            sb.append(z);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(str);
            z = z;
            LogManager.m28572b(sb.toString());
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
        return z;
    }
}
