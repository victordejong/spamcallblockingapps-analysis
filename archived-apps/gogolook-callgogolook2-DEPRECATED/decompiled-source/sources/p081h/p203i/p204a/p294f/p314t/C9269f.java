package p081h.p203i.p204a.p294f.p314t;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.recyclerview.widget.FastScroller;
import java.lang.ref.WeakReference;
/* renamed from: h.i.a.f.t.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/t/f.class */
public class C9269f {

    /* renamed from: e */
    public static C9269f f21276e;

    /* renamed from: a */
    public final Object f21277a = new Object();

    /* renamed from: b */
    public final Handler f21278b = new Handler(Looper.getMainLooper(), new C9270a());

    /* renamed from: c */
    public C9272c f21279c;

    /* renamed from: d */
    public C9272c f21280d;

    /* renamed from: h.i.a.f.t.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/t/f$a.class */
    public class C9270a implements Handler.Callback {
        public C9270a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            C9269f.this.m15556a((C9272c) message.obj);
            return true;
        }
    }

    /* renamed from: h.i.a.f.t.f$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/t/f$b.class */
    public interface AbstractC9271b {
        /* renamed from: a */
        void m15551a(int i);
    }

    /* renamed from: h.i.a.f.t.f$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/t/f$c.class */
    public static class C9272c {

        /* renamed from: a */
        public final WeakReference<AbstractC9271b> f21282a;

        /* renamed from: b */
        public int f21283b;

        /* renamed from: c */
        public boolean f21284c;

        /* renamed from: a */
        public boolean m15550a(AbstractC9271b bVar) {
            return bVar != null && this.f21282a.get() == bVar;
        }
    }

    /* renamed from: a */
    public static C9269f m15558a() {
        if (f21276e == null) {
            f21276e = new C9269f();
        }
        return f21276e;
    }

    /* renamed from: a */
    public void m15556a(C9272c cVar) {
        synchronized (this.f21277a) {
            if (this.f21279c == cVar || this.f21280d == cVar) {
                m15555a(cVar, 2);
            }
        }
    }

    /* renamed from: a */
    public final boolean m15557a(AbstractC9271b bVar) {
        C9272c cVar = this.f21279c;
        return cVar != null && cVar.m15550a(bVar);
    }

    /* renamed from: a */
    public final boolean m15555a(C9272c cVar, int i) {
        AbstractC9271b bVar = cVar.f21282a.get();
        if (bVar == null) {
            return false;
        }
        this.f21278b.removeCallbacksAndMessages(cVar);
        bVar.m15551a(i);
        return true;
    }

    /* renamed from: b */
    public void m15554b(AbstractC9271b bVar) {
        synchronized (this.f21277a) {
            if (m15557a(bVar) && !this.f21279c.f21284c) {
                this.f21279c.f21284c = true;
                this.f21278b.removeCallbacksAndMessages(this.f21279c);
            }
        }
    }

    /* renamed from: b */
    public final void m15553b(C9272c cVar) {
        int i = cVar.f21283b;
        if (i != -2) {
            if (i <= 0) {
                i = i == -1 ? FastScroller.HIDE_DELAY_AFTER_VISIBLE_MS : 2750;
            }
            this.f21278b.removeCallbacksAndMessages(cVar);
            Handler handler = this.f21278b;
            handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
        }
    }

    /* renamed from: c */
    public void m15552c(AbstractC9271b bVar) {
        synchronized (this.f21277a) {
            if (m15557a(bVar) && this.f21279c.f21284c) {
                this.f21279c.f21284c = false;
                m15553b(this.f21279c);
            }
        }
    }
}
