package p012b.p076s.p078b.p079a.p085r0;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.KeysExpiredException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1168e;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1329m;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1330n;
/* renamed from: b.s.b.a.r0.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/r0/g.class */
public class C1319g<T extends AbstractC1329m> implements DrmSession<T> {

    /* renamed from: a */
    public final List<DrmInitData.SchemeData> f5255a;

    /* renamed from: b */
    public final AbstractC1330n<T> f5256b;

    /* renamed from: c */
    public final AbstractC1322c<T> f5257c;

    /* renamed from: d */
    public final AbstractC1323d<T> f5258d;

    /* renamed from: e */
    public final int f5259e;

    /* renamed from: f */
    public final HashMap<String, String> f5260f;

    /* renamed from: g */
    public final C1168e<AbstractC1324h> f5261g;

    /* renamed from: h */
    public final int f5262h;

    /* renamed from: i */
    public final AbstractC1334p f5263i;

    /* renamed from: j */
    public final UUID f5264j;

    /* renamed from: k */
    public final C1319g<T>.HandlerC1321b f5265k;

    /* renamed from: l */
    public int f5266l;

    /* renamed from: m */
    public int f5267m;

    /* renamed from: n */
    public HandlerThread f5268n;

    /* renamed from: o */
    public C1319g<T>.HandlerC1320a f5269o;

    /* renamed from: p */
    public T f5270p;

    /* renamed from: q */
    public DrmSession.DrmSessionException f5271q;

    /* renamed from: r */
    public byte[] f5272r;

    /* renamed from: s */
    public byte[] f5273s;

    /* renamed from: t */
    public AbstractC1330n.C1331a f5274t;

    /* renamed from: u */
    public AbstractC1330n.C1332b f5275u;

