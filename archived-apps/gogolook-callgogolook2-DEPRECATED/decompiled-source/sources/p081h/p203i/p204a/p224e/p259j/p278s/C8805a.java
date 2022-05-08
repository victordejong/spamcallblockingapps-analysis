package p081h.p203i.p204a.p224e.p259j.p278s;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import p081h.p093b.p094a.p095a.C5539d;
import p081h.p093b.p094a.p095a.C5542e;
import p081h.p093b.p094a.p095a.C5547g;
import p081h.p093b.p094a.p095a.C5572y;
/* renamed from: h.i.a.e.j.s.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/s/a.class */
public final class C8805a {

    /* renamed from: a */
    public static int f20164a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static int m16918a(Intent intent, String str) {
        return m16912b(intent, str).m25168b();
    }

    /* renamed from: a */
    public static int m16916a(Bundle bundle, String str) {
        if (bundle == null) {
            m16910b(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m16914a(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            m16910b(str, valueOf.length() != 0 ? "Unexpected type for bundle response code: ".concat(valueOf) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    /* renamed from: a */
    public static Bundle m16919a(int i, boolean z, String str, @Nullable String str2, ArrayList<C5572y> arrayList) {
        Bundle bundle = new Bundle();
        if (i >= 9) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        if (i >= 9 && z) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (i >= 13 && str2 != null) {
            bundle.putString("SKU_PACKAGE_NAME", str2);
        }
        if (i >= 14) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            int i2 = 0;
            boolean z2 = false;
            while (i2 < size) {
                C5572y yVar = arrayList.get(i2);
                i2++;
                C5572y yVar2 = yVar;
                arrayList2.add(yVar2.m25123b());
                z2 |= !TextUtils.isEmpty(yVar2.m25123b());
            }
            if (z2) {
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m16915a(C5539d dVar, boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (dVar.m25183c() != 0) {
            bundle.putInt("prorationMode", dVar.m25183c());
        }
        if (!TextUtils.isEmpty(dVar.m25177f())) {
            bundle.putString("accountId", dVar.m25177f());
        }
        if (!TextUtils.isEmpty(dVar.m25175h())) {
            bundle.putString("obfuscatedProfileId", dVar.m25175h());
        }
        if (dVar.m25181d()) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(dVar.m25191a())) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(dVar.m25191a())));
        }
        if (!TextUtils.isEmpty(dVar.m25186b())) {
            bundle.putString("oldSkuPurchaseToken", dVar.m25186b());
        }
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m16913a(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: a */
    public static List<C5547g> m16917a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            m16910b("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            C5547g c = m16909c(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (c == null) {
                m16910b("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(c);
        } else {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                C5547g c2 = m16909c(stringArrayList.get(i), stringArrayList2.get(i));
                if (c2 != null) {
                    arrayList.add(c2);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m16914a(String str, String str2) {
        Log.isLoggable(str, 2);
    }

    /* renamed from: b */
    public static C5542e m16912b(Intent intent, String str) {
        if (intent == null) {
            m16910b("BillingHelper", "Got null intent!");
            C5542e.C5543a c = C5542e.m25167c();
            c.m25165a(6);
            c.m25164a("An internal error occurred.");
            return c.m25166a();
        }
        C5542e.C5543a c2 = C5542e.m25167c();
        c2.m25165a(m16916a(intent.getExtras(), str));
        c2.m25164a(m16911b(intent.getExtras(), str));
        return c2.m25166a();
    }

    /* renamed from: b */
    public static String m16911b(Bundle bundle, String str) {
        if (bundle == null) {
            m16910b(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            m16914a(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            m16910b(str, valueOf.length() != 0 ? "Unexpected type for debug message: ".concat(valueOf) : new String("Unexpected type for debug message: "));
            return "";
        }
    }

    /* renamed from: b */
    public static void m16910b(String str, String str2) {
        Log.isLoggable(str, 5);
    }

    /* renamed from: c */
    public static C5547g m16909c(String str, String str2) {
        C5547g gVar = null;
        if (str == null || str2 == null) {
            m16910b("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            gVar = new C5547g(str, str2);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(valueOf);
            m16910b("BillingHelper", sb.toString());
        }
        return gVar;
    }
}
