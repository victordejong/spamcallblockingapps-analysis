package p081h.p444n.p445a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import p081h.p444n.p445a.AbstractC10751a;
/* renamed from: h.n.a.u */
/* loaded from: classes2-dex2jar.jar:h/n/a/u.class */
public class C10798u {

    /* renamed from: p */
    public static final Handler f24653p = new HandlerC10799a(Looper.getMainLooper());

    /* renamed from: a */
    public final AbstractC10803d f24654a;

    /* renamed from: b */
    public final AbstractC10806g f24655b;

    /* renamed from: c */
    public final C10801c f24656c;

    /* renamed from: d */
    public final List<AbstractC10815z> f24657d;

    /* renamed from: e */
    public final Context f24658e;

    /* renamed from: f */
    public final C10777i f24659f;

    /* renamed from: g */
    public final AbstractC10766d f24660g;

    /* renamed from: h */
    public final C10755b0 f24661h;

    /* renamed from: i */
    public final Map<Object, AbstractC10751a> f24662i;

    /* renamed from: j */
    public final Map<ImageView, ViewTreeObserver$OnPreDrawListenerC10776h> f24663j;

    /* renamed from: k */
    public final ReferenceQueue<Object> f24664k;

    /* renamed from: l */
    public final Bitmap.Config f24665l;

    /* renamed from: m */
    public boolean f24666m;

    /* renamed from: n */
    public volatile boolean f24667n;

    /* renamed from: o */
    public boolean f24668o;

