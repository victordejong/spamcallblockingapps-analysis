package p131c.p132a.p133a.p134a;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zza;
import java.util.ArrayList;
import p131c.p132a.p133a.p134a.C1994g;
/* renamed from: c.a.a.a.z */
/* loaded from: classes-dex2jar.jar:c/a/a/a/z.class */
public final class C2030z {
    /* renamed from: a */
    public static C1994g m31247a(Bundle bundle, String str, String str2) {
        C1994g gVar = C2029y.f7912j;
        if (bundle == null) {
            zza.m9442b("BillingClient", String.format("%s got null owned items list", str2));
            return gVar;
        }
        int a = zza.m9448a(bundle, "BillingClient");
        String b = zza.m9443b(bundle, "BillingClient");
        C1994g.C1995a c = C1994g.m31290c();
        c.m31288a(a);
        c.m31287a(b);
        C1994g a2 = c.m31289a();
        if (a != 0) {
            zza.m9442b("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(a)));
            return a2;
        } else if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            zza.m9442b("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return gVar;
        } else {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                zza.m9442b("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
                return gVar;
            } else if (stringArrayList2 == null) {
                zza.m9442b("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
                return gVar;
            } else if (stringArrayList3 != null) {
                return C2029y.f7913k;
            } else {
                zza.m9442b("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
                return gVar;
            }
        }
    }
}
