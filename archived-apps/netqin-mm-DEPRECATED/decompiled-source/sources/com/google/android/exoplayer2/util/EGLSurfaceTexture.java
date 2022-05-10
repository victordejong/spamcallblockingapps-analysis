package com.google.android.exoplayer2.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2892m;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture.class */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: h */
    public static final int[] f22566h = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a */
    public final Handler f22567a;

    /* renamed from: b */
    public final int[] f22568b;

    /* renamed from: c */
    public final AbstractC7209b f22569c;

    /* renamed from: d */
    public EGLDisplay f22570d;

    /* renamed from: e */
    public EGLContext f22571e;

    /* renamed from: f */
    public EGLSurface f22572f;

    /* renamed from: g */
    public SurfaceTexture f22573g;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture$GlException.class */
    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.EGLSurfaceTexture$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/EGLSurfaceTexture$b.class */
    public interface AbstractC7209b {
        /* renamed from: a */
        void m18234a();
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    public EGLSurfaceTexture(Handler handler, AbstractC7209b bVar) {
        this.f22567a = handler;
        this.f22569c = bVar;
        this.f22568b = new int[1];
    }

    /* renamed from: a */
    public static EGLConfig m18241a(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f22566h, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (eglChooseConfig && iArr[0] > 0 && eGLConfigArr[0] != null) {
            return eGLConfigArr[0];
        }
        throw new GlException(C2885h0.m28665a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
    }

    /* renamed from: a */
    public static EGLContext m18240a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new GlException("eglCreateContext failed");
    }

    /* renamed from: a */
    public static EGLSurface m18239a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i) {
        EGLSurface eGLSurface;
        if (i == 1) {
            eGLSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eGLSurface == null) {
                throw new GlException("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext)) {
            return eGLSurface;
        }
        throw new GlException("eglMakeCurrent failed");
    }

    /* renamed from: a */
    public static void m18238a(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        C2892m.m28615a();
    }

    /* renamed from: d */
    public static EGLDisplay m18235d() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr = new int[2];
            if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                return eglGetDisplay;
            }
            throw new GlException("eglInitialize failed");
        }
        throw new GlException("eglGetDisplay failed");
    }

    /* renamed from: a */
    public final void m18243a() {
        AbstractC7209b bVar = this.f22569c;
        if (bVar != null) {
            bVar.m18234a();
        }
    }

    /* renamed from: a */
    public void m18242a(int i) {
        EGLDisplay d = m18235d();
        this.f22570d = d;
        EGLConfig a = m18241a(d);
        EGLContext a2 = m18240a(this.f22570d, a, i);
        this.f22571e = a2;
        this.f22572f = m18239a(this.f22570d, a, a2, i);
        m18238a(this.f22568b);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f22568b[0]);
        this.f22573g = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* renamed from: b */
    public SurfaceTexture m18237b() {
        SurfaceTexture surfaceTexture = this.f22573g;
        C2877e.m28737a(surfaceTexture);
        return surfaceTexture;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public void m18236c() {
        this.f22567a.removeCallbacks(this);
        try {
            if (this.f22573g != null) {
                this.f22573g.release();
                GLES20.glDeleteTextures(1, this.f22568b, 0);
            }
            EGLDisplay eGLDisplay = this.f22570d;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f22570d;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f22572f;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f22570d, this.f22572f);
            }
            EGLContext eGLContext = this.f22571e;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f22570d, eGLContext);
            }
            if (C2885h0.f10477a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f22570d;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f22570d);
            }
            this.f22570d = null;
            this.f22571e = null;
            this.f22572f = null;
            this.f22573g = null;
        } catch (Throwable th) {
            EGLDisplay eGLDisplay4 = this.f22570d;
            if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay5 = this.f22570d;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface4 = this.f22572f;
            if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f22570d, this.f22572f);
            }
            EGLContext eGLContext2 = this.f22571e;
            if (eGLContext2 != null) {
                EGL14.eglDestroyContext(this.f22570d, eGLContext2);
            }
            if (C2885h0.f10477a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay6 = this.f22570d;
            if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f22570d);
            }
            this.f22570d = null;
            this.f22571e = null;
            this.f22572f = null;
            this.f22573g = null;
            throw th;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f22567a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        m18243a();
        SurfaceTexture surfaceTexture = this.f22573g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
