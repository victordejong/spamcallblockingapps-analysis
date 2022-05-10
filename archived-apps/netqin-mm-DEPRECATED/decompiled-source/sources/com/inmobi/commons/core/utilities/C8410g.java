package com.inmobi.commons.core.utilities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.inmobi.commons.core.utilities.g */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/g.class */
public class C8410g {

    /* renamed from: a */
    public static final String f32691a = "g";

    /* renamed from: b */
    public static HashMap<String, CopyOnWriteArrayList<AbstractC8413b>> f32692b = new HashMap<>();

    /* renamed from: c */
    public static HashMap<String, C8412a> f32693c = new HashMap<>();

    /* renamed from: d */
    public static HashMap<String, ConnectivityManager.NetworkCallback> f32694d = new HashMap<>();

    /* renamed from: e */
    public static final Object f32695e = new Object();

    /* renamed from: f */
    public static volatile C8410g f32696f;

    /* renamed from: com.inmobi.commons.core.utilities.g$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/g$a.class */
    public static final class C8412a extends BroadcastReceiver {

        /* renamed from: a */
        public static final String f32698a = C8412a.class.getSimpleName();

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
            if ("android.intent.action.USER_PRESENT".equals(r6.getAction()) != false) goto L_0x008a;
         */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onReceive(android.content.Context r5, android.content.Intent r6) {
            /*
                r4 = this;
                r0 = r6
                if (r0 == 0) goto L_0x00c7
                r0 = r6
                java.lang.String r0 = r0.getAction()     // Catch: Exception -> 0x00b5
                if (r0 == 0) goto L_0x00c7
                java.lang.String r0 = "android.net.conn.CONNECTIVITY_CHANGE"
                r1 = r6
                java.lang.String r1 = r1.getAction()     // Catch: Exception -> 0x00b5
                boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x00b5
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0046
                r0 = r5
                java.lang.String r1 = "connectivity"
                java.lang.Object r0 = r0.getSystemService(r1)     // Catch: Exception -> 0x00b5
                android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: Exception -> 0x00b5
                r5 = r0
                r0 = r8
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x008c
                r0 = r5
                android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: Exception -> 0x00b5
                r5 = r0
                r0 = r8
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x008c
                r0 = r8
                r7 = r0
                r0 = r5
                boolean r0 = r0.isConnected()     // Catch: Exception -> 0x00b5
                if (r0 == 0) goto L_0x008c
                goto L_0x008a
            L_0x0046:
                java.lang.String r0 = "android.os.action.DEVICE_IDLE_MODE_CHANGED"
                r1 = r6
                java.lang.String r1 = r1.getAction()     // Catch: Exception -> 0x00b5
                boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: Exception -> 0x00b5
                if (r0 == 0) goto L_0x007b
                r0 = r5
                java.lang.String r1 = "power"
                java.lang.Object r0 = r0.getSystemService(r1)     // Catch: Exception -> 0x00b5
                android.os.PowerManager r0 = (android.os.PowerManager) r0     // Catch: Exception -> 0x00b5
                r5 = r0
                r0 = r8
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x008c
                r0 = r8
                r7 = r0
                int r0 = android.os.Build.VERSION.SDK_INT     // Catch: Exception -> 0x00b5
                r1 = 23
                if (r0 < r1) goto L_0x008c
                r0 = r8
                r7 = r0
                r0 = r5
                boolean r0 = r0.isDeviceIdleMode()     // Catch: Exception -> 0x00b5
                if (r0 == 0) goto L_0x008c
                goto L_0x008a
            L_0x007b:
                r0 = r8
                r7 = r0
                java.lang.String r0 = "android.intent.action.USER_PRESENT"
                r1 = r6
                java.lang.String r1 = r1.getAction()     // Catch: Exception -> 0x00b5
                boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x00b5
                if (r0 == 0) goto L_0x008c
            L_0x008a:
                r0 = 1
                r7 = r0
            L_0x008c:
                r0 = r7
                r1 = r6
                java.lang.String r1 = r1.getAction()     // Catch: Exception -> 0x00b5
                com.inmobi.commons.core.utilities.C8410g.m5634a(r0, r1)     // Catch: Exception -> 0x00b5
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x00b5
                r5 = r0
                r0 = r5
                r0.<init>()     // Catch: Exception -> 0x00b5
                r0 = r5
                r1 = r6
                java.lang.String r1 = r1.getAction()     // Catch: Exception -> 0x00b5
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00b5
                r0 = r5
                java.lang.String r1 = " Availability:"
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00b5
                r0 = r5
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)     // Catch: Exception -> 0x00b5
                goto L_0x00c7
            L_0x00b5:
                r5 = move-exception
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "SDK encountered unexpected error in SystemBroadReceiver.onReceive handler; "
                r1.<init>(r2)
                r1 = r5
                java.lang.String r1 = r1.getMessage()
                java.lang.StringBuilder r0 = r0.append(r1)
            L_0x00c7:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.core.utilities.C8410g.C8412a.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    /* renamed from: com.inmobi.commons.core.utilities.g$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/g$b.class */
    public interface AbstractC8413b {
        /* renamed from: a */
        void mo5511a(boolean z);
    }

    /* renamed from: a */
    public static C8410g m5639a() {
        C8410g gVar = f32696f;
        C8410g gVar2 = gVar;
        if (gVar == null) {
            synchronized (f32695e) {
                C8410g gVar3 = f32696f;
                gVar2 = gVar3;
                if (gVar3 == null) {
                    gVar2 = new C8410g();
                    f32696f = gVar2;
                }
            }
        }
        return gVar2;
    }

    /* renamed from: a */
    public static void m5637a(AbstractC8413b bVar, String str) {
        Context b;
        CopyOnWriteArrayList<AbstractC8413b> copyOnWriteArrayList = f32692b.get(str);
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.remove(bVar);
            if (copyOnWriteArrayList.size() == 0 && (b = C8326a.m5891b()) != null) {
                if ("SYSTEM_CONNECTIVITY_CHANGE".equals(str) && f32694d.get(str) != null) {
                    ConnectivityManager connectivityManager = (ConnectivityManager) b.getSystemService("connectivity");
                    if (connectivityManager != null) {
                        connectivityManager.unregisterNetworkCallback(f32694d.get(str));
                        f32694d.remove(str);
                    }
                } else if (f32693c.get(str) != null) {
                    b.unregisterReceiver(f32693c.get(str));
                    f32693c.remove(str);
                }
            }
        }
    }

