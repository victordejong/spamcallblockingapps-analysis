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
/* renamed from: com.squareup.picasso.i */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i.class */
public class C1913i {

    /* renamed from: a */
    final HandlerThreadC1917c f5150a;

    /* renamed from: b */
    final Context f5151b;

    /* renamed from: c */
    final ExecutorService f5152c;

    /* renamed from: d */
    final AbstractC1919j f5153d;

    /* renamed from: i */
    final Handler f5158i;

    /* renamed from: j */
    final Handler f5159j;

    /* renamed from: k */
    final AbstractC1905d f5160k;

    /* renamed from: l */
    final C1894a0 f5161l;

    /* renamed from: n */
    final C1918d f5163n;

    /* renamed from: o */
    final boolean f5164o;

    /* renamed from: p */
    boolean f5165p;

    /* renamed from: e */
    final Map<String, RunnableC1898c> f5154e = new LinkedHashMap();

    /* renamed from: f */
    final Map<Object, AbstractC1892a> f5155f = new WeakHashMap();

    /* renamed from: g */
    final Map<Object, AbstractC1892a> f5156g = new WeakHashMap();

    /* renamed from: h */
    final Set<Object> f5157h = new LinkedHashSet();

    /* renamed from: m */
    final List<RunnableC1898c> f5162m = new ArrayList(4);

    /* renamed from: com.squareup.picasso.i$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$a.class */
    public class RunnableC1914a implements Runnable {
        RunnableC1914a() {
            C1913i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1913i.this.f5163n.m665b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.squareup.picasso.i$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$b.class */
    public static class HandlerC1915b extends Handler {

        /* renamed from: a */
        private final C1913i f5167a;

        /* renamed from: com.squareup.picasso.i$b$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$b$a.class */
        class RunnableC1916a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Message f5168f;

            RunnableC1916a(HandlerC1915b handlerC1915b, Message message) {
                this.f5168f = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unknown handler message received: " + this.f5168f.what);
            }
        }

        HandlerC1915b(Looper looper, C1913i c1913i) {
            super(looper);
            this.f5167a = c1913i;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z = false;
            switch (message.what) {
                case 1:
                    this.f5167a.m669x((AbstractC1892a) message.obj);
                    return;
                case 2:
                    this.f5167a.m676q((AbstractC1892a) message.obj);
                    return;
                case 3:
                case 8:
                default:
                    Picasso.HANDLER.post(new RunnableC1916a(this, message));
                    return;
                case 4:
                    this.f5167a.m675r((RunnableC1898c) message.obj);
                    return;
                case 5:
                    this.f5167a.m670w((RunnableC1898c) message.obj);
                    return;
                case 6:
                    this.f5167a.m674s((RunnableC1898c) message.obj, false);
                    return;
                case 7:
                    this.f5167a.m677p();
                    return;
                case 9:
                    this.f5167a.m673t((NetworkInfo) message.obj);
                    return;
                case 10:
                    C1913i c1913i = this.f5167a;
                    if (message.arg1 == 1) {
                        z = true;
                    }
                    c1913i.m678o(z);
                    return;
                case 11:
                    this.f5167a.m672u(message.obj);
                    return;
                case 12:
                    this.f5167a.m671v(message.obj);
                    return;
            }
        }
    }

    /* renamed from: com.squareup.picasso.i$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$c.class */
    public static class HandlerThreadC1917c extends HandlerThread {
        HandlerThreadC1917c() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.i$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$d.class */
    public static class C1918d extends BroadcastReceiver {

        /* renamed from: a */
        private final C1913i f5169a;

        C1918d(C1913i c1913i) {
            this.f5169a = c1913i;
        }

        /* renamed from: a */
        void m666a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f5169a.f5164o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f5169a.f5151b.registerReceiver(this, intentFilter);
        }

