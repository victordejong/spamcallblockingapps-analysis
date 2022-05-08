package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.p;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:android/support/v4/content/c.class */
public final class c {
    private static final Object f = new Object();
    private static c g;

    /* renamed from: a  reason: collision with root package name */
    private final Context f147a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> f148b = new HashMap<>();
    private final HashMap<String, ArrayList<b>> c = new HashMap<>();
    private final ArrayList<a> d = new ArrayList<>();
    private final Handler e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f150a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<b> f151b;

        a(Intent intent, ArrayList<b> arrayList) {
            this.f150a = intent;
            this.f151b = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final IntentFilter f152a;

        /* renamed from: b  reason: collision with root package name */
        final BroadcastReceiver f153b;
        boolean c;

        b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f152a = intentFilter;
            this.f153b = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f153b);
            sb.append(" filter=");
            sb.append(this.f152a);
            sb.append("}");
            return sb.toString();
        }
    }

    private c(Context context) {
        this.f147a = context;
        this.e = new Handler(context.getMainLooper()) { // from class: android.support.v4.content.c.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        c.a(c.this);
                        return;
                    default:
                        super.handleMessage(message);
                        return;
                }
            }
        };
    }

    public static c a(Context context) {
        c cVar;
        synchronized (f) {
            if (g == null) {
                g = new c(context.getApplicationContext());
            }
            cVar = g;
        }
        return cVar;
    }

    static /* synthetic */ void a(c cVar) {
        a[] aVarArr;
        while (true) {
            synchronized (cVar.f148b) {
                int size = cVar.d.size();
                if (size > 0) {
                    aVarArr = new a[size];
                    cVar.d.toArray(aVarArr);
                    cVar.d.clear();
                } else {
                    return;
                }
            }
            for (a aVar : aVarArr) {
                for (int i = 0; i < aVar.f151b.size(); i++) {
                    aVar.f151b.get(i).f153b.onReceive(cVar.f147a, aVar.f150a);
                }
            }
        }
    }

    public final void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f148b) {
            ArrayList<IntentFilter> remove = this.f148b.remove(broadcastReceiver);
            if (remove != null) {
                for (int i = 0; i < remove.size(); i++) {
                    IntentFilter intentFilter = remove.get(i);
                    for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                        String action = intentFilter.getAction(i2);
                        ArrayList<b> arrayList = this.c.get(action);
                        if (arrayList != null) {
                            int i3 = 0;
                            while (i3 < arrayList.size()) {
                                if (arrayList.get(i3).f153b == broadcastReceiver) {
                                    arrayList.remove(i3);
                                    i3--;
                                }
                                i3++;
                            }
                            if (arrayList.size() <= 0) {
                                this.c.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }

    public final void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f148b) {
            b bVar = new b(intentFilter, broadcastReceiver);
            ArrayList<IntentFilter> arrayList = this.f148b.get(broadcastReceiver);
            ArrayList<IntentFilter> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.f148b.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(intentFilter);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<b> arrayList3 = this.c.get(action);
                ArrayList<b> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.c.put(action, arrayList4);
                }
                arrayList4.add(bVar);
            }
        }
    }

    public final boolean a(Intent intent) {
        boolean z;
        String str;
        synchronized (this.f148b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f147a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z2 = (intent.getFlags() & 8) != 0;
            if (z2) {
                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<b> arrayList = this.c.get(intent.getAction());
            if (arrayList != null) {
                if (z2) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    b bVar = arrayList.get(i);
                    if (z2) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + bVar.f152a);
                    }
                    if (!bVar.c) {
                        int match = bVar.f152a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z2) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(bVar);
                            bVar.c = true;
                        } else if (z2) {
                            switch (match) {
                                case -4:
                                    str = "category";
                                    break;
                                case -3:
                                    str = "action";
                                    break;
                                case p.POSITION_NONE /* -2 */:
                                    str = "data";
                                    break;
                                case p.POSITION_UNCHANGED /* -1 */:
                                    str = "type";
                                    break;
                                default:
                                    str = "unknown reason";
                                    break;
                            }
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                        }
                    } else if (z2) {
                        Log.v("LocalBroadcastManager", "  Filter's target already added");
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((b) arrayList2.get(i2)).c = false;
                    }
                    this.d.add(new a(intent, arrayList2));
                    if (!this.e.hasMessages(1)) {
                        this.e.sendEmptyMessage(1);
                    }
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
