package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.C0892f;
import com.google.android.gms.common.api.C0812b;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.b;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.AbstractC0914i;
import com.google.android.gms.common.internal.AbstractC0922n;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.common.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c.class */
public abstract class AbstractC0899c<T extends IInterface> {

    /* renamed from: B */
    private static final d[] f3490B = new d[0];

    /* renamed from: A */
    protected AtomicInteger f3491A;

    /* renamed from: a */
    private int f3492a;

    /* renamed from: b */
    private long f3493b;

    /* renamed from: c */
    private long f3494c;

    /* renamed from: d */
    private int f3495d;

    /* renamed from: e */
    private long f3496e;

    /* renamed from: f */
    private volatile String f3497f;

    /* renamed from: g */
    private C0941v0 f3498g;

    /* renamed from: h */
    private final Context f3499h;

    /* renamed from: i */
    private final AbstractC0914i f3500i;

    /* renamed from: j */
    private final C0892f f3501j;

    /* renamed from: k */
    final Handler f3502k;

    /* renamed from: l */
    private final Object f3503l;

    /* renamed from: m */
    private final Object f3504m;

    /* renamed from: n */
    private AbstractC0922n f3505n;

    /* renamed from: o */
    protected AbstractC0902c f3506o;

    /* renamed from: p */
    private T f3507p;

    /* renamed from: q */
    private final ArrayList<AbstractC0904h<?>> f3508q;

    /* renamed from: r */
    private ServiceConnectionC0905i f3509r;

    /* renamed from: s */
    private int f3510s;

    /* renamed from: t */
    private final AbstractC0900a f3511t;

    /* renamed from: u */
    private final AbstractC0901b f3512u;

    /* renamed from: v */
    private final int f3513v;

    /* renamed from: w */
    private final String f3514w;

    /* renamed from: x */
    private b f3515x;

    /* renamed from: y */
    private boolean f3516y;

    /* renamed from: z */
    private volatile n0 f3517z;

    /* renamed from: com.google.android.gms.common.internal.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$a.class */
    public interface AbstractC0900a {
        /* renamed from: F */
        void m3381F(Bundle bundle);

        /* renamed from: w */
        void m3380w(int i);
    }

    /* renamed from: com.google.android.gms.common.internal.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$b.class */
    public interface AbstractC0901b {
        /* renamed from: B */
        void m3379B(b bVar);
    }

    /* renamed from: com.google.android.gms.common.internal.c$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$c.class */
    public interface AbstractC0902c {
        /* renamed from: b */
        void m3378b(b bVar);
    }

    /* renamed from: com.google.android.gms.common.internal.c$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$e.class */
    public interface AbstractC0903e {
        /* renamed from: a */
        void m3377a();
    }

    /* renamed from: com.google.android.gms.common.internal.c$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$h.class */
    public abstract class AbstractC0904h<TListener> {

        /* renamed from: a */
        private TListener f3518a;

        /* renamed from: b */
        private boolean f3519b = false;

        public AbstractC0904h(TListener tlistener) {
            AbstractC0899c.this = r4;
            this.f3518a = tlistener;
        }

        /* renamed from: a */
        protected abstract void m3376a(TListener tlistener);

        /* renamed from: b */
        protected abstract void m3375b();

        /* renamed from: c */
        public final void m3374c() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f3518a;
                if (this.f3519b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            }
            if (tlistener != null) {
                try {
                    m3376a(tlistener);
                } catch (RuntimeException e) {
                    m3375b();
                    throw e;
                }
            } else {
                m3375b();
            }
            synchronized (this) {
                this.f3519b = true;
            }
            m3373d();
        }

        /* renamed from: d */
        public final void m3373d() {
            m3372e();
            synchronized (AbstractC0899c.this.f3508q) {
                AbstractC0899c.this.f3508q.remove(this);
            }
        }

