package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.ads.C8078ad;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager.class */
public class AppLovinBroadcastManager {

    /* renamed from: f */
    public static AppLovinBroadcastManager f21555f;

    /* renamed from: g */
    public static final Object f21556g = new Object();

    /* renamed from: a */
    public final Context f21557a;

    /* renamed from: b */
    public final HashMap<Receiver, ArrayList<C7016c>> f21558b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, ArrayList<C7016c>> f21559c = new HashMap<>();

    /* renamed from: d */
    public final ArrayList<C7015b> f21560d = new ArrayList<>();

    /* renamed from: e */
    public final Handler f21561e = new HandlerC7014a(Looper.getMainLooper());

    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager$Receiver.class */
    public interface Receiver {
        void onReceive(Context context, Intent intent, Map<String, Object> map);
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinBroadcastManager$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager$a.class */
    public class HandlerC7014a extends Handler {
        public HandlerC7014a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                AppLovinBroadcastManager.this.m19052a();
            } else {
                super.handleMessage(message);
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinBroadcastManager$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager$b.class */
    public static class C7015b {

        /* renamed from: a */
        public final Intent f21563a;

        /* renamed from: b */
        public final Map<String, Object> f21564b;

        /* renamed from: c */
        public final List<C7016c> f21565c;

        public C7015b(Intent intent, Map<String, Object> map, List<C7016c> list) {
            this.f21563a = intent;
            this.f21564b = map;
            this.f21565c = list;
        }
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinBroadcastManager$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinBroadcastManager$c.class */
    public static class C7016c {

        /* renamed from: a */
        public final IntentFilter f21566a;

        /* renamed from: b */
        public final Receiver f21567b;

        /* renamed from: c */
        public boolean f21568c;

        /* renamed from: d */
        public boolean f21569d;

        public C7016c(IntentFilter intentFilter, Receiver receiver) {
            this.f21566a = intentFilter;
            this.f21567b = receiver;
        }
    }

    public AppLovinBroadcastManager(Context context) {
        this.f21557a = context;
    }

    public static AppLovinBroadcastManager getInstance(Context context) {
        AppLovinBroadcastManager appLovinBroadcastManager;
        synchronized (f21556g) {
            if (f21555f == null) {
                f21555f = new AppLovinBroadcastManager(context.getApplicationContext());
            }
            appLovinBroadcastManager = f21555f;
        }
        return appLovinBroadcastManager;
    }

    /* renamed from: a */
    public final List<C7016c> m19051a(Intent intent) {
        synchronized (this.f21558b) {
            try {
                String action = intent.getAction();
                String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f21557a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                ArrayList<C7016c> arrayList = this.f21559c.get(action);
                if (arrayList == null) {
                    return null;
                }
                ArrayList<C7016c> arrayList2 = null;
                for (C7016c cVar : arrayList) {
                    if (!cVar.f21568c && cVar.f21566a.match(action, resolveTypeIfNeeded, scheme, data, categories, "AppLovinBroadcastManager") >= 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(cVar);
                        cVar.f21568c = true;
                    }
                }
                if (arrayList2 == null) {
                    return null;
                }
                for (C7016c cVar2 : arrayList2) {
                    cVar2.f21568c = false;
                }
                return arrayList2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m19052a() {
        int size;
        C7015b[] bVarArr;
        while (true) {
            synchronized (this.f21558b) {
                try {
                    size = this.f21560d.size();
                    if (size > 0) {
                        bVarArr = new C7015b[size];
                        this.f21560d.toArray(bVarArr);
                        this.f21560d.clear();
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i = 0; i < size; i++) {
                C7015b bVar = bVarArr[i];
                for (C7016c cVar : bVar.f21565c) {
                    if (!cVar.f21569d) {
                        cVar.f21567b.onReceive(this.f21557a, bVar.f21563a, bVar.f21564b);
                    }
                }
            }
        }
    }

    public void registerReceiver(Receiver receiver, IntentFilter intentFilter) {
        synchronized (this.f21558b) {
            try {
                C7016c cVar = new C7016c(intentFilter, receiver);
                ArrayList<C7016c> arrayList = this.f21558b.get(receiver);
                ArrayList<C7016c> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f21558b.put(receiver, arrayList2);
                }
                arrayList2.add(cVar);
                Iterator<String> actionsIterator = intentFilter.actionsIterator();
                while (actionsIterator.hasNext()) {
                    String next = actionsIterator.next();
                    ArrayList<C7016c> arrayList3 = this.f21559c.get(next);
                    ArrayList<C7016c> arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList<>(1);
                        this.f21559c.put(next, arrayList4);
                    }
                    arrayList4.add(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean sendBroadcast(Intent intent, Map<String, Object> map) {
        synchronized (this.f21558b) {
            List<C7016c> a = m19051a(intent);
            if (a == null) {
                return false;
            }
            this.f21560d.add(new C7015b(intent, map, a));
            if (!this.f21561e.hasMessages(1)) {
                this.f21561e.sendEmptyMessage(1);
            }
            return true;
        }
    }

    public void sendBroadcastSync(Intent intent, Map<String, Object> map) {
        List<C7016c> a = m19051a(intent);
        if (a != null) {
            for (C7016c cVar : a) {
                if (!cVar.f21569d) {
                    cVar.f21567b.onReceive(this.f21557a, intent, map);
                }
            }
        }
    }

    public void sendBroadcastSyncWithPendingBroadcasts(Intent intent, Map<String, Object> map) {
        if (sendBroadcast(intent, map)) {
            m19052a();
        }
    }

    public boolean sendBroadcastWithAdObject(String str, Object obj) {
        HashMap hashMap = new HashMap(1);
        hashMap.put(C8078ad.f31587d, obj);
        return sendBroadcast(new Intent(str), hashMap);
    }

    public void unregisterReceiver(Receiver receiver) {
        synchronized (this.f21558b) {
            try {
                ArrayList<C7016c> remove = this.f21558b.remove(receiver);
                if (remove != null) {
                    for (C7016c cVar : remove) {
                        cVar.f21569d = true;
                        Iterator<String> actionsIterator = cVar.f21566a.actionsIterator();
                        while (actionsIterator.hasNext()) {
                            String next = actionsIterator.next();
                            ArrayList<C7016c> arrayList = this.f21559c.get(next);
                            if (arrayList != null) {
                                Iterator<C7016c> it = arrayList.iterator();
                                while (it.hasNext()) {
                                    if (it.next().f21567b == receiver) {
                                        cVar.f21569d = true;
                                        it.remove();
                                    }
                                }
                                if (arrayList.size() <= 0) {
                                    this.f21559c.remove(next);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