    /* renamed from: h.n.a.u$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/u$a.class */
    public static final class HandlerC10799a extends Handler {
        public HandlerC10799a(Looper looper) {
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
                        RunnableC10758c cVar = (RunnableC10758c) list.get(i2);
                        cVar.f24553b.m10606a(cVar);
                    }
                } else if (i == 13) {
                    List list2 = (List) message.obj;
                    int size2 = list2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        AbstractC10751a aVar = (AbstractC10751a) list2.get(i3);
                        aVar.f24514a.m10602b(aVar);
                    }
                } else {
                    throw new AssertionError("Unknown handler message received: " + message.what);
                }
            } else {
                AbstractC10751a aVar2 = (AbstractC10751a) message.obj;
                if (aVar2.m10732e().f24667n) {
                    C10770e0.m10667a("Main", "canceled", aVar2.f24515b.m10586d(), "target got garbage collected");
                }
                aVar2.f24514a.m10604a(aVar2.mo10634i());
            }
        }
    }

    /* renamed from: h.n.a.u$b */
    /* loaded from: classes2-dex2jar.jar:h/n/a/u$b.class */
    public static class C10800b {

        /* renamed from: a */
        public final Context f24669a;

        /* renamed from: b */
        public AbstractC10782j f24670b;

        /* renamed from: c */
        public ExecutorService f24671c;

        /* renamed from: d */
        public AbstractC10766d f24672d;

        /* renamed from: e */
        public AbstractC10803d f24673e;

        /* renamed from: f */
        public AbstractC10806g f24674f;

        /* renamed from: g */
        public List<AbstractC10815z> f24675g;

        /* renamed from: h */
        public Bitmap.Config f24676h;

        /* renamed from: i */
        public boolean f24677i;

        /* renamed from: j */
        public boolean f24678j;

        public C10800b(@NonNull Context context) {
            if (context != null) {
                this.f24669a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        /* renamed from: a */
        public C10798u m10599a() {
            Context context = this.f24669a;
            if (this.f24670b == null) {
                this.f24670b = new C10797t(context);
            }
            if (this.f24672d == null) {
                this.f24672d = new C10786n(context);
            }
            if (this.f24671c == null) {
                this.f24671c = new C10809w();
            }
            if (this.f24674f == null) {
                this.f24674f = AbstractC10806g.f24691a;
            }
            C10755b0 b0Var = new C10755b0(this.f24672d);
            return new C10798u(context, new C10777i(context, this.f24671c, C10798u.f24653p, this.f24670b, this.f24672d, b0Var), this.f24672d, this.f24673e, this.f24674f, this.f24675g, b0Var, this.f24676h, this.f24677i, this.f24678j);
        }
    }

    /* renamed from: h.n.a.u$c */
    /* loaded from: classes2-dex2jar.jar:h/n/a/u$c.class */
    public static class C10801c extends Thread {

        /* renamed from: a */
        public final ReferenceQueue<Object> f24679a;

        /* renamed from: b */
        public final Handler f24680b;

        /* renamed from: h.n.a.u$c$a */
        /* loaded from: classes2-dex2jar.jar:h/n/a/u$c$a.class */
        public class RunnableC10802a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Exception f24681a;

            public RunnableC10802a(C10801c cVar, Exception exc) {
                this.f24681a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f24681a);
            }
        }

        public C10801c(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f24679a = referenceQueue;
            this.f24680b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    AbstractC10751a.C10752a aVar = (AbstractC10751a.C10752a) this.f24679a.remove(1000L);
                    Message obtainMessage = this.f24680b.obtainMessage();
                    if (aVar != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = aVar.f24526a;
                        this.f24680b.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.f24680b.post(new RunnableC10802a(this, e2));
                    return;
                }
            }
        }
    }

    /* renamed from: h.n.a.u$d */
    /* loaded from: classes2-dex2jar.jar:h/n/a/u$d.class */
    public interface AbstractC10803d {
        /* renamed from: a */
        void m10598a(C10798u uVar, Uri uri, Exception exc);
    }

    /* renamed from: h.n.a.u$e */
    /* loaded from: classes2-dex2jar.jar:h/n/a/u$e.class */
    public enum EnumC10804e {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(SupportMenu.CATEGORY_MASK);
        

        /* renamed from: a */
        public final int f24686a;

        EnumC10804e(int i) {
            this.f24686a = i;
        }
    }

    /* renamed from: h.n.a.u$f */
    /* loaded from: classes2-dex2jar.jar:h/n/a/u$f.class */
    public enum EnumC10805f {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: h.n.a.u$g */
    /* loaded from: classes2-dex2jar.jar:h/n/a/u$g.class */
    public interface AbstractC10806g {

        /* renamed from: a */
        public static final AbstractC10806g f24691a = new C10807a();

        /* renamed from: h.n.a.u$g$a */
        /* loaded from: classes2-dex2jar.jar:h/n/a/u$g$a.class */
        public static final class C10807a implements AbstractC10806g {
            @Override // p081h.p444n.p445a.C10798u.AbstractC10806g
            /* renamed from: a */
            public C10811x mo10597a(C10811x xVar) {
                return xVar;
            }
        }

        /* renamed from: a */
        C10811x mo10597a(C10811x xVar);
    }

    public C10798u(Context context, C10777i iVar, AbstractC10766d dVar, AbstractC10803d dVar2, AbstractC10806g gVar, List<AbstractC10815z> list, C10755b0 b0Var, Bitmap.Config config, boolean z, boolean z2) {
        this.f24658e = context;
        this.f24659f = iVar;
        this.f24660g = dVar;
        this.f24654a = dVar2;
        this.f24655b = gVar;
        this.f24665l = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new C10753a0(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new C10774f(context));
        arrayList.add(new C10790p(context));
        arrayList.add(new C10775g(context));
        arrayList.add(new C10754b(context));
        arrayList.add(new C10784l(context));
        arrayList.add(new C10794s(iVar.f24602d, b0Var));
        this.f24657d = Collections.unmodifiableList(arrayList);
        this.f24661h = b0Var;
        this.f24662i = new WeakHashMap();
        this.f24663j = new WeakHashMap();
        this.f24666m = z;
        this.f24667n = z2;
        this.f24664k = new ReferenceQueue<>();
        this.f24656c = new C10801c(this.f24664k, f24653p);
        this.f24656c.start();
    }

    /* renamed from: a */
    public C10811x m10605a(C10811x xVar) {
        this.f24655b.mo10597a(xVar);
        if (xVar != null) {
            return xVar;
        }
        throw new IllegalStateException("Request transformer " + this.f24655b.getClass().getCanonicalName() + " returned null for " + xVar);
    }

    /* renamed from: a */
    public C10814y m10610a(@Nullable Uri uri) {
        return new C10814y(this, uri, 0);
    }

    /* renamed from: a */
    public C10814y m10603a(@Nullable String str) {
        if (str == null) {
            return new C10814y(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return m10610a(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    /* renamed from: a */
    public List<AbstractC10815z> m10612a() {
        return this.f24657d;
    }

    /* renamed from: a */
    public final void m10611a(Bitmap bitmap, EnumC10804e eVar, AbstractC10751a aVar, Exception exc) {
        if (!aVar.m10728j()) {
            if (!aVar.m10727k()) {
                this.f24662i.remove(aVar.mo10634i());
            }
            if (bitmap == null) {
                aVar.mo10630a(exc);
                if (this.f24667n) {
                    C10770e0.m10667a("Main", "errored", aVar.f24515b.m10586d(), exc.getMessage());
                }
            } else if (eVar != null) {
                aVar.mo10631a(bitmap, eVar);
                if (this.f24667n) {
                    String d = aVar.f24515b.m10586d();
                    C10770e0.m10667a("Main", "completed", d, "from " + eVar);
                }
            } else {
                throw new AssertionError("LoadedFrom cannot be null.");
            }
        }
    }

    /* renamed from: a */
    public void m10609a(@NonNull ImageView imageView) {
        if (imageView != null) {
            m10604a((Object) imageView);
            return;
        }
        throw new IllegalArgumentException("view cannot be null.");
    }

    /* renamed from: a */
    public void m10608a(ImageView imageView, ViewTreeObserver$OnPreDrawListenerC10776h hVar) {
        if (this.f24663j.containsKey(imageView)) {
            m10604a((Object) imageView);
        }
        this.f24663j.put(imageView, hVar);
    }

    /* renamed from: a */
    public void m10607a(AbstractC10751a aVar) {
        Object i = aVar.mo10634i();
        if (!(i == null || this.f24662i.get(i) == aVar)) {
            m10604a(i);
            this.f24662i.put(i, aVar);
        }
        m10600c(aVar);
    }

    /* renamed from: a */
    public void m10606a(RunnableC10758c cVar) {
        AbstractC10751a c = cVar.m10698c();
        List<AbstractC10751a> d = cVar.m10697d();
        boolean z = d != null && !d.isEmpty();
        boolean z2 = true;
        if (c == null) {
            z2 = z;
        }
        if (z2) {
            Uri uri = cVar.m10696e().f24705d;
            Exception f = cVar.m10695f();
            Bitmap l = cVar.m10689l();
            EnumC10804e h = cVar.m10693h();
            if (c != null) {
                m10611a(l, h, c, f);
            }
            if (z) {
                int size = d.size();
                for (int i = 0; i < size; i++) {
                    m10611a(l, h, d.get(i), f);
                }
            }
            AbstractC10803d dVar = this.f24654a;
            if (!(dVar == null || f == null)) {
                dVar.m10598a(this, uri, f);
            }
        }
    }

    /* renamed from: a */
    public void m10604a(Object obj) {
        C10770e0.m10681a();
        AbstractC10751a remove = this.f24662i.remove(obj);
        if (remove != null) {
            remove.mo10632a();
            this.f24659f.m10656a(remove);
        }
        if (obj instanceof ImageView) {
            ViewTreeObserver$OnPreDrawListenerC10776h remove2 = this.f24663j.remove((ImageView) obj);
            if (remove2 != null) {
                remove2.m10659a();
            }
        }
    }

    /* renamed from: b */
    public Bitmap m10601b(String str) {
        Bitmap bitmap = this.f24660g.get(str);
        if (bitmap != null) {
            this.f24661h.m10718b();
        } else {
            this.f24661h.m10715c();
        }
        return bitmap;
    }

    /* renamed from: b */
    public void m10602b(AbstractC10751a aVar) {
        Bitmap b = EnumC10792q.m10619a(aVar.f24518e) ? m10601b(aVar.m10735b()) : null;
        if (b != null) {
            m10611a(b, EnumC10804e.MEMORY, aVar, null);
            if (this.f24667n) {
                String d = aVar.f24515b.m10586d();
                C10770e0.m10667a("Main", "completed", d, "from " + EnumC10804e.MEMORY);
                return;
            }
            return;
        }
        m10607a(aVar);
        if (this.f24667n) {
            C10770e0.m10668a("Main", "resumed", aVar.f24515b.m10586d());
        }
    }

    /* renamed from: c */
    public void m10600c(AbstractC10751a aVar) {
        this.f24659f.m10647b(aVar);
    }
}