        /* renamed from: e */
        public final void m3372e() {
            synchronized (this) {
                this.f3518a = null;
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.c$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c$i.class */
    public final class ServiceConnectionC0905i implements ServiceConnection {

        /* renamed from: a */
        private final int f3521a;

        public ServiceConnectionC0905i(int i) {
            AbstractC0899c.this = r4;
            this.f3521a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AbstractC0922n abstractC0922n;
            if (iBinder == null) {
                AbstractC0899c.this.m3419Y(16);
                return;
            }
            synchronized (AbstractC0899c.this.f3504m) {
                AbstractC0899c abstractC0899c = AbstractC0899c.this;
                if (iBinder == null) {
                    abstractC0922n = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    abstractC0922n = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0922n)) ? new AbstractC0922n.a.a(iBinder) : (AbstractC0922n) queryLocalInterface;
                }
                abstractC0899c.f3505n = abstractC0922n;
            }
            AbstractC0899c.this.m3418Z(0, null, this.f3521a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (AbstractC0899c.this.f3504m) {
                AbstractC0899c.this.f3505n = null;
            }
            Handler handler = AbstractC0899c.this.f3502k;
            handler.sendMessage(handler.obtainMessage(6, this.f3521a, 1));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected AbstractC0899c(android.content.Context r11, android.os.Looper r12, int r13, com.google.android.gms.common.internal.AbstractC0899c.AbstractC0900a r14, com.google.android.gms.common.internal.AbstractC0899c.AbstractC0901b r15, java.lang.String r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.i r0 = com.google.android.gms.common.internal.AbstractC0914i.m3348b(r0)
            r17 = r0
            com.google.android.gms.common.f r0 = com.google.android.gms.common.C0892f.m3482h()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = com.google.android.gms.common.internal.C0931r.m3308k(r0)
            r0 = r14
            com.google.android.gms.common.internal.c$a r0 = (com.google.android.gms.common.internal.AbstractC0899c.AbstractC0900a) r0
            r14 = r0
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.C0931r.m3308k(r0)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            com.google.android.gms.common.internal.c$b r7 = (com.google.android.gms.common.internal.AbstractC0899c.AbstractC0901b) r7
            r8 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.AbstractC0899c.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.c$a, com.google.android.gms.common.internal.c$b, java.lang.String):void");
    }

    protected AbstractC0899c(Context context, Looper looper, AbstractC0914i abstractC0914i, C0892f c0892f, int i, AbstractC0900a abstractC0900a, AbstractC0901b abstractC0901b, String str) {
        this.f3497f = null;
        this.f3503l = new Object();
        this.f3504m = new Object();
        this.f3508q = new ArrayList<>();
        this.f3510s = 1;
        this.f3515x = null;
        this.f3516y = false;
        this.f3517z = null;
        this.f3491A = new AtomicInteger(0);
        C0931r.m3307l(context, "Context must not be null");
        this.f3499h = context;
        C0931r.m3307l(looper, "Looper must not be null");
        C0931r.m3307l(abstractC0914i, "Supervisor must not be null");
        this.f3500i = abstractC0914i;
        C0931r.m3307l(c0892f, "API availability must not be null");
        this.f3501j = c0892f;
        this.f3502k = new g(this, looper);
        this.f3513v = i;
        this.f3511t = abstractC0900a;
        this.f3512u = abstractC0901b;
        this.f3514w = str;
    }

    /* renamed from: X */
    private final String m3420X() {
        String str = this.f3514w;
        String str2 = str;
        if (str == null) {
            str2 = this.f3499h.getClass().getName();
        }
        return str2;
    }

    /* renamed from: Y */
    public final void m3419Y(int i) {
        int i2;
        if (m3406h0()) {
            i2 = 5;
            this.f3516y = true;
        } else {
            i2 = 4;
        }
        Handler handler = this.f3502k;
        handler.sendMessage(handler.obtainMessage(i2, this.f3491A.get(), 16));
    }

    /* renamed from: a0 */
    public final void m3417a0(int i, T t) {
        C0941v0 c0941v0;
        boolean z = false;
        if ((i == 4) == (t != null)) {
            z = true;
        }
        C0931r.m3318a(z);
        synchronized (this.f3503l) {
            this.f3510s = i;
            this.f3507p = t;
            m3427Q(i, t);
            if (i != 1) {
                if (i == 2 || i == 3) {
                    if (this.f3509r != null && (c0941v0 = this.f3498g) != null) {
                        String m3231a = c0941v0.m3231a();
                        String m3230b = this.f3498g.m3230b();
                        StringBuilder sb = new StringBuilder(String.valueOf(m3231a).length() + 70 + String.valueOf(m3230b).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(m3231a);
                        sb.append(" on ");
                        sb.append(m3230b);
                        Log.e("GmsClient", sb.toString());
                        this.f3500i.m3347c(this.f3498g.m3231a(), this.f3498g.m3230b(), this.f3498g.m3229c(), this.f3509r, m3420X(), this.f3498g.m3228d());
                        this.f3491A.incrementAndGet();
                    }
                    this.f3509r = new ServiceConnectionC0905i(this.f3491A.get());
                    C0941v0 c0941v02 = (this.f3510s != 3 || m3438F() == null) ? new C0941v0(m3433K(), m3434J(), false, AbstractC0914i.m3349a(), m3432L()) : new C0941v0(m3440D().getPackageName(), m3438F(), true, AbstractC0914i.m3349a(), false);
                    this.f3498g = c0941v02;
                    if (c0941v02.m3228d() && m3391q() < 17895000) {
                        String valueOf = String.valueOf(this.f3498g.m3231a());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                    }
                    if (!this.f3500i.m3346d(new AbstractC0914i.C0915a(this.f3498g.m3231a(), this.f3498g.m3230b(), this.f3498g.m3229c(), this.f3498g.m3228d()), this.f3509r, m3420X())) {
                        String m3231a2 = this.f3498g.m3231a();
                        String m3230b2 = this.f3498g.m3230b();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(m3231a2).length() + 34 + String.valueOf(m3230b2).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(m3231a2);
                        sb2.append(" on ");
                        sb2.append(m3230b2);
                        Log.e("GmsClient", sb2.toString());
                        m3418Z(16, null, this.f3491A.get());
                    }
                } else if (i == 4) {
                    m3431M(t);
                }
            } else if (this.f3509r != null) {
                this.f3500i.m3347c(this.f3498g.m3231a(), this.f3498g.m3230b(), this.f3498g.m3229c(), this.f3509r, m3420X(), this.f3498g.m3228d());
                this.f3509r = null;
            }
        }
    }

    /* renamed from: e0 */
    public final void m3411e0(n0 n0Var) {
        this.f3517z = n0Var;
    }

    /* renamed from: f0 */
    public final boolean m3409f0(int i, int i2, T t) {
        synchronized (this.f3503l) {
            if (this.f3510s != i) {
                return false;
            }
            m3417a0(i2, t);
            return true;
        }
    }

    /* renamed from: h0 */
    private final boolean m3406h0() {
        boolean z;
        synchronized (this.f3503l) {
            z = this.f3510s == 3;
        }
        return z;
    }

    /* renamed from: j0 */
    public final boolean m3403j0() {
        if (!this.f3516y && !TextUtils.isEmpty(m3435I()) && !TextUtils.isEmpty(m3438F())) {
            try {
                Class.forName(m3435I());
                return true;
            } catch (ClassNotFoundException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: A */
    public Account m3442A() {
        return null;
    }

    /* renamed from: B */
    public d[] m3441B() {
        return f3490B;
    }

    /* renamed from: D */
    public final Context m3440D() {
        return this.f3499h;
    }

    /* renamed from: E */
    protected Bundle m3439E() {
        return new Bundle();
    }

    /* renamed from: F */
    protected String m3438F() {
        return null;
    }

    /* renamed from: G */
    protected Set<Scope> m3437G() {
        return Collections.emptySet();
    }

    /* renamed from: H */
    public final T m3436H() throws DeadObjectException {
        T t;
        synchronized (this.f3503l) {
            if (this.f3510s == 5) {
                throw new DeadObjectException();
            }
            m3384x();
            C0931r.m3304o(this.f3507p != null, "Client is connected but service is null");
            t = this.f3507p;
        }
        return t;
    }

    /* renamed from: I */
    protected abstract String m3435I();

    /* renamed from: J */
    protected abstract String m3434J();

    /* renamed from: K */
    protected String m3433K() {
        return "com.google.android.gms";
    }

    /* renamed from: L */
    protected boolean m3432L() {
        return false;
    }

    /* renamed from: M */
    protected void m3431M(T t) {
        this.f3494c = System.currentTimeMillis();
    }

    /* renamed from: N */
    protected void m3430N(b bVar) {
        this.f3495d = bVar.y1();
        this.f3496e = System.currentTimeMillis();
    }

    /* renamed from: O */
    protected void m3429O(int i) {
        this.f3492a = i;
        this.f3493b = System.currentTimeMillis();
    }

    /* renamed from: P */
    protected void m3428P(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.f3502k;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new k(this, i, iBinder, bundle)));
    }

    /* renamed from: Q */
    void m3427Q(int i, T t) {
    }

    /* renamed from: R */
    public boolean m3426R() {
        return false;
    }

    /* renamed from: S */
    public void m3425S(int i) {
        Handler handler = this.f3502k;
        handler.sendMessage(handler.obtainMessage(6, this.f3491A.get(), i));
    }

    /* renamed from: T */
    protected void m3424T(AbstractC0902c abstractC0902c, int i, PendingIntent pendingIntent) {
        C0931r.m3307l(abstractC0902c, "Connection progress callbacks cannot be null.");
        this.f3506o = abstractC0902c;
        Handler handler = this.f3502k;
        handler.sendMessage(handler.obtainMessage(3, this.f3491A.get(), i, pendingIntent));
    }

    /* renamed from: Z */
    protected final void m3418Z(int i, Bundle bundle, int i2) {
        Handler handler = this.f3502k;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new l(this, i, (Bundle) null)));
    }

    /* renamed from: b */
    public boolean m3416b() {
        boolean z;
        synchronized (this.f3503l) {
            z = this.f3510s == 4;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m3413d() {
        return false;
    }

    /* renamed from: f */
    public void m3410f(AbstractC0918k abstractC0918k, Set<Scope> set) {
        Throwable e;
        Bundle m3439E = m3439E();
        g gVar = new g(this.f3513v);
        gVar.i = this.f3499h.getPackageName();
        gVar.l = m3439E;
        if (set != null) {
            gVar.k = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (m3387u()) {
            gVar.m = m3442A() != null ? m3442A() : new Account("<<default account>>", "com.google");
            if (abstractC0918k != null) {
                gVar.j = abstractC0918k.asBinder();
            }
        } else if (m3426R()) {
            gVar.m = m3442A();
        }
        gVar.n = f3490B;
        gVar.o = m3441B();
        try {
            synchronized (this.f3504m) {
                AbstractC0922n abstractC0922n = this.f3505n;
                if (abstractC0922n != null) {
                    abstractC0922n.m3330m0(new j(this, this.f3491A.get()), gVar);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            m3425S(3);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m3428P(8, null, null, this.f3491A.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m3428P(8, null, null, this.f3491A.get());
        }
    }

    /* renamed from: g */
    public void m3408g(String str) {
        this.f3497f = str;
        m3398m();
    }

    /* renamed from: j */
    public boolean m3404j() {
        boolean z;
        synchronized (this.f3503l) {
            int i = this.f3510s;
            z = i == 2 || i == 3;
        }
        return z;
    }

    /* renamed from: k */
    public String m3402k() {
        C0941v0 c0941v0;
        if (!m3416b() || (c0941v0 = this.f3498g) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return c0941v0.m3230b();
    }

    /* renamed from: l */
    public void m3400l(AbstractC0902c abstractC0902c) {
        C0931r.m3307l(abstractC0902c, "Connection progress callbacks cannot be null.");
        this.f3506o = abstractC0902c;
        m3417a0(2, null);
    }

    /* renamed from: m */
    public void m3398m() {
        this.f3491A.incrementAndGet();
        synchronized (this.f3508q) {
            int size = this.f3508q.size();
            for (int i = 0; i < size; i++) {
                this.f3508q.get(i).m3372e();
            }
            this.f3508q.clear();
        }
        synchronized (this.f3504m) {
            this.f3505n = null;
        }
        m3417a0(1, null);
    }

    /* renamed from: n */
    public void m3396n(AbstractC0903e abstractC0903e) {
        abstractC0903e.m3377a();
    }

    /* renamed from: o */
    public void m3394o(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        AbstractC0922n abstractC0922n;
        synchronized (this.f3503l) {
            i = this.f3510s;
            t = this.f3507p;
        }
        synchronized (this.f3504m) {
            abstractC0922n = this.f3505n;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i == 4) {
            printWriter.print("CONNECTED");
        } else if (i != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) m3435I()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (abstractC0922n == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(abstractC0922n.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.f3494c > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.f3494c;
            String format = simpleDateFormat.format(new Date(this.f3494c));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.f3493b > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.f3492a;
            if (i2 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i2 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i2 != 3) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.f3493b;
            String format2 = simpleDateFormat.format(new Date(this.f3493b));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j2);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.f3496e > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) C0812b.m3690a(this.f3495d));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.f3496e;
            String format3 = simpleDateFormat.format(new Date(this.f3496e));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j3);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    /* renamed from: p */
    public boolean m3392p() {
        return true;
    }

    /* renamed from: q */
    public int m3391q() {
        return C0892f.f3472a;
    }

    /* renamed from: r */
    public final d[] m3390r() {
        n0 n0Var = this.f3517z;
        if (n0Var == null) {
            return null;
        }
        return n0Var.g;
    }

    /* renamed from: s */
    public String m3389s() {
        return this.f3497f;
    }

    /* renamed from: t */
    public Intent m3388t() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    /* renamed from: u */
    public boolean m3387u() {
        return false;
    }

    /* renamed from: v */
    public Bundle m3386v() {
        return null;
    }

    /* renamed from: w */
    public void m3385w() {
        int m3480j = this.f3501j.m3480j(this.f3499h, m3391q());
        if (m3480j == 0) {
            m3400l(new d(this));
            return;
        }
        m3417a0(1, null);
        m3424T(new d(this), m3480j, null);
    }

    /* renamed from: x */
    protected final void m3384x() {
        if (m3416b()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }

    /* renamed from: y */
    protected abstract T m3383y(IBinder iBinder);

    /* renamed from: z */
    protected boolean m3382z() {
        return false;
    }
}
