package com.vladlee.p076a;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.android.p049a.p050a.AbstractC1297a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
/* renamed from: com.vladlee.a.b */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/b.class */
public final class C3238b {

    /* renamed from: j */
    Context f19180j;

    /* renamed from: k */
    AbstractC1297a f19181k;

    /* renamed from: l */
    ServiceConnection f19182l;

    /* renamed from: m */
    int f19183m;

    /* renamed from: n */
    String f19184n;

    /* renamed from: o */
    String f19185o;

    /* renamed from: p */
    AbstractC3240b f19186p;

    /* renamed from: a */
    boolean f19171a = false;

    /* renamed from: b */
    String f19172b = "IabHelper";

    /* renamed from: c */
    boolean f19173c = false;

    /* renamed from: d */
    boolean f19174d = false;

    /* renamed from: e */
    boolean f19175e = false;

    /* renamed from: f */
    boolean f19176f = false;

    /* renamed from: g */
    boolean f19177g = false;

    /* renamed from: h */
    boolean f19178h = false;

    /* renamed from: q */
    private final Object f19187q = new Object();

    /* renamed from: i */
    String f19179i = "";

    /* renamed from: com.vladlee.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/a/b$a.class */
    public static final class C3239a extends Exception {
        public C3239a(String str) {
            super(str);
        }
    }

    /* renamed from: com.vladlee.a.b$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/a/b$b.class */
    public interface AbstractC3240b {
        /* renamed from: a */
        void mo56a(C3246f fVar, C3248h hVar);
    }

    /* renamed from: com.vladlee.a.b$c */
    /* loaded from: classes-dex2jar.jar:com/vladlee/a/b$c.class */
    public interface AbstractC3241c {
        /* renamed from: a */
        void mo58a(C3246f fVar);
    }

    /* renamed from: com.vladlee.a.b$d */
    /* loaded from: classes-dex2jar.jar:com/vladlee/a/b$d.class */
    public interface AbstractC3242d {
        /* renamed from: a */
        void mo57a(C3246f fVar, C3247g gVar);
    }

    public C3238b(Context context, String str) {
        this.f19185o = null;
        this.f19180j = context.getApplicationContext();
        this.f19185o = str;
        m416a("IAB helper created.");
    }

    /* renamed from: a */
    private int m420a(Bundle bundle) {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m416a("Bundle with null response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            m409d("Unexpected type for bundle response code.");
            m409d(obj.getClass().getName());
            throw new RuntimeException("Unexpected type for bundle response code: " + obj.getClass().getName());
        }
    }

