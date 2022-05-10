package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface.class */
public final class DummySurface extends Surface {

    /* renamed from: c */
    public static int f22579c;

    /* renamed from: d */
    public static boolean f22580d;

    /* renamed from: a */
    public final HandlerThreadC7212b f22581a;

    /* renamed from: b */
    public boolean f22582b;

    /* renamed from: com.google.android.exoplayer2.video.DummySurface$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/DummySurface$b.class */
    public static class HandlerThreadC7212b extends HandlerThread implements Handler.Callback {

        /* renamed from: a */
        public EGLSurfaceTexture f22583a;

        /* renamed from: b */
        public Handler f22584b;

        /* renamed from: c */
        public Error f22585c;

        /* renamed from: d */
        public RuntimeException f22586d;

        /* renamed from: e */
        public DummySurface f22587e;

        public HandlerThreadC7212b() {
            super("dummySurface");
        }

        /* renamed from: a */
        public DummySurface m18228a(int i) {
            boolean z;
            start();
            this.f22584b = new Handler(getLooper(), this);
            this.f22583a = new EGLSurfaceTexture(this.f22584b);
            synchronized (this) {
                try {
                    z = false;
                    this.f22584b.obtainMessage(1, i, 0).sendToTarget();
                    while (this.f22587e == null && this.f22586d == null && this.f22585c == null) {
                        try {
                            wait();
                        } catch (InterruptedException e) {
                            z = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f22586d;
            if (runtimeException == null) {
                Error error = this.f22585c;
                if (error == null) {
                    DummySurface dummySurface = this.f22587e;
                    C2877e.m28737a(dummySurface);
                    return dummySurface;
                }
                throw error;
            }
            throw runtimeException;
        }

        /* renamed from: a */
        public void m18229a() {
            C2877e.m28737a(this.f22584b);
            this.f22584b.sendEmptyMessage(2);
        }

        /* renamed from: b */
        public final void m18227b() {
            C2877e.m28737a(this.f22583a);
            this.f22583a.m18236c();
        }

        /* renamed from: b */
        public final void m18226b(int i) {
            C2877e.m28737a(this.f22583a);
            this.f22583a.m18242a(i);
            this.f22587e = new DummySurface(this, this.f22583a.m18237b(), i != 0);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i == 1) {
                    try {
                        m18226b(message.arg1);
                        synchronized (this) {
                            notify();
                        }
                        return true;
                    } catch (Error e) {
                        C2894o.m28599a("DummySurface", "Failed to initialize dummy surface", e);
                        this.f22585c = e;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    } catch (RuntimeException e2) {
                        C2894o.m28599a("DummySurface", "Failed to initialize dummy surface", e2);
                        this.f22586d = e2;
                        synchronized (this) {
                            notify();
                            return true;
                        }
                    }
                } else if (i != 2) {
                    return true;
                } else {
                    try {
                        m18227b();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
            } catch (Throwable th) {
                synchronized (this) {
                    try {
                        notify();
                        throw th;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public DummySurface(HandlerThreadC7212b bVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f22581a = bVar;
    }

    /* renamed from: a */
    public static int m18232a(Context context) {
        String eglQueryString;
        if (C2885h0.f10477a < 26 && ("samsung".equals(C2885h0.f10479c) || "XT1650".equals(C2885h0.f10480d))) {
            return 0;
        }
        if ((C2885h0.f10477a < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains("EGL_EXT_protected_content")) {
            return 0;
        }
        return eglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2;
    }

    /* renamed from: a */
    public static DummySurface m18231a(Context context, boolean z) {
        m18233a();
        int i = 0;
        C2877e.m28731b(!z || m18230b(context));
        HandlerThreadC7212b bVar = new HandlerThreadC7212b();
        if (z) {
            i = f22579c;
        }
        return bVar.m18228a(i);
    }

    /* renamed from: a */
    public static void m18233a() {
        if (C2885h0.f10477a < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
    }

    /* renamed from: b */
    public static boolean m18230b(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            try {
                z = true;
                if (!f22580d) {
                    f22579c = C2885h0.f10477a < 24 ? 0 : m18232a(context);
                    f22580d = true;
                }
                if (f22579c == 0) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f22581a) {
            if (!this.f22582b) {
                this.f22581a.m18229a();
                this.f22582b = true;
            }
        }
    }
}
