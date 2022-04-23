package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.i */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i.class */
public class C0245i {

    /* renamed from: a */
    final HandlerThreadC0249c f471a;

    /* renamed from: b */
    final Context f472b;

    /* renamed from: c */
    final ExecutorService f473c;

    /* renamed from: d */
    final AbstractC0251j f474d;

    /* renamed from: i */
    final Handler f479i;

    /* renamed from: j */
    final Handler f480j;

    /* renamed from: k */
    final AbstractC0237d f481k;

    /* renamed from: l */
    final C0226a0 f482l;

    /* renamed from: n */
    final C0250d f484n;

    /* renamed from: o */
    final boolean f485o;

    /* renamed from: p */
    boolean f486p;

    /* renamed from: e */
    final Map<String, RunnableC0230c> f475e = new LinkedHashMap();

    /* renamed from: f */
    final Map<Object, AbstractC0224a> f476f = new WeakHashMap();

    /* renamed from: g */
    final Map<Object, AbstractC0224a> f477g = new WeakHashMap();

    /* renamed from: h */
    final Set<Object> f478h = new LinkedHashSet();

    /* renamed from: m */
    final List<RunnableC0230c> f483m = new ArrayList(4);

    /* renamed from: com.squareup.picasso.i$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$a.class */
    class RunnableC0246a implements Runnable {
        RunnableC0246a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0245i.this.f484n.m665b();
        }
    }

    /* renamed from: com.squareup.picasso.i$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$b.class */
    private static class HandlerC0247b extends Handler {

        /* renamed from: a */
        private final C0245i f488a;

        /* renamed from: com.squareup.picasso.i$b$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$b$a.class */
        class RunnableC0248a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Message f489f;

            RunnableC0248a(HandlerC0247b bVar, Message message) {
                this.f489f = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unknown handler message received: " + this.f489f.what);
            }
        }

        HandlerC0247b(Looper looper, C0245i iVar) {
            super(looper);
            this.f488a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z = false;
            switch (message.what) {
                case 1:
                    this.f488a.m669x((AbstractC0224a) message.obj);
                    return;
                case 2:
                    this.f488a.m676q((AbstractC0224a) message.obj);
                    return;
                case 3:
                case 8:
                default:
                    Picasso.HANDLER.post(new RunnableC0248a(this, message));
                    return;
                case 4:
                    this.f488a.m675r((RunnableC0230c) message.obj);
                    return;
                case 5:
                    this.f488a.m670w((RunnableC0230c) message.obj);
                    return;
                case 6:
                    this.f488a.m674s((RunnableC0230c) message.obj, false);
                    return;
                case 7:
                    this.f488a.m677p();
                    return;
                case 9:
                    this.f488a.m673t((NetworkInfo) message.obj);
                    return;
                case 10:
                    C0245i iVar = this.f488a;
                    if (message.arg1 == 1) {
                        z = true;
                    }
                    iVar.m678o(z);
                    return;
                case 11:
                    this.f488a.m672u(message.obj);
                    return;
                case 12:
                    this.f488a.m671v(message.obj);
                    return;
            }
        }
    }

    /* renamed from: com.squareup.picasso.i$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$c.class */
    static class HandlerThreadC0249c extends HandlerThread {
        HandlerThreadC0249c() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* renamed from: com.squareup.picasso.i$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$d.class */
    static class C0250d extends BroadcastReceiver {

        /* renamed from: a */
        private final C0245i f490a;

        C0250d(C0245i iVar) {
            this.f490a = iVar;
        }

        /* renamed from: a */
        void m666a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f490a.f485o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f490a.f472b.registerReceiver(this, intentFilter);
        }

        /* renamed from: b */
        void m665b() {
            this.f490a.f472b.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if (intent.hasExtra("state")) {
                        this.f490a.m691b(intent.getBooleanExtra("state", false));
                    }
                } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    this.f490a.m687f(((ConnectivityManager) C0240f0.m701n(context, "connectivity")).getActiveNetworkInfo());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0245i(Context context, ExecutorService executorService, Handler handler, AbstractC0251j jVar, AbstractC0237d dVar, C0226a0 a0Var) {
        HandlerThreadC0249c cVar = new HandlerThreadC0249c();
        this.f471a = cVar;
        cVar.start();
        C0240f0.m707h(cVar.getLooper());
        this.f472b = context;
        this.f473c = executorService;
        this.f479i = new HandlerC0247b(cVar.getLooper(), this);
        this.f474d = jVar;
        this.f480j = handler;
        this.f481k = dVar;
        this.f482l = a0Var;
        this.f486p = C0240f0.m699p(context);
        this.f485o = C0240f0.m700o(context, "android.permission.ACCESS_NETWORK_STATE");
        C0250d dVar2 = new C0250d(this);
        this.f484n = dVar2;
        dVar2.m666a();
    }

    /* renamed from: a */
    private void m692a(RunnableC0230c cVar) {
        if (!cVar.m727u()) {
            Bitmap bitmap = cVar.f453r;
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
            this.f483m.add(cVar);
            if (!this.f479i.hasMessages(7)) {
                this.f479i.sendEmptyMessageDelayed(7, 200L);
            }
        }
    }

    /* renamed from: k */
    private void m682k() {
        if (!this.f476f.isEmpty()) {
            Iterator<AbstractC0224a> it = this.f476f.values().iterator();
            while (it.hasNext()) {
                AbstractC0224a next = it.next();
                it.remove();
                if (next.m769g().loggingEnabled) {
                    C0240f0.m696s("Dispatcher", "replaying", next.m767i().m647d());
                }
                m668y(next, false);
            }
        }
    }

    /* renamed from: l */
    private void m681l(List<RunnableC0230c> list) {
        if (!(list == null || list.isEmpty() || !list.get(0).m731q().loggingEnabled)) {
            StringBuilder sb = new StringBuilder();
            for (RunnableC0230c cVar : list) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(C0240f0.m705j(cVar));
            }
            C0240f0.m696s("Dispatcher", "delivered", sb.toString());
        }
    }

    /* renamed from: m */
    private void m680m(AbstractC0224a aVar) {
        Object k = aVar.m765k();
        if (k != null) {
            aVar.f404k = true;
            this.f476f.put(k, aVar);
        }
    }

    /* renamed from: n */
    private void m679n(RunnableC0230c cVar) {
        AbstractC0224a h = cVar.m740h();
        if (h != null) {
            m680m(h);
        }
        List<AbstractC0224a> i = cVar.m739i();
        if (i != null) {
            int size = i.size();
            for (int i2 = 0; i2 < size; i2++) {
                m680m(i.get(i2));
            }
        }
    }

    /* renamed from: b */
    void m691b(boolean z) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m690c(AbstractC0224a aVar) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m689d(RunnableC0230c cVar) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(4, cVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m688e(RunnableC0230c cVar) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    /* renamed from: f */
    void m687f(NetworkInfo networkInfo) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m686g(Object obj) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(11, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m685h(Object obj) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(12, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m684i(RunnableC0230c cVar) {
        Handler handler = this.f479i;
        handler.sendMessageDelayed(handler.obtainMessage(5, cVar), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m683j(AbstractC0224a aVar) {
        Handler handler = this.f479i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    /* renamed from: o */
    void m678o(boolean z) {
        this.f486p = z;
    }

    /* renamed from: p */
    void m677p() {
        ArrayList arrayList = new ArrayList(this.f483m);
        this.f483m.clear();
        Handler handler = this.f480j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        m681l(arrayList);
    }

    /* renamed from: q */
    void m676q(AbstractC0224a aVar) {
        String d = aVar.m772d();
        RunnableC0230c cVar = this.f475e.get(d);
        if (cVar != null) {
            cVar.m742f(aVar);
            if (cVar.m745c()) {
                this.f475e.remove(d);
                if (aVar.m769g().loggingEnabled) {
                    C0240f0.m696s("Dispatcher", "canceled", aVar.m767i().m647d());
                }
            }
        }
        if (this.f478h.contains(aVar.m766j())) {
            this.f477g.remove(aVar.m765k());
            if (aVar.m769g().loggingEnabled) {
                C0240f0.m695t("Dispatcher", "canceled", aVar.m767i().m647d(), "because paused request got canceled");
            }
        }
        AbstractC0224a remove = this.f476f.remove(aVar.m765k());
        if (remove != null && remove.m769g().loggingEnabled) {
            C0240f0.m695t("Dispatcher", "canceled", remove.m767i().m647d(), "from replaying");
        }
    }

    /* renamed from: r */
    void m675r(RunnableC0230c cVar) {
        if (EnumC0253p.shouldWriteToMemoryCache(cVar.m732p())) {
            this.f481k.m717b(cVar.m734n(), cVar.m729s());
        }
        this.f475e.remove(cVar.m734n());
        m692a(cVar);
        if (cVar.m731q().loggingEnabled) {
            C0240f0.m695t("Dispatcher", "batched", C0240f0.m705j(cVar), "for completion");
        }
    }

    /* renamed from: s */
    void m674s(RunnableC0230c cVar, boolean z) {
        if (cVar.m731q().loggingEnabled) {
            String j = C0240f0.m705j(cVar);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z ? " (will replay)" : "");
            C0240f0.m695t("Dispatcher", "batched", j, sb.toString());
        }
        this.f475e.remove(cVar.m734n());
        m692a(cVar);
    }

    /* renamed from: t */
    void m673t(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f473c;
        if (executorService instanceof C0256u) {
            ((C0256u) executorService).m653a(networkInfo);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            m682k();
        }
    }

    /* renamed from: u */
    void m672u(Object obj) {
        if (this.f478h.add(obj)) {
            Iterator<RunnableC0230c> it = this.f475e.values().iterator();
            while (it.hasNext()) {
                RunnableC0230c next = it.next();
                boolean z = next.m731q().loggingEnabled;
                AbstractC0224a h = next.m740h();
                List<AbstractC0224a> i = next.m739i();
                boolean z2 = i != null && !i.isEmpty();
                if (h != null || z2) {
                    if (h != null && h.m766j().equals(obj)) {
                        next.m742f(h);
                        this.f477g.put(h.m765k(), h);
                        if (z) {
                            C0240f0.m695t("Dispatcher", "paused", h.f395b.m647d(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = i.size() - 1; size >= 0; size--) {
                            AbstractC0224a aVar = i.get(size);
                            if (aVar.m766j().equals(obj)) {
                                next.m742f(aVar);
                                this.f477g.put(aVar.m765k(), aVar);
                                if (z) {
                                    C0240f0.m695t("Dispatcher", "paused", aVar.f395b.m647d(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.m745c()) {
                        it.remove();
                        if (z) {
                            C0240f0.m695t("Dispatcher", "canceled", C0240f0.m705j(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    /* renamed from: v */
    void m671v(Object obj) {
        if (this.f478h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<AbstractC0224a> it = this.f477g.values().iterator();
            while (it.hasNext()) {
                AbstractC0224a next = it.next();
                if (next.m766j().equals(obj)) {
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(next);
                    it.remove();
                    arrayList = arrayList2;
                }
            }
            if (arrayList != null) {
                Handler handler = this.f480j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    /* renamed from: w */
    void m670w(RunnableC0230c cVar) {
        if (!cVar.m727u()) {
            if (this.f473c.isShutdown()) {
                m674s(cVar, false);
                return;
            }
            NetworkInfo networkInfo = null;
            if (this.f485o) {
                networkInfo = ((ConnectivityManager) C0240f0.m701n(this.f472b, "connectivity")).getActiveNetworkInfo();
            }
            if (cVar.m725w(this.f486p, networkInfo)) {
                if (cVar.m731q().loggingEnabled) {
                    C0240f0.m696s("Dispatcher", "retrying", C0240f0.m705j(cVar));
                }
                if (cVar.m737k() instanceof r$a) {
                    cVar.f449n |= EnumC0254q.NO_CACHE.index;
                }
                cVar.f454s = this.f473c.submit(cVar);
                return;
            }
            boolean z = false;
            if (this.f485o) {
                z = false;
                if (cVar.m724x()) {
                    z = true;
                }
            }
            m674s(cVar, z);
            if (z) {
                m679n(cVar);
            }
        }
    }

    /* renamed from: x */
    void m669x(AbstractC0224a aVar) {
        m668y(aVar, true);
    }

    /* renamed from: y */
    void m668y(AbstractC0224a aVar, boolean z) {
        if (this.f478h.contains(aVar.m766j())) {
            this.f477g.put(aVar.m765k(), aVar);
            if (aVar.m769g().loggingEnabled) {
                String d = aVar.f395b.m647d();
                C0240f0.m695t("Dispatcher", "paused", d, "because tag '" + aVar.m766j() + "' is paused");
                return;
            }
            return;
        }
        RunnableC0230c cVar = this.f475e.get(aVar.m772d());
        if (cVar != null) {
            cVar.m746b(aVar);
        } else if (!this.f473c.isShutdown()) {
            RunnableC0230c g = RunnableC0230c.m741g(aVar.m769g(), this, this.f481k, this.f482l, aVar);
            g.f454s = this.f473c.submit(g);
            this.f475e.put(aVar.m772d(), g);
            if (z) {
                this.f476f.remove(aVar.m765k());
            }
            if (aVar.m769g().loggingEnabled) {
                C0240f0.m696s("Dispatcher", "enqueued", aVar.f395b.m647d());
            }
        } else if (aVar.m769g().loggingEnabled) {
            C0240f0.m695t("Dispatcher", "ignored", aVar.f395b.m647d(), "because shut down");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public void m667z() {
        ExecutorService executorService = this.f473c;
        if (executorService instanceof C0256u) {
            executorService.shutdown();
        }
        this.f474d.shutdown();
        this.f471a.quit();
        Picasso.HANDLER.post(new RunnableC0246a());
    }
}
