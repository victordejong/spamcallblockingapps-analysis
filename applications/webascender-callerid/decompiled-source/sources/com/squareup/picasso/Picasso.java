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
import com.squareup.picasso.AbstractC0224a;
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
    final AbstractC0237d cache;
    private final C0218c cleanupThread;
    final Context context;
    final Bitmap.Config defaultBitmapConfig;
    final C0245i dispatcher;
    boolean indicatorsEnabled;
    private final AbstractC0220d listener;
    volatile boolean loggingEnabled;
    final ReferenceQueue<Object> referenceQueue;
    private final List<AbstractC0262y> requestHandlers;
    private final AbstractC0223g requestTransformer;
    boolean shutdown;
    final C0226a0 stats;
    final Map<Object, AbstractC0224a> targetToAction;
    final Map<ImageView, ViewTreeObserver$OnPreDrawListenerC0244h> targetToDeferredRequestCreator;
    static final Handler HANDLER = new HandlerC0216a(Looper.getMainLooper());
    static volatile Picasso singleton = null;

    /* renamed from: com.squareup.picasso.Picasso$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$a.class */
    static final class HandlerC0216a extends Handler {
        HandlerC0216a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 3) {
                if (i == 8) {
                    List list = (List) message.obj;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        RunnableC0230c cVar = (RunnableC0230c) list.get(i2);
                        cVar.f442g.complete(cVar);
                    }
                } else if (i == 13) {
                    List list2 = (List) message.obj;
                    int size2 = list2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        AbstractC0224a aVar = (AbstractC0224a) list2.get(i3);
                        aVar.f394a.resumeAction(aVar);
                    }
                } else {
                    throw new AssertionError("Unknown handler message received: " + message.what);
                }
            } else {
                AbstractC0224a aVar2 = (AbstractC0224a) message.obj;
                if (aVar2.m769g().loggingEnabled) {
                    C0240f0.m695t("Main", "canceled", aVar2.f395b.m647d(), "target got garbage collected");
                }
                aVar2.f394a.cancelExistingRequest(aVar2.m765k());
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$b.class */
    public static class C0217b {

        /* renamed from: a */
        private final Context f379a;

        /* renamed from: b */
        private AbstractC0251j f380b;

        /* renamed from: c */
        private ExecutorService f381c;

        /* renamed from: d */
        private AbstractC0237d f382d;

        /* renamed from: e */
        private AbstractC0220d f383e;

        /* renamed from: f */
        private AbstractC0223g f384f;

        /* renamed from: g */
        private List<AbstractC0262y> f385g;

        /* renamed from: h */
        private Bitmap.Config f386h;

        /* renamed from: i */
        private boolean f387i;

        /* renamed from: j */
        private boolean f388j;

        public C0217b(Context context) {
            if (context != null) {
                this.f379a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        /* renamed from: a */
        public Picasso m783a() {
            Context context = this.f379a;
            if (this.f380b == null) {
                this.f380b = new s(context);
            }
            if (this.f382d == null) {
                this.f382d = new m(context);
            }
            if (this.f381c == null) {
                this.f381c = new C0256u();
            }
            if (this.f384f == null) {
                this.f384f = AbstractC0223g.f392a;
            }
            C0226a0 a0Var = new C0226a0(this.f382d);
            return new Picasso(context, new C0245i(context, this.f381c, Picasso.HANDLER, this.f380b, this.f382d, a0Var), this.f382d, this.f383e, this.f384f, this.f385g, a0Var, this.f386h, this.f387i, this.f388j);
        }

        /* renamed from: b */
        public C0217b m782b(Bitmap.Config config) {
            if (config != null) {
                this.f386h = config;
                return this;
            }
            throw new IllegalArgumentException("Bitmap config must not be null.");
        }

        /* renamed from: c */
        public C0217b m781c(AbstractC0251j jVar) {
            if (jVar == null) {
                throw new IllegalArgumentException("Downloader must not be null.");
            } else if (this.f380b == null) {
                this.f380b = jVar;
                return this;
            } else {
                throw new IllegalStateException("Downloader already set.");
            }
        }

        /* renamed from: d */
        public C0217b m780d(ExecutorService executorService) {
            if (executorService == null) {
                throw new IllegalArgumentException("Executor service must not be null.");
            } else if (this.f381c == null) {
                this.f381c = executorService;
                return this;
            } else {
                throw new IllegalStateException("Executor service already set.");
            }
        }

        /* renamed from: e */
        public C0217b m779e(AbstractC0220d dVar) {
            if (dVar == null) {
                throw new IllegalArgumentException("Listener must not be null.");
            } else if (this.f383e == null) {
                this.f383e = dVar;
                return this;
            } else {
                throw new IllegalStateException("Listener already set.");
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$c.class */
    private static class C0218c extends Thread {

        /* renamed from: f */
        private final ReferenceQueue<Object> f389f;

        /* renamed from: g */
        private final Handler f390g;

        /* renamed from: com.squareup.picasso.Picasso$c$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$c$a.class */
        class RunnableC0219a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Exception f391f;

            RunnableC0219a(C0218c cVar, Exception exc) {
                this.f391f = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f391f);
            }
        }

        C0218c(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f389f = referenceQueue;
            this.f390g = handler;
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
                    AbstractC0224a.C0225a aVar = (AbstractC0224a.C0225a) this.f389f.remove(1000L);
                    Message obtainMessage = this.f390g.obtainMessage();
                    if (aVar != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = aVar.f406a;
                        this.f390g.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.f390g.post(new RunnableC0219a(this, e2));
                    return;
                }
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$d.class */
    public interface AbstractC0220d {
        /* renamed from: a */
        void m777a(Picasso picasso, Uri uri, Exception exc);
    }

    /* renamed from: com.squareup.picasso.Picasso$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$e.class */
    public enum EnumC0221e {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        final int debugColor;

        EnumC0221e(int i) {
            this.debugColor = i;
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$f.class */
    public enum EnumC0222f {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: com.squareup.picasso.Picasso$g */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$g.class */
    public interface AbstractC0223g {

        /* renamed from: a */
        public static final AbstractC0223g f392a = new a();

        /* renamed from: a */
        C0258w m776a(C0258w wVar);
    }

    Picasso(Context context, C0245i iVar, AbstractC0237d dVar, AbstractC0220d dVar2, AbstractC0223g gVar, List<AbstractC0262y> list, C0226a0 a0Var, Bitmap.Config config, boolean z, boolean z2) {
        this.context = context;
        this.dispatcher = iVar;
        this.cache = dVar;
        this.listener = dVar2;
        this.requestTransformer = gVar;
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
        arrayList.add(new r(iVar.f474d, a0Var));
        this.requestHandlers = Collections.unmodifiableList(arrayList);
        this.stats = a0Var;
        this.targetToAction = new WeakHashMap();
        this.targetToDeferredRequestCreator = new WeakHashMap();
        this.indicatorsEnabled = z;
        this.loggingEnabled = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.referenceQueue = referenceQueue;
        C0218c cVar = new C0218c(referenceQueue, HANDLER);
        this.cleanupThread = cVar;
        cVar.start();
    }

    private void deliverAction(Bitmap bitmap, EnumC0221e eVar, AbstractC0224a aVar, Exception exc) {
        if (!aVar.m764l()) {
            if (!aVar.m763m()) {
                this.targetToAction.remove(aVar.m765k());
            }
            if (bitmap == null) {
                aVar.m773c(exc);
                if (this.loggingEnabled) {
                    C0240f0.m695t("Main", "errored", aVar.f395b.m647d(), exc.getMessage());
                }
            } else if (eVar != null) {
                aVar.m774b(bitmap, eVar);
                if (this.loggingEnabled) {
                    String d = aVar.f395b.m647d();
                    C0240f0.m695t("Main", "completed", d, "from " + eVar);
                }
            } else {
                throw new AssertionError("LoadedFrom cannot be null.");
            }
        }
    }

    public static Picasso get() {
        if (singleton == null) {
            synchronized (Picasso.class) {
                try {
                    if (singleton == null) {
                        Context context = PicassoProvider.f393f;
                        if (context != null) {
                            singleton = new C0217b(context).m783a();
                        } else {
                            throw new IllegalStateException("context == null");
                        }
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
                    if (singleton == null) {
                        singleton = picasso;
                    } else {
                        throw new IllegalStateException("Singleton instance already exists.");
                    }
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
        C0240f0.m712c();
        AbstractC0224a remove = this.targetToAction.remove(obj);
        if (remove != null) {
            remove.m775a();
            this.dispatcher.m690c(remove);
        }
        if (obj instanceof ImageView) {
            ViewTreeObserver$OnPreDrawListenerC0244h remove2 = this.targetToDeferredRequestCreator.remove((ImageView) obj);
            if (remove2 != null) {
                remove2.m694a();
            }
        }
    }

    public void cancelRequest(ImageView imageView) {
        if (imageView != null) {
            cancelExistingRequest(imageView);
            return;
        }
        throw new IllegalArgumentException("view cannot be null.");
    }

    public void cancelRequest(final RemoteViews remoteViews, final int i) {
        if (remoteViews != null) {
            cancelExistingRequest(new Object(remoteViews, i) { // from class: com.squareup.picasso.v$b

                /* renamed from: a */
                final RemoteViews f511a;

                /* renamed from: b */
                final int f512b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f511a = remoteViews;
                    this.f512b = i;
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
                    if (this.f512b != v_b.f512b || !this.f511a.equals(v_b.f511a)) {
                        z = false;
                    }
                    return z;
                }

                public int hashCode() {
                    return (this.f511a.hashCode() * 31) + this.f512b;
                }
            });
            return;
        }
        throw new IllegalArgumentException("remoteViews cannot be null.");
    }

    public void cancelRequest(AbstractC0236c0 c0Var) {
        if (c0Var != null) {
            cancelExistingRequest(c0Var);
            return;
        }
        throw new IllegalArgumentException("target cannot be null.");
    }

    public void cancelTag(Object obj) {
        C0240f0.m712c();
        if (obj != null) {
            ArrayList arrayList = new ArrayList(this.targetToAction.values());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC0224a aVar = (AbstractC0224a) arrayList.get(i);
                if (obj.equals(aVar.m766j())) {
                    cancelExistingRequest(aVar.m765k());
                }
            }
            ArrayList arrayList2 = new ArrayList(this.targetToDeferredRequestCreator.values());
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ViewTreeObserver$OnPreDrawListenerC0244h hVar = (ViewTreeObserver$OnPreDrawListenerC0244h) arrayList2.get(i2);
                if (obj.equals(hVar.m693b())) {
                    hVar.m694a();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Cannot cancel requests with null tag.");
    }

    void complete(RunnableC0230c cVar) {
        AbstractC0224a h = cVar.m740h();
        List<AbstractC0224a> i = cVar.m739i();
        boolean z = i != null && !i.isEmpty();
        boolean z2 = true;
        if (h == null) {
            z2 = z;
        }
        if (z2) {
            Uri uri = cVar.m738j().f517d;
            Exception k = cVar.m737k();
            Bitmap s = cVar.m729s();
            EnumC0221e o = cVar.m733o();
            if (h != null) {
                deliverAction(s, o, h, k);
            }
            if (z) {
                int size = i.size();
                for (int i2 = 0; i2 < size; i2++) {
                    deliverAction(s, o, i.get(i2), k);
                }
            }
            AbstractC0220d dVar = this.listener;
            if (!(dVar == null || k == null)) {
                dVar.m777a(this, uri, k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void defer(ImageView imageView, ViewTreeObserver$OnPreDrawListenerC0244h hVar) {
        if (this.targetToDeferredRequestCreator.containsKey(imageView)) {
            cancelExistingRequest(imageView);
        }
        this.targetToDeferredRequestCreator.put(imageView, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enqueueAndSubmit(AbstractC0224a aVar) {
        Object k = aVar.m765k();
        if (!(k == null || this.targetToAction.get(k) == aVar)) {
            cancelExistingRequest(k);
            this.targetToAction.put(k, aVar);
        }
        submit(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<AbstractC0262y> getRequestHandlers() {
        return this.requestHandlers;
    }

    public C0229b0 getSnapshot() {
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

    public C0261x load(int i) {
        if (i != 0) {
            return new C0261x(this, null, i);
        }
        throw new IllegalArgumentException("Resource ID must not be zero.");
    }

    public C0261x load(Uri uri) {
        return new C0261x(this, uri, 0);
    }

    public C0261x load(File file) {
        return file == null ? new C0261x(this, null, 0) : load(Uri.fromFile(file));
    }

    public C0261x load(String str) {
        if (str == null) {
            return new C0261x(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return load(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    public void pauseTag(Object obj) {
        if (obj != null) {
            this.dispatcher.m686g(obj);
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap quickMemoryCacheCheck(String str) {
        Bitmap bitmap = this.cache.get(str);
        if (bitmap != null) {
            this.stats.m759d();
        } else {
            this.stats.m758e();
        }
        return bitmap;
    }

    void resumeAction(AbstractC0224a aVar) {
        Bitmap quickMemoryCacheCheck = EnumC0253p.shouldReadFromMemoryCache(aVar.f398e) ? quickMemoryCacheCheck(aVar.m772d()) : null;
        if (quickMemoryCacheCheck != null) {
            EnumC0221e eVar = EnumC0221e.MEMORY;
            deliverAction(quickMemoryCacheCheck, eVar, aVar, null);
            if (this.loggingEnabled) {
                String d = aVar.f395b.m647d();
                C0240f0.m695t("Main", "completed", d, "from " + eVar);
                return;
            }
            return;
        }
        enqueueAndSubmit(aVar);
        if (this.loggingEnabled) {
            C0240f0.m696s("Main", "resumed", aVar.f395b.m647d());
        }
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
        if (this == singleton) {
            throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
        } else if (!this.shutdown) {
            this.cache.clear();
            this.cleanupThread.m778a();
            this.stats.m749n();
            this.dispatcher.m667z();
            for (ViewTreeObserver$OnPreDrawListenerC0244h hVar : this.targetToDeferredRequestCreator.values()) {
                hVar.m694a();
            }
            this.targetToDeferredRequestCreator.clear();
            this.shutdown = true;
        }
    }

    void submit(AbstractC0224a aVar) {
        this.dispatcher.m683j(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0258w transformRequest(C0258w wVar) {
        this.requestTransformer.m776a(wVar);
        if (wVar != null) {
            return wVar;
        }
        throw new IllegalStateException("Request transformer " + this.requestTransformer.getClass().getCanonicalName() + " returned null for " + wVar);
    }
}
