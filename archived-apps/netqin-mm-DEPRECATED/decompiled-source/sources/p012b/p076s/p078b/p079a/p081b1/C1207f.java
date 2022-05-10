package p012b.p076s.p078b.p079a.p081b1;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.b1.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b1/f.class */
public final class C1207f {

    /* renamed from: a */
    public final WindowManager f4848a;

    /* renamed from: b */
    public final Choreographer$FrameCallbackC1209b f4849b;

    /* renamed from: c */
    public final C1208a f4850c;

    /* renamed from: d */
    public long f4851d;

    /* renamed from: e */
    public long f4852e;

    /* renamed from: f */
    public long f4853f;

    /* renamed from: g */
    public long f4854g;

    /* renamed from: h */
    public long f4855h;

    /* renamed from: i */
    public boolean f4856i;

    /* renamed from: j */
    public long f4857j;

    /* renamed from: k */
    public long f4858k;

    /* renamed from: l */
    public long f4859l;

    /* renamed from: b.s.b.a.b1.f$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/b1/f$a.class */
    public final class C1208a implements DisplayManager.DisplayListener {

        /* renamed from: a */
        public final DisplayManager f4860a;

        public C1208a(DisplayManager displayManager) {
            this.f4860a = displayManager;
        }

        /* renamed from: a */
        public void m34219a() {
            this.f4860a.registerDisplayListener(this, null);
        }

        /* renamed from: b */
        public void m34218b() {
            this.f4860a.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                C1207f.this.m34220c();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* renamed from: b.s.b.a.b1.f$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/b1/f$b.class */
    public static final class Choreographer$FrameCallbackC1209b implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f */
        public static final Choreographer$FrameCallbackC1209b f4862f = new Choreographer$FrameCallbackC1209b();

        /* renamed from: a */
        public volatile long f4863a = -9223372036854775807L;

        /* renamed from: b */
        public final Handler f4864b;

        /* renamed from: c */
        public final HandlerThread f4865c;

        /* renamed from: d */
        public Choreographer f4866d;

        /* renamed from: e */
        public int f4867e;

        public Choreographer$FrameCallbackC1209b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f4865c = handlerThread;
            handlerThread.start();
            Handler a = C1167d0.m34484a(this.f4865c.getLooper(), (Handler.Callback) this);
            this.f4864b = a;
            a.sendEmptyMessage(0);
        }

        /* renamed from: f */
        public static Choreographer$FrameCallbackC1209b m34212f() {
            return f4862f;
        }

        /* renamed from: a */
        public void m34217a() {
            this.f4864b.sendEmptyMessage(1);
        }

        /* renamed from: b */
        public final void m34216b() {
            int i = this.f4867e + 1;
            this.f4867e = i;
            if (i == 1) {
                this.f4866d.postFrameCallback(this);
            }
        }

        /* renamed from: c */
        public final void m34215c() {
            this.f4866d = Choreographer.getInstance();
        }

        /* renamed from: d */
        public void m34214d() {
            this.f4864b.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f4863a = j;
            this.f4866d.postFrameCallbackDelayed(this, 500L);
        }

        /* renamed from: e */
        public final void m34213e() {
            int i = this.f4867e - 1;
            this.f4867e = i;
            if (i == 0) {
                this.f4866d.removeFrameCallback(this);
                this.f4863a = -9223372036854775807L;
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m34215c();
                return true;
            } else if (i == 1) {
                m34216b();
                return true;
            } else if (i != 2) {
                return false;
            } else {
                m34213e();
                return true;
            }
        }
    }

    public C1207f(Context context) {
        C1208a aVar = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.f4848a = (WindowManager) context.getSystemService("window");
        } else {
            this.f4848a = null;
        }
        if (this.f4848a != null) {
            this.f4850c = C1167d0.f4688a >= 17 ? m34224a(context) : aVar;
            this.f4849b = Choreographer$FrameCallbackC1209b.m34212f();
        } else {
            this.f4850c = null;
            this.f4849b = null;
        }
        this.f4851d = -9223372036854775807L;
        this.f4852e = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m34225a(long r7, long r9, long r11) {
        /*
            r0 = r9
            r1 = r7
            r2 = r9
            long r1 = r1 - r2
            r2 = r11
            long r1 = r1 / r2
            r2 = r11
            long r1 = r1 * r2
            long r0 = r0 + r1
            r9 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0021
            r0 = r9
            r1 = r11
            long r0 = r0 - r1
            r13 = r0
            r0 = r9
            r11 = r0
            r0 = r13
            r9 = r0
            goto L_0x0027
        L_0x0021:
            r0 = r11
            r1 = r9
            long r0 = r0 + r1
            r11 = r0
        L_0x0027:
            r0 = r11
            r1 = r7
            long r0 = r0 - r1
            r1 = r7
            r2 = r9
            long r1 = r1 - r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0035
            goto L_0x0038
        L_0x0035:
            r0 = r9
            r11 = r0
        L_0x0038:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p081b1.C1207f.m34225a(long, long, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [b.s.b.a.b1.f] */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m34226a(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p081b1.C1207f.m34226a(long, long):long");
    }

    /* renamed from: a */
    public final C1208a m34224a(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        return displayManager == null ? null : new C1208a(displayManager);
    }

    /* renamed from: a */
    public void m34227a() {
        if (this.f4848a != null) {
            C1208a aVar = this.f4850c;
            if (aVar != null) {
                aVar.m34218b();
            }
            this.f4849b.m34214d();
        }
    }

    /* renamed from: b */
    public void m34222b() {
        this.f4856i = false;
        if (this.f4848a != null) {
            this.f4849b.m34217a();
            C1208a aVar = this.f4850c;
            if (aVar != null) {
                aVar.m34219a();
            }
            m34220c();
        }
    }

    /* renamed from: b */
    public final boolean m34221b(long j, long j2) {
        return Math.abs((j2 - this.f4857j) - (j - this.f4858k)) > 20000000;
    }

    /* renamed from: c */
    public final void m34220c() {
        Display defaultDisplay = this.f4848a.getDefaultDisplay();
        if (defaultDisplay != null) {
            double refreshRate = defaultDisplay.getRefreshRate();
            Double.isNaN(refreshRate);
            long j = (long) (1.0E9d / refreshRate);
            this.f4851d = j;
            this.f4852e = (j * 80) / 100;
        }
    }
}
