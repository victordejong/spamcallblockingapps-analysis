package p012b.p076s.p118e;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.accessibility.CaptioningManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import p012b.p076s.p118e.AbstractC1866t;
/* renamed from: b.s.e.s */
/* loaded from: classes-dex2jar.jar:b/s/e/s.class */
public class C1859s {

    /* renamed from: a */
    public AbstractC1841g f7377a;

    /* renamed from: f */
    public AbstractC1866t f7382f;

    /* renamed from: g */
    public CaptioningManager f7383g;

    /* renamed from: h */
    public Handler f7384h;

    /* renamed from: m */
    public AbstractC1862c f7389m;

    /* renamed from: n */
    public AbstractC1863d f7390n;

    /* renamed from: d */
    public final Object f7380d = new Object();

    /* renamed from: e */
    public final Object f7381e = new Object();

    /* renamed from: i */
    public final Handler.Callback f7385i = new C1860a();

    /* renamed from: j */
    public CaptioningManager.CaptioningChangeListener f7386j = new C1861b();

    /* renamed from: k */
    public boolean f7387k = false;

    /* renamed from: l */
    public boolean f7388l = false;

    /* renamed from: b */
    public ArrayList<AbstractC1865f> f7378b = new ArrayList<>();

    /* renamed from: c */
    public ArrayList<AbstractC1866t> f7379c = new ArrayList<>();