        /* renamed from: b */
        void m665b() {
            this.f5169a.f5151b.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (!intent.hasExtra("state")) {
                    return;
                }
                this.f5169a.m691b(intent.getBooleanExtra("state", false));
            } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            } else {
                this.f5169a.m687f(((ConnectivityManager) C1908f0.m701n(context, "connectivity")).getActiveNetworkInfo());
            }
        }
    }

    public C1913i(Context context, ExecutorService executorService, Handler handler, AbstractC1919j abstractC1919j, AbstractC1905d abstractC1905d, C1894a0 c1894a0) {
        HandlerThreadC1917c handlerThreadC1917c = new HandlerThreadC1917c();
        this.f5150a = handlerThreadC1917c;
        handlerThreadC1917c.start();
        C1908f0.m707h(handlerThreadC1917c.getLooper());
        this.f5151b = context;
        this.f5152c = executorService;
        this.f5158i = new HandlerC1915b(handlerThreadC1917c.getLooper(), this);
        this.f5153d = abstractC1919j;
        this.f5159j = handler;
        this.f5160k = abstractC1905d;
        this.f5161l = c1894a0;
        this.f5165p = C1908f0.m699p(context);
        this.f5164o = C1908f0.m700o(context, "android.permission.ACCESS_NETWORK_STATE");
        C1918d c1918d = new C1918d(this);
        this.f5163n = c1918d;
        c1918d.m666a();
    }

    /* renamed from: a */
    private void m692a(RunnableC1898c runnableC1898c) {
        if (runnableC1898c.m727u()) {
            return;
        }
        Bitmap bitmap = runnableC1898c.f5132r;
        if (bitmap != null) {
            bitmap.prepareToDraw();
        }
        this.f5162m.add(runnableC1898c);
        if (this.f5158i.hasMessages(7)) {
            return;
        }
        this.f5158i.sendEmptyMessageDelayed(7, 200L);
    }

    /* renamed from: k */
    private void m682k() {
        if (!this.f5155f.isEmpty()) {
            Iterator<AbstractC1892a> it = this.f5155f.values().iterator();
            while (it.hasNext()) {
                AbstractC1892a next = it.next();
                it.remove();
                if (next.m769g().loggingEnabled) {
                    C1908f0.m696s("Dispatcher", "replaying", next.m767i().m647d());
                }
                m668y(next, false);
            }
        }
    }

    /* renamed from: l */
    private void m681l(List<RunnableC1898c> list) {
        if (list == null || list.isEmpty() || !list.get(0).m731q().loggingEnabled) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (RunnableC1898c runnableC1898c : list) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(C1908f0.m705j(runnableC1898c));
        }
        C1908f0.m696s("Dispatcher", "delivered", sb.toString());
    }

    /* renamed from: m */
    private void m680m(AbstractC1892a abstractC1892a) {
        Object m765k = abstractC1892a.m765k();
        if (m765k != null) {
            abstractC1892a.f5083k = true;
            this.f5155f.put(m765k, abstractC1892a);
        }
    }

    /* renamed from: n */
    private void m679n(RunnableC1898c runnableC1898c) {
        AbstractC1892a m740h = runnableC1898c.m740h();
        if (m740h != null) {
            m680m(m740h);
        }
        List<AbstractC1892a> m739i = runnableC1898c.m739i();
        if (m739i != null) {
            int size = m739i.size();
            for (int i = 0; i < size; i++) {
                m680m(m739i.get(i));
            }
        }
    }

    /* renamed from: b */
    void m691b(boolean z) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    /* renamed from: c */
    public void m690c(AbstractC1892a abstractC1892a) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(2, abstractC1892a));
    }

    /* renamed from: d */
    public void m689d(RunnableC1898c runnableC1898c) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(4, runnableC1898c));
    }

    /* renamed from: e */
    public void m688e(RunnableC1898c runnableC1898c) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(6, runnableC1898c));
    }

    /* renamed from: f */
    void m687f(NetworkInfo networkInfo) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    /* renamed from: g */
    public void m686g(Object obj) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(11, obj));
    }

    /* renamed from: h */
    public void m685h(Object obj) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(12, obj));
    }

    /* renamed from: i */
    public void m684i(RunnableC1898c runnableC1898c) {
        Handler handler = this.f5158i;
        handler.sendMessageDelayed(handler.obtainMessage(5, runnableC1898c), 500L);
    }

    /* renamed from: j */
    public void m683j(AbstractC1892a abstractC1892a) {
        Handler handler = this.f5158i;
        handler.sendMessage(handler.obtainMessage(1, abstractC1892a));
    }

    /* renamed from: o */
    void m678o(boolean z) {
        this.f5165p = z;
    }

    /* renamed from: p */
    void m677p() {
        ArrayList arrayList = new ArrayList(this.f5162m);
        this.f5162m.clear();
        Handler handler = this.f5159j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        m681l(arrayList);
    }

    /* renamed from: q */
    void m676q(AbstractC1892a abstractC1892a) {
        String m772d = abstractC1892a.m772d();
        RunnableC1898c runnableC1898c = this.f5154e.get(m772d);
        if (runnableC1898c != null) {
            runnableC1898c.m742f(abstractC1892a);
            if (runnableC1898c.m745c()) {
                this.f5154e.remove(m772d);
                if (abstractC1892a.m769g().loggingEnabled) {
                    C1908f0.m696s("Dispatcher", "canceled", abstractC1892a.m767i().m647d());
                }
            }
        }
        if (this.f5157h.contains(abstractC1892a.m766j())) {
            this.f5156g.remove(abstractC1892a.m765k());
            if (abstractC1892a.m769g().loggingEnabled) {
                C1908f0.m695t("Dispatcher", "canceled", abstractC1892a.m767i().m647d(), "because paused request got canceled");
            }
        }
        AbstractC1892a remove = this.f5155f.remove(abstractC1892a.m765k());
        if (remove == null || !remove.m769g().loggingEnabled) {
            return;
        }
        C1908f0.m695t("Dispatcher", "canceled", remove.m767i().m647d(), "from replaying");
    }

    /* renamed from: r */
    void m675r(RunnableC1898c runnableC1898c) {
        if (EnumC1921p.shouldWriteToMemoryCache(runnableC1898c.m732p())) {
            this.f5160k.m717b(runnableC1898c.m734n(), runnableC1898c.m729s());
        }
        this.f5154e.remove(runnableC1898c.m734n());
        m692a(runnableC1898c);
        if (runnableC1898c.m731q().loggingEnabled) {
            C1908f0.m695t("Dispatcher", "batched", C1908f0.m705j(runnableC1898c), "for completion");
        }
    }

    /* renamed from: s */
    void m674s(RunnableC1898c runnableC1898c, boolean z) {
        if (runnableC1898c.m731q().loggingEnabled) {
            String m705j = C1908f0.m705j(runnableC1898c);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z ? " (will replay)" : "");
            C1908f0.m695t("Dispatcher", "batched", m705j, sb.toString());
        }
        this.f5154e.remove(runnableC1898c.m734n());
        m692a(runnableC1898c);
    }

    /* renamed from: t */
    void m673t(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f5152c;
        if (executorService instanceof C1924u) {
            ((C1924u) executorService).m653a(networkInfo);
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            return;
        }
        m682k();
    }

    /* renamed from: u */
    void m672u(Object obj) {
        if (!this.f5157h.add(obj)) {
            return;
        }
        Iterator<RunnableC1898c> it = this.f5154e.values().iterator();
        while (it.hasNext()) {
            RunnableC1898c next = it.next();
            boolean z = next.m731q().loggingEnabled;
            AbstractC1892a m740h = next.m740h();
            List<AbstractC1892a> m739i = next.m739i();
            boolean z2 = m739i != null && !m739i.isEmpty();
            if (m740h != null || z2) {
                if (m740h != null && m740h.m766j().equals(obj)) {
                    next.m742f(m740h);
                    this.f5156g.put(m740h.m765k(), m740h);
                    if (z) {
                        C1908f0.m695t("Dispatcher", "paused", m740h.f5074b.m647d(), "because tag '" + obj + "' was paused");
                    }
                }
                if (z2) {
                    for (int size = m739i.size() - 1; size >= 0; size--) {
                        AbstractC1892a abstractC1892a = m739i.get(size);
                        if (abstractC1892a.m766j().equals(obj)) {
                            next.m742f(abstractC1892a);
                            this.f5156g.put(abstractC1892a.m765k(), abstractC1892a);
                            if (z) {
                                C1908f0.m695t("Dispatcher", "paused", abstractC1892a.f5074b.m647d(), "because tag '" + obj + "' was paused");
                            }
                        }
                    }
                }
                if (next.m745c()) {
                    it.remove();
                    if (z) {
                        C1908f0.m695t("Dispatcher", "canceled", C1908f0.m705j(next), "all actions paused");
                    }
                }
            }
        }
    }

    /* renamed from: v */
    void m671v(Object obj) {
        if (!this.f5157h.remove(obj)) {
            return;
        }
        ArrayList arrayList = null;
        Iterator<AbstractC1892a> it = this.f5156g.values().iterator();
        while (it.hasNext()) {
            AbstractC1892a next = it.next();
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
        if (arrayList == null) {
            return;
        }
        Handler handler = this.f5159j;
        handler.sendMessage(handler.obtainMessage(13, arrayList));
    }

    /* renamed from: w */
    void m670w(RunnableC1898c runnableC1898c) {
        if (runnableC1898c.m727u()) {
            return;
        }
        if (this.f5152c.isShutdown()) {
            m674s(runnableC1898c, false);
            return;
        }
        NetworkInfo networkInfo = null;
        if (this.f5164o) {
            networkInfo = ((ConnectivityManager) C1908f0.m701n(this.f5151b, "connectivity")).getActiveNetworkInfo();
        }
        if (runnableC1898c.m725w(this.f5165p, networkInfo)) {
            if (runnableC1898c.m731q().loggingEnabled) {
                C1908f0.m696s("Dispatcher", "retrying", C1908f0.m705j(runnableC1898c));
            }
            if (runnableC1898c.m737k() instanceof r$a) {
                runnableC1898c.f5128n |= EnumC1922q.NO_CACHE.index;
            }
            runnableC1898c.f5133s = this.f5152c.submit(runnableC1898c);
            return;
        }
        boolean z = false;
        if (this.f5164o) {
            z = false;
            if (runnableC1898c.m724x()) {
                z = true;
            }
        }
        m674s(runnableC1898c, z);
        if (!z) {
            return;
        }
        m679n(runnableC1898c);
    }

    /* renamed from: x */
    void m669x(AbstractC1892a abstractC1892a) {
        m668y(abstractC1892a, true);
    }

    /* renamed from: y */
    void m668y(AbstractC1892a abstractC1892a, boolean z) {
        if (this.f5157h.contains(abstractC1892a.m766j())) {
            this.f5156g.put(abstractC1892a.m765k(), abstractC1892a);
            if (!abstractC1892a.m769g().loggingEnabled) {
                return;
            }
            String m647d = abstractC1892a.f5074b.m647d();
            C1908f0.m695t("Dispatcher", "paused", m647d, "because tag '" + abstractC1892a.m766j() + "' is paused");
            return;
        }
        RunnableC1898c runnableC1898c = this.f5154e.get(abstractC1892a.m772d());
        if (runnableC1898c != null) {
            runnableC1898c.m746b(abstractC1892a);
        } else if (this.f5152c.isShutdown()) {
            if (!abstractC1892a.m769g().loggingEnabled) {
                return;
            }
            C1908f0.m695t("Dispatcher", "ignored", abstractC1892a.f5074b.m647d(), "because shut down");
        } else {
            RunnableC1898c m741g = RunnableC1898c.m741g(abstractC1892a.m769g(), this, this.f5160k, this.f5161l, abstractC1892a);
            m741g.f5133s = this.f5152c.submit(m741g);
            this.f5154e.put(abstractC1892a.m772d(), m741g);
            if (z) {
                this.f5155f.remove(abstractC1892a.m765k());
            }
            if (!abstractC1892a.m769g().loggingEnabled) {
                return;
            }
            C1908f0.m696s("Dispatcher", "enqueued", abstractC1892a.f5074b.m647d());
        }
    }

    /* renamed from: z */
    public void m667z() {
        ExecutorService executorService = this.f5152c;
        if (executorService instanceof C1924u) {
            executorService.shutdown();
        }
        this.f5153d.shutdown();
        this.f5150a.quit();
        Picasso.HANDLER.post(new RunnableC1914a());
    }
}
