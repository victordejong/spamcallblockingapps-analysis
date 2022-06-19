package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.C0586g;
import g.f.a.d.c.k.a;
import java.util.ArrayList;
/* renamed from: com.android.billingclient.api.b0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/b0.class */
final class C0572b0 {
    /* renamed from: a */
    static C0586g m4234a(Bundle bundle, String str, String str2) {
        C0586g c0586g = C0627z.f2814k;
        if (bundle == null) {
            a.b("BillingClient", String.format("%s got null owned items list", str2));
            return c0586g;
        }
        int d = a.d(bundle, "BillingClient");
        String e = a.e(bundle, "BillingClient");
        C0586g.C0587a m4191c = C0586g.m4191c();
        m4191c.m4186c(d);
        m4191c.m4187b(e);
        C0586g m4188a = m4191c.m4188a();
        if (d != 0) {
            a.b("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(d)));
            return m4188a;
        } else if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            a.b("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return c0586g;
        } else {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                a.b("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
                return c0586g;
            } else if (stringArrayList2 == null) {
                a.b("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
                return c0586g;
            } else if (stringArrayList3 != null) {
                return C0627z.f2815l;
            } else {
                a.b("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
                return c0586g;
            }
        }
    }
}
