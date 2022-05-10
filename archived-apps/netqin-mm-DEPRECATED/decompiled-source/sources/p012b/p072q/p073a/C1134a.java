package p012b.p072q.p073a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* renamed from: b.q.a.a */
/* loaded from: classes-dex2jar.jar:b/q/a/a.class */
public final class C1134a {

    /* renamed from: f */
    public static final Object f4638f = new Object();

    /* renamed from: g */
    public static C1134a f4639g;

    /* renamed from: a */
    public final Context f4640a;

    /* renamed from: b */
    public final HashMap<BroadcastReceiver, ArrayList<C1137c>> f4641b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, ArrayList<C1137c>> f4642c = new HashMap<>();

    /* renamed from: d */
    public final ArrayList<C1136b> f4643d = new ArrayList<>();

    /* renamed from: e */
    public final Handler f4644e;

    /* renamed from: b.q.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/q/a/a$a.class */
    public class HandlerC1135a extends Handler {
        public HandlerC1135a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                C1134a.this.m34601a();
            }
        }
    }

    /* renamed from: b.q.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/q/a/a$b.class */
    public static final class C1136b {

        /* renamed from: a */
        public final Intent f4646a;

        /* renamed from: b */
        public final ArrayList<C1137c> f4647b;

        public C1136b(Intent intent, ArrayList<C1137c> arrayList) {
            this.f4646a = intent;
            this.f4647b = arrayList;
        }
    }

    /* renamed from: b.q.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/q/a/a$c.class */
    public static final class C1137c {

        /* renamed from: a */
        public final IntentFilter f4648a;

        /* renamed from: b */
        public final BroadcastReceiver f4649b;

        /* renamed from: c */
        public boolean f4650c;

        /* renamed from: d */
        public boolean f4651d;

        public C1137c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f4648a = intentFilter;
            this.f4649b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f4649b);
            sb.append(" filter=");
            sb.append(this.f4648a);
            if (this.f4651d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public C1134a(Context context) {
        this.f4640a = context;
        this.f4644e = new HandlerC1135a(context.getMainLooper());
    }

    /* renamed from: a */
    public static C1134a m34598a(Context context) {
        C1134a aVar;
        synchronized (f4638f) {
            if (f4639g == null) {
                f4639g = new C1134a(context.getApplicationContext());
            }
            aVar = f4639g;
        }
        return aVar;
    }

    /* renamed from: a */
    public void m34601a() {
        int size;
        C1136b[] bVarArr;
        while (true) {
            synchronized (this.f4641b) {
                try {
                    size = this.f4643d.size();
                    if (size > 0) {
                        bVarArr = new C1136b[size];
                        this.f4643d.toArray(bVarArr);
                        this.f4643d.clear();
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i = 0; i < size; i++) {
                C1136b bVar = bVarArr[i];
                int size2 = bVar.f4647b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    C1137c cVar = bVar.f4647b.get(i2);
                    if (!cVar.f4651d) {
                        cVar.f4649b.onReceive(this.f4640a, bVar.f4646a);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m34600a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f4641b) {
            try {
                ArrayList<C1137c> remove = this.f4641b.remove(broadcastReceiver);
                if (remove != null) {
                    for (int size = remove.size() - 1; size >= 0; size--) {
                        C1137c cVar = remove.get(size);
                        cVar.f4651d = true;
                        for (int i = 0; i < cVar.f4648a.countActions(); i++) {
                            String action = cVar.f4648a.getAction(i);
                            ArrayList<C1137c> arrayList = this.f4642c.get(action);
                            if (arrayList != null) {
                                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                    C1137c cVar2 = arrayList.get(size2);
                                    if (cVar2.f4649b == broadcastReceiver) {
                                        cVar2.f4651d = true;
                                        arrayList.remove(size2);
                                    }
                                }
                                if (arrayList.size() <= 0) {
                                    this.f4642c.remove(action);
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

    /* renamed from: a */
    public void m34599a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f4641b) {
            try {
                C1137c cVar = new C1137c(intentFilter, broadcastReceiver);
                ArrayList<C1137c> arrayList = this.f4641b.get(broadcastReceiver);
                ArrayList<C1137c> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f4641b.put(broadcastReceiver, arrayList2);
                }
                arrayList2.add(cVar);
                for (int i = 0; i < intentFilter.countActions(); i++) {
                    String action = intentFilter.getAction(i);
                    ArrayList<C1137c> arrayList3 = this.f4642c.get(action);
                    ArrayList<C1137c> arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList<>(1);
                        this.f4642c.put(action, arrayList4);
                    }
                    arrayList4.add(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public boolean m34597a(Intent intent) {
        synchronized (this.f4641b) {
            try {
                String action = intent.getAction();
                String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f4640a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z = (intent.getFlags() & 8) != 0;
                if (z) {
                    Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList<C1137c> arrayList = this.f4642c.get(intent.getAction());
                if (arrayList != null) {
                    if (z) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList);
                    }
                    ArrayList arrayList2 = null;
                    for (int i = 0; i < arrayList.size(); i++) {
                        C1137c cVar = arrayList.get(i);
                        if (z) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + cVar.f4648a);
                        }
                        if (!cVar.f4650c) {
                            int match = cVar.f4648a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (match >= 0) {
                                if (z) {
                                    Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                                }
                                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                                arrayList2.add(cVar);
                                cVar.f4650c = true;
                            } else if (z) {
                                String str = match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category";
                                Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                            }
                        } else if (z) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                            ((C1137c) arrayList2.get(i2)).f4650c = false;
                        }
                        this.f4643d.add(new C1136b(intent, arrayList2));
                        if (!this.f4644e.hasMessages(1)) {
                            this.f4644e.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