    /* renamed from: b */
    public static void m5633b(boolean z, String str) {
        CopyOnWriteArrayList<AbstractC8413b> copyOnWriteArrayList = f32692b.get(str);
        if (copyOnWriteArrayList != null) {
            Iterator<AbstractC8413b> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                try {
                    it.next().mo5511a(z);
                } catch (Exception e) {
                    new StringBuilder("SDK encountered unexpected error in SystemBroadcastObserver.onServiceChanged event handler; ").append(e.getMessage());
                }
            }
        }
    }

    /* renamed from: a */
    public final void m5638a(AbstractC8413b bVar) {
        if (Build.VERSION.SDK_INT < 28) {
            m5636a("android.net.conn.CONNECTIVITY_CHANGE", bVar);
        } else {
            m5636a("SYSTEM_CONNECTIVITY_CHANGE", bVar);
        }
    }

    /* renamed from: a */
    public final void m5636a(String str, AbstractC8413b bVar) {
        CopyOnWriteArrayList<AbstractC8413b> copyOnWriteArrayList;
        Context b;
        CopyOnWriteArrayList<AbstractC8413b> copyOnWriteArrayList2 = f32692b.get(str);
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.add(bVar);
            copyOnWriteArrayList = copyOnWriteArrayList2;
        } else {
            CopyOnWriteArrayList<AbstractC8413b> copyOnWriteArrayList3 = new CopyOnWriteArrayList<>();
            copyOnWriteArrayList3.add(bVar);
            copyOnWriteArrayList = copyOnWriteArrayList3;
        }
        f32692b.put(str, copyOnWriteArrayList);
        if (copyOnWriteArrayList.size() == 1 && (b = C8326a.m5891b()) != null) {
            if ("SYSTEM_CONNECTIVITY_CHANGE".equals(str)) {
                ConnectivityManager connectivityManager = (ConnectivityManager) b.getSystemService("connectivity");
                if (connectivityManager != null) {
                    ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.inmobi.commons.core.utilities.g.1
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onAvailable(Network network) {
                            super.onAvailable(network);
                            C8410g.m5633b(true, "SYSTEM_CONNECTIVITY_CHANGE");
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onLost(Network network) {
                            super.onLost(network);
                            C8410g.m5633b(false, "SYSTEM_CONNECTIVITY_CHANGE");
                        }
                    };
                    f32694d.put(str, networkCallback);
                    connectivityManager.registerDefaultNetworkCallback(networkCallback);
                    return;
                }
                return;
            }
            C8412a aVar = new C8412a();
            f32693c.put(str, aVar);
            b.registerReceiver(aVar, new IntentFilter(str));
        }
    }
}
