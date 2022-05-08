package p459j.p460a.p582w0.p590x4;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.core.util.Pair;
import com.flurry.android.FlurryAgent;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mopub.mobileads.FlurryAgentWrapper;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.main.calllog.CallLogsFragment;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.phonebook.FavoriteActivity;
import gogolook.callgogolook2.search.TextSearchFragment;
import java.util.Map;
import p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m;
import p459j.p460a.p521j0.p527v.C12717a;
import p459j.p460a.p521j0.p527v.C12718b;
import p459j.p460a.p521j0.p527v.C12719c;
import p459j.p460a.p521j0.p527v.C12720d;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p564s.C13604z;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14216x2;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.w0.x4.e */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/e.class */
public class C14260e {

    /* renamed from: a */
    public static final String[] f31880a = {"flurry", "ggla", "ggla_sdk", "other"};

    /* renamed from: b */
    public static final String[] f31881b = {"PV_CallDialog", "PV_CallEndDialog", "PV_CalllogPage", "PV_DialerPage", "PV_FavoritePage", "PV_MultiEndDialog", "PV_NumberDetailPage", "PV_SMSDialog", "PV_SearchPage", "PV_SearchResultPage"};

    /* renamed from: c */
    public static ArrayMap<Class, Pair<String, Boolean>> f31882c = new ArrayMap<>();

    static {
        f31882c.put(C12717a.class, new Pair<>("PV_CallDialog", false));
        f31882c.put(C12718b.class, new Pair<>("PV_CallEndDialog", false));
        f31882c.put(CallLogsFragment.class, new Pair<>("PV_CalllogPage", true));
        f31882c.put(View$OnLongClickListenerC11269m.class, new Pair<>("PV_DialerPage", true));
        f31882c.put(FavoriteActivity.class, new Pair<>("PV_FavoritePage", true));
        f31882c.put(C12719c.class, new Pair<>("PV_MultiEndDialog", false));
        f31882c.put(NumberDetailActivity.class, new Pair<>("PV_NumberDetailPage", false));
        f31882c.put(C12720d.class, new Pair<>("PV_SMSDialog", false));
        f31882c.put(TextSearchFragment.class, new Pair<>("PV_SearchPage", true));
    }

    /* renamed from: a */
    public static /* synthetic */ void m2002a(Context context) {
        C14216x2.m2208a("Analytics:Flurry:onFlurryEndSession:+");
        FlurryAgentWrapper.getInstance().endSession(context);
        C14216x2.m2208a("Analytics:Flurry:onFlurryEndSession:-");
    }

    /* renamed from: a */
    public static void m2001a(Context context, Class cls) {
        String a = C14296p.m1831a(context, cls);
        Bundle bundle = new Bundle();
        if (a != null) {
            bundle.putString("source", a);
        }
        FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
        instance.m31116a(cls.getSimpleName(), bundle);
        instance.m31115a("gga_uid", C14217x3.m2120o());
        instance.m31115a("gga_did", C14017g4.m2820d());
        LogManager.putEventDiaperLog(cls.getName());
        boolean z = false;
        if (!cls.equals(C12717a.class)) {
            z = false;
            if (!cls.equals(C12718b.class)) {
                z = false;
                if (!cls.equals(C12719c.class)) {
                    z = !cls.equals(C12720d.class);
                }
            }
        }
        if (f31882c.get(cls) != null) {
            if (z) {
                ArrayMap arrayMap = new ArrayMap();
                arrayMap.put("importance", f31882c.get(cls).second.booleanValue() ? "major" : "other");
                m1998a("In-app_All_UniqueUsers", arrayMap);
            }
            m1996b(f31882c.get(cls).first);
        }
    }

    /* renamed from: a */
    public static void m1999a(String str, String str2) {
        if (C13604z.m3839j() && C13604z.m3841h().m3846d()) {
            C13604z.m3841h().m3851a(str, str2);
        }
    }

    /* renamed from: a */
    public static void m1998a(String str, Map map) {
        if (m2000a(str)) {
            FlurryAgent.logEvent(str, map);
            if (C13565v.m3921g().m23335b()) {
                m1994c(str + map.toString());
            }
        }
    }

    /* renamed from: a */
    public static boolean m2000a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int length = f31881b.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) / 2;
            int compareTo = f31881b[i2].compareTo(str);
            if (compareTo == 0) {
                return true;
            }
            if (compareTo > 0) {
                length = i2 - 1;
            } else {
                i = i2 + 1;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static /* synthetic */ void m1997b(Context context) {
        C14216x2.m2208a("Analytics:Flurry:onFlurryStartSession:+");
        FlurryAgentWrapper.getInstance().startSession(context, "YK6TF5QJSVP4CR57D475", null);
        C14216x2.m2208a("Analytics:Flurry:onFlurryStartSession:-");
    }

    /* renamed from: b */
    public static void m1996b(String str) {
        if (m2000a(str)) {
            FlurryAgent.logEvent(str);
            if (C13565v.m3921g().m23335b()) {
                m1994c(str);
            }
        }
    }

    /* renamed from: c */
    public static void m1995c(final Context context) {
        new Handler(context.getMainLooper()).post(new Runnable() { // from class: j.a.w0.x4.a
            @Override // java.lang.Runnable
            public final void run() {
                C14260e.m2002a(context);
            }
        });
    }

    /* renamed from: c */
    public static void m1994c(String str) {
        m1999a(str, "flurry");
    }

    /* renamed from: d */
    public static void m1993d(final Context context) {
        new Handler(context.getMainLooper()).post(new Runnable() { // from class: j.a.w0.x4.b
            @Override // java.lang.Runnable
            public final void run() {
                C14260e.m1997b(context);
            }
        });
    }

    /* renamed from: d */
    public static void m1992d(String str) {
        m1999a(str, "ggla");
    }
}