    /* renamed from: b.s.e.s$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/s$a.class */
    public class C1860a implements Handler.Callback {
        public C1860a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                C1859s.this.m31886d();
                return true;
            } else if (i == 2) {
                C1859s.this.m31889b();
                return true;
            } else if (i == 3) {
                C1859s.this.m31890a((AbstractC1866t) message.obj);
                return true;
            } else if (i != 4) {
                return false;
            } else {
                C1859s.this.m31887c();
                return true;
            }
        }
    }

    /* renamed from: b.s.e.s$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/s$b.class */
    public class C1861b extends CaptioningManager.CaptioningChangeListener {
        public C1861b() {
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onEnabledChanged(boolean z) {
            C1859s.this.m31882h();
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onLocaleChanged(Locale locale) {
            C1859s.this.m31882h();
        }
    }

    /* renamed from: b.s.e.s$c */
    /* loaded from: classes-dex2jar.jar:b/s/e/s$c.class */
    public interface AbstractC1862c {
        /* renamed from: a */
        Looper mo31880a();

        /* renamed from: a */
        void mo31879a(AbstractC1866t.AbstractC1869c cVar);
    }

    /* renamed from: b.s.e.s$d */
    /* loaded from: classes-dex2jar.jar:b/s/e/s$d.class */
    public interface AbstractC1863d {
        /* renamed from: a */
        void mo31878a(AbstractC1866t tVar);
    }

    /* renamed from: b.s.e.s$e */
    /* loaded from: classes-dex2jar.jar:b/s/e/s$e.class */
    public static class C1864e {
        /* renamed from: a */
        public static int m31877a(MediaFormat mediaFormat, String str, int i) {
            try {
                return mediaFormat.getInteger(str);
            } catch (ClassCastException | NullPointerException e) {
                return i;
            }
        }
    }

    /* renamed from: b.s.e.s$f */
    /* loaded from: classes-dex2jar.jar:b/s/e/s$f.class */
    public static abstract class AbstractC1865f {
        /* renamed from: a */
        public abstract AbstractC1866t mo31876a(MediaFormat mediaFormat);

        /* renamed from: b */
        public abstract boolean mo31875b(MediaFormat mediaFormat);
    }

    public C1859s(Context context, AbstractC1841g gVar, AbstractC1863d dVar) {
        this.f7377a = gVar;
        this.f7390n = dVar;
        this.f7383g = (CaptioningManager) context.getSystemService("captioning");
    }

    /* renamed from: a */
    public AbstractC1866t m31894a(MediaFormat mediaFormat) {
        AbstractC1866t a;
        synchronized (this.f7380d) {
            try {
                Iterator<AbstractC1865f> it = this.f7378b.iterator();
                while (it.hasNext()) {
                    AbstractC1865f next = it.next();
                    if (next.mo31875b(mediaFormat) && (a = next.mo31876a(mediaFormat)) != null) {
                        synchronized (this.f7381e) {
                            if (this.f7379c.size() == 0) {
                                this.f7383g.addCaptioningChangeListener(this.f7386j);
                            }
                            this.f7379c.add(a);
                        }
                        return a;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m31895a() {
    }

    /* renamed from: a */
    public final void m31893a(Message message) {
        if (Looper.myLooper() == this.f7384h.getLooper()) {
            this.f7384h.dispatchMessage(message);
        } else {
            this.f7384h.sendMessage(message);
        }
    }

    /* renamed from: a */
    public void m31892a(AbstractC1862c cVar) {
        AbstractC1862c cVar2 = this.f7389m;
        if (cVar2 != cVar) {
            if (cVar2 != null) {
                m31895a();
                this.f7389m.mo31879a(null);
            }
            this.f7389m = cVar;
            this.f7384h = null;
            if (cVar != null) {
                this.f7384h = new Handler(this.f7389m.mo31880a(), this.f7385i);
                m31895a();
                this.f7389m.mo31879a(m31884f());
            }
        }
    }

    /* renamed from: a */
    public void m31891a(AbstractC1865f fVar) {
        synchronized (this.f7380d) {
            if (!this.f7378b.contains(fVar)) {
                this.f7378b.add(fVar);
            }
        }
    }

    /* renamed from: a */
    public void m31890a(AbstractC1866t tVar) {
        this.f7387k = true;
        AbstractC1866t tVar2 = this.f7382f;
        if (tVar2 != tVar) {
            if (tVar2 != null) {
                tVar2.m31865e();
                this.f7382f.m31870a((AbstractC1841g) null);
            }
            this.f7382f = tVar;
            AbstractC1862c cVar = this.f7389m;
            if (cVar != null) {
                cVar.mo31879a(m31884f());
            }
            AbstractC1866t tVar3 = this.f7382f;
            if (tVar3 != null) {
                tVar3.m31870a(this.f7377a);
                this.f7382f.m31864f();
            }
            AbstractC1863d dVar = this.f7390n;
            if (dVar != null) {
                dVar.mo31878a(tVar);
            }
        }
    }

    /* renamed from: b */
    public void m31889b() {
        this.f7388l = true;
        AbstractC1866t tVar = this.f7382f;
        if (tVar != null) {
            tVar.m31865e();
        }
    }

    /* renamed from: b */
    public boolean m31888b(AbstractC1866t tVar) {
        if (tVar != null && !this.f7379c.contains(tVar)) {
            return false;
        }
        m31893a(this.f7384h.obtainMessage(3, tVar));
        return true;
    }

    /* renamed from: c */
    public void m31887c() {
        AbstractC1866t tVar;
        if (this.f7387k) {
            if (!this.f7388l) {
                if (this.f7383g.isEnabled() || !((tVar = this.f7382f) == null || C1864e.m31877a(tVar.m31868b(), "is-forced-subtitle", 0) == 0)) {
                    m31881i();
                } else {
                    AbstractC1866t tVar2 = this.f7382f;
                    if (tVar2 != null && tVar2.m31866d() == 4) {
                        m31883g();
                    }
                }
                this.f7388l = false;
            } else {
                return;
            }
        }
        AbstractC1866t e = m31885e();
        if (e != null) {
            m31888b(e);
            this.f7387k = false;
            if (!this.f7388l) {
                m31881i();
                this.f7388l = false;
            }
        }
    }

    /* renamed from: d */
    public void m31886d() {
        this.f7388l = true;
        AbstractC1866t tVar = this.f7382f;
        if (tVar != null) {
            tVar.m31864f();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x011a A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p012b.p076s.p118e.AbstractC1866t m31885e() {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p118e.C1859s.m31885e():b.s.e.t");
    }

    /* renamed from: f */
    public final AbstractC1866t.AbstractC1869c m31884f() {
        AbstractC1866t tVar = this.f7382f;
        if (tVar == null) {
            return null;
        }
        return tVar.mo31867c();
    }

    public void finalize() throws Throwable {
        this.f7383g.removeCaptioningChangeListener(this.f7386j);
        super.finalize();
    }

    /* renamed from: g */
    public void m31883g() {
        m31893a(this.f7384h.obtainMessage(2));
    }

    /* renamed from: h */
    public void m31882h() {
        m31893a(this.f7384h.obtainMessage(4));
    }

    /* renamed from: i */
    public void m31881i() {
        m31893a(this.f7384h.obtainMessage(1));
    }
}