    /* renamed from: b.s.b.a.r0.g$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/r0/g$a.class */
    public class HandlerC1320a extends Handler {
        public HandlerC1320a(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final long m33705a(int i) {
            return Math.min((i - 1) * 1000, 5000);
        }

        /* renamed from: a */
        public void m33704a(int i, Object obj, boolean z) {
            obtainMessage(i, z ? 1 : 0, 0, obj).sendToTarget();
        }

        /* renamed from: a */
        public final boolean m33703a(Message message) {
            int i;
            if (!(message.arg1 == 1) || (i = message.arg2 + 1) > C1319g.this.f5262h) {
                return false;
            }
            Message obtain = Message.obtain(message);
            obtain.arg2 = i;
            sendMessageDelayed(obtain, m33705a(i));
            return true;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object e;
            Object obj = message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    e = C1319g.this.f5263i.m33676a(C1319g.this.f5264j, (AbstractC1330n.C1332b) obj);
                } else if (i == 1) {
                    e = C1319g.this.f5263i.m33677a(C1319g.this.f5264j, (AbstractC1330n.C1331a) obj);
                } else {
                    throw new RuntimeException();
                }
            } catch (Exception e2) {
                e = e2;
                if (m33703a(message)) {
                    return;
                }
            }
            C1319g.this.f5265k.obtainMessage(message.what, Pair.create(obj, e)).sendToTarget();
        }
    }

    /* renamed from: b.s.b.a.r0.g$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/r0/g$b.class */
    public class HandlerC1321b extends Handler {
        public HandlerC1321b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                C1319g.this.m33714b(obj, obj2);
            } else if (i == 1) {
                C1319g.this.m33721a(obj, obj2);
            }
        }
    }

    /* renamed from: b.s.b.a.r0.g$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/r0/g$c.class */
    public interface AbstractC1322c<T extends AbstractC1329m> {
        /* renamed from: a */
        void mo33702a();

        /* renamed from: a */
        void mo33701a(C1319g<T> gVar);

        /* renamed from: a */
        void mo33700a(Exception exc);
    }

    /* renamed from: b.s.b.a.r0.g$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/r0/g$d.class */
    public interface AbstractC1323d<T extends AbstractC1329m> {
        /* renamed from: a */
        void mo33694a(C1319g<T> gVar);
    }

    public C1319g(UUID uuid, AbstractC1330n<T> nVar, AbstractC1322c<T> cVar, AbstractC1323d<T> dVar, List<DrmInitData.SchemeData> list, int i, byte[] bArr, HashMap<String, String> hashMap, AbstractC1334p pVar, Looper looper, C1168e<AbstractC1324h> eVar, int i2) {
        if (i == 1 || i == 3) {
            C1160a.m34522a(bArr);
        }
        this.f5264j = uuid;
        this.f5257c = cVar;
        this.f5258d = dVar;
        this.f5256b = nVar;
        this.f5259e = i;
        if (bArr != null) {
            this.f5273s = bArr;
            this.f5255a = null;
        } else {
            C1160a.m34522a(list);
            this.f5255a = Collections.unmodifiableList(list);
        }
        this.f5260f = hashMap;
        this.f5263i = pVar;
        this.f5262h = i2;
        this.f5261g = eVar;
        this.f5266l = 2;
        this.f5265k = new HandlerC1321b(looper);
    }

    /* renamed from: a */
    public void m33727a() {
        int i = this.f5267m + 1;
        this.f5267m = i;
        if (i == 1) {
            HandlerThread handlerThread = new HandlerThread("DrmRequestHandler");
            this.f5268n = handlerThread;
            handlerThread.start();
            this.f5269o = new HandlerC1320a(this.f5268n.getLooper());
            if (m33713b(true)) {
                m33720a(true);
            }
        }
    }

    /* renamed from: a */
    public void m33726a(int i) {
        if (i == 2) {
            m33710h();
        }
    }

    /* renamed from: a */
    public final void m33723a(final Exception exc) {
        this.f5271q = new DrmSession.DrmSessionException(exc);
        this.f5261g.m34429a(new C1168e.AbstractC1169a(exc) { // from class: b.s.b.a.r0.f

            /* renamed from: a */
            public final Exception f5254a;

            {
                this.f5254a = exc;
            }

            @Override // p012b.p076s.p078b.p079a.p080a1.C1168e.AbstractC1169a
            /* renamed from: a */
            public void mo32373a(Object obj) {
                ((AbstractC1324h) obj).mo33699a(this.f5254a);
            }
        });
        if (this.f5266l != 4) {
            this.f5266l = 1;
        }
    }

    /* renamed from: a */
    public final void m33721a(Object obj, Object obj2) {
        if (obj == this.f5274t && m33711g()) {
            this.f5274t = null;
            if (obj2 instanceof Exception) {
                m33715b((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f5259e == 3) {
                    AbstractC1330n<T> nVar = this.f5256b;
                    byte[] bArr2 = this.f5273s;
                    C1167d0.m34479a(bArr2);
                    nVar.m33680b(bArr2, bArr);
                    this.f5261g.m34429a(C1316d.f5252a);
                    return;
                }
                byte[] b = this.f5256b.m33680b(this.f5272r, bArr);
                if (!((this.f5259e != 2 && (this.f5259e != 0 || this.f5273s == null)) || b == null || b.length == 0)) {
                    this.f5273s = b;
                }
                this.f5266l = 4;
                this.f5261g.m34429a(C1317e.f5253a);
            } catch (Exception e) {
                m33715b(e);
            }
        }
    }

    @RequiresNonNull({"sessionId"})
    /* renamed from: a */
    public final void m33720a(boolean z) {
        int i = this.f5259e;
        if (i == 0 || i == 1) {
            if (this.f5273s == null) {
                m33718a(this.f5272r, 1, z);
            } else if (this.f5266l == 4 || m33706l()) {
                long b = m33717b();
                if (this.f5259e == 0 && b <= 60) {
                    StringBuilder sb = new StringBuilder(88);
                    sb.append("Offline license has expired or will expire soon. Remaining seconds: ");
                    sb.append(b);
                    C1175j.m34420a("DefaultDrmSession", sb.toString());
                    m33718a(this.f5272r, 2, z);
                } else if (b <= 0) {
                    m33723a(new KeysExpiredException());
                } else {
                    this.f5266l = 4;
                    this.f5261g.m34429a(C1315c.f5251a);
                }
            }
        } else if (i != 2) {
            if (i == 3) {
                C1160a.m34522a(this.f5273s);
                if (m33706l()) {
                    m33718a(this.f5273s, 3, z);
                }
            }
        } else if (this.f5273s == null) {
            m33718a(this.f5272r, 2, z);
        } else if (m33706l()) {
            m33718a(this.f5272r, 2, z);
        }
    }

    /* renamed from: a */
    public final void m33718a(byte[] bArr, int i, boolean z) {
        try {
            this.f5274t = this.f5256b.m33684a(bArr, this.f5255a, i, this.f5260f);
            C1319g<T>.HandlerC1320a aVar = this.f5269o;
            C1167d0.m34479a(aVar);
            C1319g<T>.HandlerC1320a aVar2 = aVar;
            AbstractC1330n.C1331a aVar3 = this.f5274t;
            C1160a.m34522a(aVar3);
            aVar2.m33704a(1, aVar3, z);
        } catch (Exception e) {
            m33715b(e);
        }
    }

    /* renamed from: a */
    public boolean m33719a(byte[] bArr) {
        return Arrays.equals(this.f5272r, bArr);
    }

    /* renamed from: b */
    public final long m33717b() {
        if (!C1220c.f4893d.equals(this.f5264j)) {
            return Long.MAX_VALUE;
        }
        Pair<Long, Long> a = C1335q.m33675a(this);
        C1160a.m34522a(a);
        Pair<Long, Long> pair = a;
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    /* renamed from: b */
    public final void m33715b(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f5257c.mo33701a(this);
        } else {
            m33723a(exc);
        }
    }

    /* renamed from: b */
    public final void m33714b(Object obj, Object obj2) {
        if (obj != this.f5275u) {
            return;
        }
        if (this.f5266l == 2 || m33711g()) {
            this.f5275u = null;
            if (obj2 instanceof Exception) {
                this.f5257c.mo33700a((Exception) obj2);
                return;
            }
            try {
                this.f5256b.m33678d((byte[]) obj2);
                this.f5257c.mo33702a();
            } catch (Exception e) {
                this.f5257c.mo33700a(e);
            }
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: b */
    public final boolean m33713b(boolean z) {
        if (m33711g()) {
            return true;
        }
        try {
            this.f5272r = this.f5256b.m33682b();
            this.f5261g.m34429a(C1314b.f5250a);
            this.f5270p = this.f5256b.m33681b(this.f5272r);
            this.f5266l = 3;
            return true;
        } catch (NotProvisionedException e) {
            if (z) {
                this.f5257c.mo33701a(this);
                return false;
            }
            m33723a(e);
            return false;
        } catch (Exception e2) {
            m33723a(e2);
            return false;
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: c */
    public final T mo33690c() {
        return this.f5270p;
    }

    /* renamed from: c */
    public void m33712c(Exception exc) {
        m33723a(exc);
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: d */
    public final int mo33689d() {
        return this.f5266l;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: e */
    public final DrmSession.DrmSessionException mo33688e() {
        return this.f5266l == 1 ? this.f5271q : null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: f */
    public Map<String, String> mo33687f() {
        byte[] bArr = this.f5272r;
        return bArr == null ? null : this.f5256b.m33685a(bArr);
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: g */
    public final boolean m33711g() {
        int i = this.f5266l;
        return i == 3 || i == 4;
    }

    /* renamed from: h */
    public final void m33710h() {
        if (this.f5259e == 0 && this.f5266l == 4) {
            C1167d0.m34479a(this.f5272r);
            m33720a(false);
        }
    }

    /* renamed from: i */
    public void m33709i() {
        if (m33713b(false)) {
            m33720a(true);
        }
    }

    /* renamed from: j */
    public void m33708j() {
        this.f5275u = this.f5256b.m33686a();
        C1319g<T>.HandlerC1320a aVar = this.f5269o;
        C1167d0.m34479a(aVar);
        C1319g<T>.HandlerC1320a aVar2 = aVar;
        AbstractC1330n.C1332b bVar = this.f5275u;
        C1160a.m34522a(bVar);
        aVar2.m33704a(0, bVar, true);
    }

    /* renamed from: k */
    public void m33707k() {
        int i = this.f5267m - 1;
        this.f5267m = i;
        if (i == 0) {
            this.f5266l = 0;
            this.f5265k.removeCallbacksAndMessages(null);
            C1319g<T>.HandlerC1320a aVar = this.f5269o;
            C1167d0.m34479a(aVar);
            aVar.removeCallbacksAndMessages(null);
            this.f5269o = null;
            HandlerThread handlerThread = this.f5268n;
            C1167d0.m34479a(handlerThread);
            handlerThread.quit();
            this.f5268n = null;
            this.f5270p = null;
            this.f5271q = null;
            this.f5274t = null;
            this.f5275u = null;
            byte[] bArr = this.f5272r;
            if (bArr != null) {
                this.f5256b.m33679c(bArr);
                this.f5272r = null;
                this.f5261g.m34429a(C1313a.f5249a);
            }
            this.f5258d.mo33694a(this);
        }
    }

    @RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    /* renamed from: l */
    public final boolean m33706l() {
        try {
            this.f5256b.m33683a(this.f5272r, this.f5273s);
            return true;
        } catch (Exception e) {
            C1175j.m34419a("DefaultDrmSession", "Error trying to restore Widevine keys.", e);
            m33723a(e);
            return false;
        }
    }
}
