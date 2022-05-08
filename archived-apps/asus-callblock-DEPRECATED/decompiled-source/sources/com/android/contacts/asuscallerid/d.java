package com.android.contacts.asuscallerid;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/d.class */
public final class d {
    private static d f;

    /* renamed from: a  reason: collision with root package name */
    final LinkedList<c> f600a = new LinkedList<>();

    /* renamed from: b  reason: collision with root package name */
    public final LinkedList<a> f601b = new LinkedList<>();
    public final Map<String, a.c> c = new HashMap();
    final Set<String> d = new HashSet();
    Handler e = new Handler() { // from class: com.android.contacts.asuscallerid.d.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                c cVar = (c) message.obj;
                Iterator<a> it = d.this.f601b.iterator();
                while (it.hasNext()) {
                    it.next().a(cVar);
                }
            }
        }
    };
    private b g;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/d$a.class */
    public interface a {
        void a(c cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/d$b.class */
    public final class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f603a = false;

        public b() {
            super("CallerIDThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            c removeFirst;
            boolean z;
            while (!this.f603a) {
                synchronized (d.this.f600a) {
                    removeFirst = !d.this.f600a.isEmpty() ? d.this.f600a.removeFirst() : null;
                }
                if (removeFirst == null || removeFirst.f605a.get() == null) {
                    try {
                        synchronized (d.this.f600a) {
                            d.this.f600a.wait(1000L);
                        }
                        z = false;
                    } catch (InterruptedException e) {
                        z = false;
                    }
                } else {
                    a.c a2 = com.asus.a.a.a(removeFirst.f605a.get(), removeFirst.c, removeFirst.d);
                    d.this.d.remove(removeFirst.c);
                    d.this.c.put(removeFirst.c, a2);
                    removeFirst.e = a2;
                    z = true;
                }
                if (z) {
                    d.this.e.sendMessage(d.this.e.obtainMessage(1, removeFirst));
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/d$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<Context> f605a;

        /* renamed from: b  reason: collision with root package name */
        public int f606b;
        public String c;
        public String d;
        public a.c e;
        private WeakReference<View> f;

        public c(Context context, String str, String str2, int i, View view) {
            this.c = str;
            this.f605a = new WeakReference<>(context);
            this.f = new WeakReference<>(view);
            this.d = str2;
            this.f606b = i;
        }

        public final View a() {
            return this.f.get();
        }
    }

    public static d a() {
        d dVar;
        synchronized (d.class) {
            try {
                if (f == null) {
                    f = new d();
                }
                dVar = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    private void d() {
        synchronized (this) {
            if (this.g == null) {
                this.g = new b();
                this.g.setPriority(1);
                this.g.start();
            }
        }
    }

    public final a.c a(Context context, String str, String str2, int i, View view) {
        a.c cVar;
        if (this.c.containsKey(str)) {
            cVar = this.c.get(str);
        } else {
            if (!this.d.contains(str)) {
                this.d.add(str);
                c cVar2 = new c(context, str, str2, i, view);
                synchronized (this.f600a) {
                    if (!this.f600a.contains(cVar2)) {
                        this.f600a.add(cVar2);
                        this.f600a.notifyAll();
                    }
                }
                d();
            }
            cVar = null;
        }
        return cVar;
    }

    public final void a(a aVar) {
        if (aVar != null && !this.f601b.contains(aVar)) {
            Log.d("CallerIDManager", "[registerCallback] isSuccess:" + this.f601b.add(aVar));
        }
    }

    public final void b() {
        synchronized (this) {
            if (PhoneCapabilityTester.isDebug()) {
                Log.d("CallerIDManager", "[restart]");
            }
            c();
            d();
            if (PhoneCapabilityTester.isDebug()) {
                Log.d("CallerIDManager", "[restart] complete!");
            }
        }
    }

    public final boolean b(a aVar) {
        boolean z = false;
        if (aVar != null) {
            z = this.f601b.remove(aVar);
            Log.d("CallerIDManager", "[unRegisterCallback] isSuccess:" + z);
        }
        return z;
    }

    public final void c() {
        synchronized (this) {
            if (this.g != null) {
                this.g.f603a = true;
                this.g.interrupt();
                this.g = null;
            }
        }
    }
}
