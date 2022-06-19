package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.squareup.picasso.AbstractC1892a;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso.class */
public class Picasso {
    static final String TAG = "Picasso";
    final AbstractC1905d cache;
    private final C1886c cleanupThread;
    final Context context;
    final Bitmap.Config defaultBitmapConfig;
    final C1913i dispatcher;
    boolean indicatorsEnabled;
    private final AbstractC1888d listener;
    volatile boolean loggingEnabled;
    final ReferenceQueue<Object> referenceQueue;
    private final List<AbstractC1930y> requestHandlers;
    private final AbstractC1891g requestTransformer;
    boolean shutdown;
    final C1894a0 stats;
    final Map<Object, AbstractC1892a> targetToAction;
    final Map<ImageView, ViewTreeObserver$OnPreDrawListenerC1912h> targetToDeferredRequestCreator;
    static final Handler HANDLER = new HandlerC1884a(Looper.getMainLooper());
    static volatile Picasso singleton = null;

    /* renamed from: com.squareup.picasso.Picasso$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$a.class */
    static final class HandlerC1884a extends Handler {
        HandlerC1884a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                AbstractC1892a abstractC1892a = (AbstractC1892a) message.obj;
                if (abstractC1892a.m769g().loggingEnabled) {
                    C1908f0.m695t("Main", "canceled", abstractC1892a.f5074b.m647d(), "target got garbage collected");
                }
                abstractC1892a.f5073a.cancelExistingRequest(abstractC1892a.m765k());
                return;
            }
            if (i == 8) {
                List list = (List) message.obj;
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    RunnableC1898c runnableC1898c = (RunnableC1898c) list.get(i2);
                    runnableC1898c.f5121g.complete(runnableC1898c);
                }
            } else if (i != 13) {
                throw new AssertionError("Unknown handler message received: " + message.what);
            } else {
                List list2 = (List) message.obj;
                int size2 = list2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC1892a abstractC1892a2 = (AbstractC1892a) list2.get(i3);
                    abstractC1892a2.f5073a.resumeAction(abstractC1892a2);
                }
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$b.class */
    public static class C1885b {

        /* renamed from: a */
        private final Context f5058a;

        /* renamed from: b */
        private AbstractC1919j f5059b;

        /* renamed from: c */
        private ExecutorService f5060c;

        /* renamed from: d */
        private AbstractC1905d f5061d;

        /* renamed from: e */
        private AbstractC1888d f5062e;

        /* renamed from: f */
        private AbstractC1891g f5063f;

        /* renamed from: g */
        private List<AbstractC1930y> f5064g;

        /* renamed from: h */
        private Bitmap.Config f5065h;

        /* renamed from: i */
        private boolean f5066i;

        /* renamed from: j */
        private boolean f5067j;

        public C1885b(Context context) {
            if (context != null) {
                this.f5058a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        /* renamed from: a */
        public Picasso m783a() {
            Context context = this.f5058a;
            if (this.f5059b == null) {
                this.f5059b = new s(context);
            }
            if (this.f5061d == null) {
                this.f5061d = new m(context);
            }
            if (this.f5060c == null) {
                this.f5060c = new C1924u();
            }
            if (this.f5063f == null) {
                this.f5063f = AbstractC1891g.f5071a;
            }
            C1894a0 c1894a0 = new C1894a0(this.f5061d);
            return new Picasso(context, new C1913i(context, this.f5060c, Picasso.HANDLER, this.f5059b, this.f5061d, c1894a0), this.f5061d, this.f5062e, this.f5063f, this.f5064g, c1894a0, this.f5065h, this.f5066i, this.f5067j);
        }

        /* renamed from: b */
        public C1885b m782b(Bitmap.Config config) {
            if (config != null) {
                this.f5065h = config;
                return this;
            }
            throw new IllegalArgumentException("Bitmap config must not be null.");
        }

        /* renamed from: c */
        public C1885b m781c(AbstractC1919j abstractC1919j) {
            if (abstractC1919j != null) {
                if (this.f5059b != null) {
                    throw new IllegalStateException("Downloader already set.");
                }
                this.f5059b = abstractC1919j;
                return this;
            }
            throw new IllegalArgumentException("Downloader must not be null.");
        }

        /* renamed from: d */
        public C1885b m780d(ExecutorService executorService) {
            if (executorService != null) {
                if (this.f5060c != null) {
                    throw new IllegalStateException("Executor service already set.");
                }
                this.f5060c = executorService;
                return this;
            }
            throw new IllegalArgumentException("Executor service must not be null.");
        }

        /* renamed from: e */
        public C1885b m779e(AbstractC1888d abstractC1888d) {
            if (abstractC1888d != null) {
                if (this.f5062e != null) {
                    throw new IllegalStateException("Listener already set.");
                }
                this.f5062e = abstractC1888d;
                return this;
            }
            throw new IllegalArgumentException("Listener must not be null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.squareup.picasso.Picasso$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$c.class */
    public static class C1886c extends Thread {

        /* renamed from: f */
        private final ReferenceQueue<Object> f5068f;

        /* renamed from: g */
        private final Handler f5069g;

        /* renamed from: com.squareup.picasso.Picasso$c$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$c$a.class */
        class RunnableC1887a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Exception f5070f;

            RunnableC1887a(C1886c c1886c, Exception exc) {
                this.f5070f = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f5070f);
            }
        }

        C1886c(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f5068f = referenceQueue;
            this.f5069g = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        /* renamed from: a */
        void m778a() {
            interrupt();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    AbstractC1892a.C1893a c1893a = (AbstractC1892a.C1893a) this.f5068f.remove(1000L);
                    Message obtainMessage = this.f5069g.obtainMessage();
                    if (c1893a != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = c1893a.f5085a;
                        this.f5069g.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.f5069g.post(new RunnableC1887a(this, e2));
                    return;
                }
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$d.class */
    public interface AbstractC1888d {
        /* renamed from: a */
        void m777a(Picasso picasso, Uri uri, Exception exc);
    }

    /* renamed from: com.squareup.picasso.Picasso$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$e.class */
    public enum EnumC1889e {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        final int debugColor;

        EnumC1889e(int i) {
            this.debugColor = i;
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$f.class */
    public enum EnumC1890f {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: com.squareup.picasso.Picasso$g */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$g.class */
    public interface AbstractC1891g {

        /* renamed from: a */
        public static final AbstractC1891g f5071a = new a();

        /* renamed from: a */
        C1926w m776a(C1926w c1926w);
    }

    Picasso(Context context, C1913i c1913i, AbstractC1905d abstractC1905d, AbstractC1888d abstractC1888d, AbstractC1891g abstractC1891g, List<AbstractC1930y> list, C1894a0 c1894a0, Bitmap.Config config, boolean z, boolean z2) {
        this.context = context;
        this.dispatcher = c1913i;
        this.cache = abstractC1905d;
        this.listener = abstractC1888d;
        this.requestTransformer = abstractC1891g;
        this.defaultBitmapConfig = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new z(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new f(context));
        arrayList.add(new o(context));
        arrayList.add(new g(context));
        arrayList.add(new b(context));
        arrayList.add(new k(context));
        arrayList.add(new r(c1913i.f5153d, c1894a0));
        this.requestHandlers = Collections.unmodifiableList(arrayList);
        this.stats = c1894a0;
        this.targetToAction = new WeakHashMap();
        this.targetToDeferredRequestCreator = new WeakHashMap();
        this.indicatorsEnabled = z;
        this.loggingEnabled = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.referenceQueue = referenceQueue;
        C1886c c1886c = new C1886c(referenceQueue, HANDLER);
        this.cleanupThread = c1886c;
        c1886c.start();
    }

    private void deliverAction(Bitmap bitmap, EnumC1889e enumC1889e, AbstractC1892a abstractC1892a, Exception exc) {
        if (abstractC1892a.m764l()) {
            return;
        }
        if (!abstractC1892a.m763m()) {
            this.targetToAction.remove(abstractC1892a.m765k());
        }
        if (bitmap == null) {
            abstractC1892a.m773c(exc);
            if (!this.loggingEnabled) {
                return;
            }
            C1908f0.m695t("Main", "errored", abstractC1892a.f5074b.m647d(), exc.getMessage());
        } else if (enumC1889e == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        } else {
            abstractC1892a.m774b(bitmap, enumC1889e);
            if (!this.loggingEnabled) {
                return;
            }
            String m647d = abstractC1892a.f5074b.m647d();
            C1908f0.m695t("Main", "completed", m647d, "from " + enumC1889e);
        }
    }

    public static Picasso get() {
        if (singleton == null) {
            synchronized (Picasso.class) {
                try {
                    if (singleton == null) {
                        Context context = PicassoProvider.f5072f;
                        if (context == null) {
                            throw new IllegalStateException("context == null");
                        }
                        singleton = new C1885b(context).m783a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return singleton;
    }

    public static void setSingletonInstance(Picasso picasso) {
        if (picasso != null) {
            synchronized (Picasso.class) {
                try {
                    if (singleton != null) {
                        throw new IllegalStateException("Singleton instance already exists.");
                    }
                    singleton = picasso;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new IllegalArgumentException("Picasso must not be null.");
    }

    public boolean areIndicatorsEnabled() {
        return this.indicatorsEnabled;
    }

    void cancelExistingRequest(Object obj) {
        C1908f0.m712c();
        AbstractC1892a remove = this.targetToAction.remove(obj);
        if (remove != null) {
            remove.m775a();
            this.dispatcher.m690c(remove);
        }
        if (obj instanceof ImageView) {
            ViewTreeObserver$OnPreDrawListenerC1912h remove2 = this.targetToDeferredRequestCreator.remove((ImageView) obj);
            if (remove2 == null) {
                return;
            }
            remove2.m694a();
        }
    }

    public void cancelRequest(ImageView imageView) {
        if (imageView != null) {
            cancelExistingRequest(imageView);
            return;
        }
        throw new IllegalArgumentException("view cannot be null.");
    }

    public void cancelRequest(RemoteViews remoteViews, int i) {
        if (remoteViews != null) {
            cancelExistingRequest(new Object(remoteViews, i) { // from class: com.squareup.picasso.v$b

                /* renamed from: a */
                final RemoteViews f5190a;

                /* renamed from: b */
                final int f5191b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5190a = remoteViews;
                    this.f5191b = i;
                }

                public boolean equals(Object obj) {
                    boolean z = true;
                    if (this == obj) {
                        return true;
                    }
                    if (obj == null || v$b.class != obj.getClass()) {
                        return false;
                    }
                    v$b v_b = (v$b) obj;
                    if (this.f5191b != v_b.f5191b || !this.f5190a.equals(v_b.f5190a)) {
                        z = false;
                    }
                    return z;
                }

                public int hashCode() {
                    return (this.f5190a.hashCode() * 31) + this.f5191b;
                }
            });
            return;
        }
        throw new IllegalArgumentException("remoteViews cannot be null.");
    }

    public void cancelRequest(AbstractC1904c0 abstractC1904c0) {
        if (abstractC1904c0 != null) {
            cancelExistingRequest(abstractC1904c0);
            return;
        }
        throw new IllegalArgumentException("target cannot be null.");
    }

    public void cancelTag(Object obj) {
        C1908f0.m712c();
        if (obj != null) {
            ArrayList arrayList = new ArrayList(this.targetToAction.values());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC1892a abstractC1892a = (AbstractC1892a) arrayList.get(i);
                if (obj.equals(abstractC1892a.m766j())) {
                    cancelExistingRequest(abstractC1892a.m765k());
                }
            }
            ArrayList arrayList2 = new ArrayList(this.targetToDeferredRequestCreator.values());
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ViewTreeObserver$OnPreDrawListenerC1912h viewTreeObserver$OnPreDrawListenerC1912h = (ViewTreeObserver$OnPreDrawListenerC1912h) arrayList2.get(i2);
                if (obj.equals(viewTreeObserver$OnPreDrawListenerC1912h.m693b())) {
                    viewTreeObserver$OnPreDrawListenerC1912h.m694a();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Cannot cancel requests with null tag.");
    }

    void complete(RunnableC1898c runnableC1898c) {
        AbstractC1892a m740h = runnableC1898c.m740h();
        List<AbstractC1892a> m739i = runnableC1898c.m739i();
        boolean z = m739i != null && !m739i.isEmpty();
        boolean z2 = true;
        if (m740h == null) {
            z2 = z;
        }
        if (!z2) {
            return;
        }
        Uri uri = runnableC1898c.m738j().f5196d;
        Exception m737k = runnableC1898c.m737k();
        Bitmap m729s = runnableC1898c.m729s();
        EnumC1889e m733o = runnableC1898c.m733o();
        if (m740h != null) {
            deliverAction(m729s, m733o, m740h, m737k);
        }
        if (z) {
            int size = m739i.size();
            for (int i = 0; i < size; i++) {
                deliverAction(m729s, m733o, m739i.get(i), m737k);
            }
        }
        AbstractC1888d abstractC1888d = this.listener;
        if (abstractC1888d == null || m737k == null) {
            return;
        }
        abstractC1888d.m777a(this, uri, m737k);
    }

    public void defer(ImageView imageView, ViewTreeObserver$OnPreDrawListenerC1912h viewTreeObserver$OnPreDrawListenerC1912h) {
        if (this.targetToDeferredRequestCreator.containsKey(imageView)) {
            cancelExistingRequest(imageView);
        }
        this.targetToDeferredRequestCreator.put(imageView, viewTreeObserver$OnPreDrawListenerC1912h);
    }

    public void enqueueAndSubmit(AbstractC1892a abstractC1892a) {
        Object m765k = abstractC1892a.m765k();
        if (m765k != null && this.targetToAction.get(m765k) != abstractC1892a) {
            cancelExistingRequest(m765k);
            this.targetToAction.put(m765k, abstractC1892a);
        }
        submit(abstractC1892a);
    }

    public List<AbstractC1930y> getRequestHandlers() {
        return this.requestHandlers;
    }

    public C1897b0 getSnapshot() {
        return this.stats.m762a();
    }

    public void invalidate(Uri uri) {
        if (uri != null) {
            this.cache.m716c(uri.toString());
        }
    }

    public void invalidate(File file) {
        if (file != null) {
            invalidate(Uri.fromFile(file));
            return;
        }
        throw new IllegalArgumentException("file == null");
    }

    public void invalidate(String str) {
        if (str != null) {
            invalidate(Uri.parse(str));
        }
    }

    public boolean isLoggingEnabled() {
        return this.loggingEnabled;
    }

    public C1929x load(int i) {
        if (i != 0) {
            return new C1929x(this, null, i);
        }
        throw new IllegalArgumentException("Resource ID must not be zero.");
    }

    public C1929x load(Uri uri) {
        return new C1929x(this, uri, 0);
    }

    public C1929x load(File file) {
        return file == null ? new C1929x(this, null, 0) : load(Uri.fromFile(file));
    }

    public C1929x load(String str) {
        if (str == null) {
            return new C1929x(this, null, 0);
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Path must not be empty.");
        }
        return load(Uri.parse(str));
    }

    public void pauseTag(Object obj) {
        if (obj != null) {
            this.dispatcher.m686g(obj);
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    public Bitmap quickMemoryCacheCheck(String str) {
        Bitmap bitmap = this.cache.get(str);
        if (bitmap != null) {
            this.stats.m759d();
        } else {
            this.stats.m758e();
        }
        return bitmap;
    }

    void resumeAction(AbstractC1892a abstractC1892a) {
        Bitmap quickMemoryCacheCheck = EnumC1921p.shouldReadFromMemoryCache(abstractC1892a.f5077e) ? quickMemoryCacheCheck(abstractC1892a.m772d()) : null;
        if (quickMemoryCacheCheck == null) {
            enqueueAndSubmit(abstractC1892a);
            if (!this.loggingEnabled) {
                return;
            }
            C1908f0.m696s("Main", "resumed", abstractC1892a.f5074b.m647d());
            return;
        }
        EnumC1889e enumC1889e = EnumC1889e.MEMORY;
        deliverAction(quickMemoryCacheCheck, enumC1889e, abstractC1892a, null);
        if (!this.loggingEnabled) {
            return;
        }
        String m647d = abstractC1892a.f5074b.m647d();
        C1908f0.m695t("Main", "completed", m647d, "from " + enumC1889e);
    }

    public void resumeTag(Object obj) {
        if (obj != null) {
            this.dispatcher.m685h(obj);
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    public void setIndicatorsEnabled(boolean z) {
        this.indicatorsEnabled = z;
    }

    public void setLoggingEnabled(boolean z) {
        this.loggingEnabled = z;
    }

    public void shutdown() {
        if (this != singleton) {
            if (this.shutdown) {
                return;
            }
            this.cache.clear();
            this.cleanupThread.m778a();
            this.stats.m749n();
            this.dispatcher.m667z();
            for (ViewTreeObserver$OnPreDrawListenerC1912h viewTreeObserver$OnPreDrawListenerC1912h : this.targetToDeferredRequestCreator.values()) {
                viewTreeObserver$OnPreDrawListenerC1912h.m694a();
            }
            this.targetToDeferredRequestCreator.clear();
            this.shutdown = true;
            return;
        }
        throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
    }

    void submit(AbstractC1892a abstractC1892a) {
        this.dispatcher.m683j(abstractC1892a);
    }

    public C1926w transformRequest(C1926w c1926w) {
        this.requestTransformer.m776a(c1926w);
        if (c1926w != null) {
            return c1926w;
        }
        throw new IllegalStateException("Request transformer " + this.requestTransformer.getClass().getCanonicalName() + " returned null for " + c1926w);
    }
}