    /* renamed from: a */
    private int m417a(C3247g gVar, String str) {
        int i;
        Bundle bundle;
        m416a("Querying owned items, item type: ".concat(String.valueOf(str)));
        m416a("Package name: " + this.f19180j.getPackageName());
        String str2 = null;
        boolean z = false;
        do {
            m416a("Calling getPurchases with continuation token: ".concat(String.valueOf(str2)));
            AbstractC1297a aVar = this.f19181k;
            if (aVar != null) {
                bundle = aVar.mo6370a(3, this.f19180j.getPackageName(), str, str2);
                i = m420a(bundle);
            } else {
                i = 2;
                bundle = null;
            }
            m416a("Owned items response: " + String.valueOf(i));
            if (i != 0) {
                m416a("getPurchases() failed: " + m423a(i));
                return i;
            } else if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                m409d("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            } else {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    String str3 = stringArrayList2.get(i2);
                    String str4 = stringArrayList3.get(i2);
                    String str5 = stringArrayList.get(i2);
                    if (C3249i.m398a(this.f19185o, str3, str4)) {
                        m416a("Sku is owned: ".concat(String.valueOf(str5)));
                        C3248h hVar = new C3248h(str, str3, str4);
                        if (TextUtils.isEmpty(hVar.f19210h)) {
                            m408e("BUG: empty/null token!");
                            m416a("Purchase data: ".concat(String.valueOf(str3)));
                        }
                        gVar.m404a(hVar);
                    } else {
                        m408e("Purchase signature verification **FAILED**. Not adding item.");
                        m416a("   Purchase data: ".concat(String.valueOf(str3)));
                        m416a("   Signature: ".concat(String.valueOf(str4)));
                        z = true;
                    }
                }
                str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                m416a("Continuation token: ".concat(String.valueOf(str2)));
            }
        } while (!TextUtils.isEmpty(str2));
        return z ? -1003 : 0;
    }

    /* renamed from: a */
    private int m415a(String str, C3247g gVar, List<String> list) {
        m416a("Querying SKU details.");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(gVar.m401b(str));
        if (list != null) {
            for (String str2 : list) {
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            m416a("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size() / 20;
        int size2 = arrayList.size() % 20;
        for (int i = 0; i < size; i++) {
            ArrayList arrayList3 = new ArrayList();
            int i2 = i * 20;
            for (String str3 : arrayList.subList(i2, i2 + 20)) {
                arrayList3.add(str3);
            }
            arrayList2.add(arrayList3);
        }
        if (size2 != 0) {
            ArrayList arrayList4 = new ArrayList();
            int i3 = size * 20;
            for (String str4 : arrayList.subList(i3, size2 + i3)) {
                arrayList4.add(str4);
            }
            arrayList2.add(arrayList4);
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ArrayList<String> arrayList5 = (ArrayList) it.next();
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList5);
            Bundle a = this.f19181k.mo6371a(3, this.f19180j.getPackageName(), str, bundle);
            if (!a.containsKey("DETAILS_LIST")) {
                int a2 = m420a(a);
                if (a2 != 0) {
                    m416a("getSkuDetails() failed: " + m423a(a2));
                    return a2;
                }
                m409d("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                return -1002;
            }
            Iterator<String> it2 = a.getStringArrayList("DETAILS_LIST").iterator();
            while (it2.hasNext()) {
                C3250j jVar = new C3250j(str, it2.next());
                m416a("Got sku details: ".concat(String.valueOf(jVar)));
                gVar.m403a(jVar);
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static String m423a(int i) {
        StringBuilder sb;
        String str;
        String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String[] split2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i <= -1000) {
            int i2 = (-1000) - i;
            if (i2 >= 0 && i2 < split2.length) {
                return split2[i2];
            }
            sb = new StringBuilder();
            sb.append(String.valueOf(i));
            str = ":Unknown IAB Helper Error";
        } else if (i >= 0 && i < split.length) {
            return split[i];
        } else {
            sb = new StringBuilder();
            sb.append(String.valueOf(i));
            str = ":Unknown";
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: b */
    private void m412b(String str) {
        if (!this.f19173c) {
            m409d("Illegal state for operation (" + str + "): IAB helper is not set up.");
            throw new IllegalStateException("IAB helper is not set up. Can't perform operation: ".concat(String.valueOf(str)));
        }
    }

    /* renamed from: c */
    private void m411c() {
        if (this.f19174d) {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    /* renamed from: c */
    private void m410c(String str) {
        synchronized (this.f19187q) {
            if (!this.f19178h) {
                this.f19179i = str;
                this.f19178h = true;
                m416a("Starting async operation: ".concat(String.valueOf(str)));
            } else {
                throw new C3239a("Can't start async operation (" + str + ") because another async operation (" + this.f19179i + ") is in progress.");
            }
        }
    }

    /* renamed from: d */
    private void m409d(String str) {
        Log.e(this.f19172b, "In-app billing error: ".concat(String.valueOf(str)));
    }

    /* renamed from: e */
    private void m408e(String str) {
        Log.w(this.f19172b, "In-app billing warning: ".concat(String.valueOf(str)));
    }

    /* renamed from: a */
    public final C3247g m414a(boolean z, List<String> list, List<String> list2) {
        int a;
        int a2;
        m411c();
        m412b("queryInventory");
        try {
            C3247g gVar = new C3247g();
            int a3 = m417a(gVar, "inapp");
            if (a3 != 0) {
                throw new C3237a(a3, "Error refreshing inventory (querying owned items).");
            } else if (!z || (a2 = m415a("inapp", gVar, list)) == 0) {
                if (this.f19176f) {
                    int a4 = m417a(gVar, "subs");
                    if (a4 != 0) {
                        throw new C3237a(a4, "Error refreshing inventory (querying owned subscriptions).");
                    } else if (z && (a = m415a("subs", gVar, list2)) != 0) {
                        throw new C3237a(a, "Error refreshing inventory (querying prices of subscriptions).");
                    }
                }
                return gVar;
            } else {
                throw new C3237a(a2, "Error refreshing inventory (querying prices of items).");
            }
        } catch (RemoteException e) {
            throw new C3237a(-1001, "Remote exception while refreshing inventory.", e);
        } catch (JSONException e2) {
            throw new C3237a(-1002, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    /* renamed from: a */
    public final void m424a() {
        synchronized (this.f19187q) {
            if (this.f19178h) {
                throw new C3239a("Can't dispose because an async operation (" + this.f19179i + ") is in progress.");
            }
        }
        m416a("Disposing.");
        this.f19173c = false;
        if (this.f19182l != null) {
            m416a("Unbinding from service.");
            Context context = this.f19180j;
            if (!(context == null || this.f19181k == null)) {
                context.unbindService(this.f19182l);
            }
        }
        this.f19174d = true;
        this.f19180j = null;
        this.f19182l = null;
        this.f19181k = null;
        this.f19186p = null;
    }

    /* renamed from: a */
    public final void m421a(Activity activity, String str, String str2, AbstractC3240b bVar, String str3) {
        m411c();
        m412b("launchPurchaseFlow");
        m410c("launchPurchaseFlow");
        if (!str2.equals("subs") || this.f19176f) {
            try {
                m416a("Constructing buy intent for " + str + ", item type: " + str2);
                Bundle a = this.f19181k.mo6369a(3, this.f19180j.getPackageName(), str, str2, str3);
                int a2 = m420a(a);
                if (a2 != 0) {
                    m409d("Unable to buy item, Error response: " + m423a(a2));
                    m413b();
                    C3246f fVar = new C3246f(a2, "Unable to buy item");
                    if (bVar != null) {
                        bVar.mo56a(fVar, null);
                        return;
                    }
                    return;
                }
                PendingIntent pendingIntent = (PendingIntent) a.getParcelable("BUY_INTENT");
                m416a("Launching buy intent for " + str + ". Request code: 10001");
                this.f19183m = 10001;
                this.f19186p = bVar;
                this.f19184n = str2;
                activity.startIntentSenderForResult(pendingIntent.getIntentSender(), 10001, new Intent(), 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                m409d("SendIntentException while launching purchase flow for sku ".concat(String.valueOf(str)));
                e.printStackTrace();
                m413b();
                C3246f fVar2 = new C3246f(-1004, "Failed to send intent.");
                if (bVar != null) {
                    bVar.mo56a(fVar2, null);
                }
            } catch (RemoteException e2) {
                m409d("RemoteException while launching purchase flow for sku ".concat(String.valueOf(str)));
                e2.printStackTrace();
                m413b();
                C3246f fVar3 = new C3246f(-1001, "Remote exception while starting purchase flow");
                if (bVar != null) {
                    bVar.mo56a(fVar3, null);
                }
            }
        } else {
            C3246f fVar4 = new C3246f(-1009, "Subscriptions are not available.");
            m413b();
            if (bVar != null) {
                bVar.mo56a(fVar4, null);
            }
        }
    }

    /* renamed from: a */
    public final void m419a(AbstractC3241c cVar) {
        m411c();
        if (!this.f19173c) {
            m416a("Starting in-app billing setup.");
            this.f19182l = new ServiceConnectionC3243c(this, cVar);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f19180j.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                this.f19180j.bindService(intent, this.f19182l, 1);
            } else if (cVar != null) {
                cVar.mo58a(new C3246f(3, "Billing service unavailable on device."));
            }
        } else {
            throw new IllegalStateException("IAB helper is already set up.");
        }
    }

    /* renamed from: a */
    public final void m418a(AbstractC3242d dVar) {
        Handler handler = new Handler();
        m411c();
        m412b("queryInventory");
        m410c("refresh inventory");
        new Thread(new RunnableC3244d(this, dVar, handler)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m416a(String str) {
        if (this.f19171a) {
            Log.d(this.f19172b, str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.vladlee.a.f, com.vladlee.a.b$b] */
    /* JADX WARN: Type inference failed for: r0v21, types: [com.vladlee.a.f, com.vladlee.a.b$b] */
    /* JADX WARN: Type inference failed for: r0v27, types: [boolean, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v28, types: [com.vladlee.a.h, com.vladlee.a.b$b] */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.vladlee.a.h, com.vladlee.a.f, com.vladlee.a.b$b] */
    /* JADX WARN: Type inference failed for: r0v36, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v37, types: [boolean, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v44, types: [com.vladlee.a.f, com.vladlee.a.b$b] */
    /* JADX WARN: Unknown variable types count: 9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m422a(int r7, int r8, android.content.Intent r9) {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.p076a.C3238b.m422a(int, int, android.content.Intent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m413b() {
        synchronized (this.f19187q) {
            m416a("Ending async operation: " + this.f19179i);
            this.f19179i = "";
            this.f19178h = false;
            if (this.f19175e) {
                try {
                    m424a();
                } catch (C3239a e) {
                }
            }
        }
    }
}
