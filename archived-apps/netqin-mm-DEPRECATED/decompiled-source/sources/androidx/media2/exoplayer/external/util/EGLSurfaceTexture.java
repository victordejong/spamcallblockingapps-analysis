package androidx.media2.exoplayer.external.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1173h;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture.class */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: h */
    public static final int[] f2009h = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a */
    public final Handler f2010a;

    /* renamed from: b */
    public final int[] f2011b;

    /* renamed from: c */
    public final AbstractC0355b f2012c;

    /* renamed from: d */
    public EGLDisplay f2013d;

    /* renamed from: e */
    public EGLContext f2014e;

    /* renamed from: f */
    public EGLSurface f2015f;

    /* renamed from: g */
    public SurfaceTexture f2016g;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException.class */
    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.util.EGLSurfaceTexture$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EGLSurfaceTexture$b.class */
    public interface AbstractC0355b {
        /* renamed from: a */
        void m37890a();
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    public EGLSurfaceTexture(Handler handler, AbstractC0355b bVar) {
        this.f2010a = handler;
        this.f2012c = bVar;
        this.f2011b = new int[1];
    }

    /* renamed from: a */
    public static EGLConfig m37897a(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f2009h, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (eglChooseConfig && iArr[0] > 0 && eGLConfigArr[0] != null) {
            return eGLConfigArr[0];
        }
        throw new GlException(C1167d0.m34473a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
    }

    /* renamed from: a */
    public static EGLContext m37896a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new GlException("eglCreateContext failed");
    }

    /* renamed from: a */
    public static EGLSurface m37895a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i) {
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
    public static void m37894a(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        C1173h.m34421a();
    }

    /* renamed from: d */
    public static EGLDisplay m37891d() {
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
    public final void m37899a() {
        AbstractC0355b bVar = this.f2012c;
        if (bVar != null) {
            bVar.m37890a();
        }
    }

    /* renamed from: a */
    public void m37898a(int i) {
        EGLDisplay d = m37891d();
        this.f2013d = d;
        EGLConfig a = m37897a(d);
        EGLContext a2 = m37896a(this.f2013d, a, i);
        this.f2014e = a2;
        this.f2015f = m37895a(this.f2013d, a, a2, i);
        m37894a(this.f2011b);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f2011b[0]);
        this.f2016g = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* renamed from: b */
    public SurfaceTexture m37893b() {
        SurfaceTexture surfaceTexture = this.f2016g;
        C1160a.m34522a(surfaceTexture);
        return surfaceTexture;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public void m37892c() {
        this.f2010a.removeCallbacks(this);
        try {
            if (this.f2016g != null) {
                this.f2016g.release();
                GLES20.glDeleteTextures(1, this.f2011b, 0);
            }
            EGLDisplay eGLDisplay = this.f2013d;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f2013d;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f2015f;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f2013d, this.f2015f);
            }
            EGLContext eGLContext = this.f2014e;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f2013d, eGLContext);
            }
            if (C1167d0.f4688a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f2013d;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f2013d);
            }
            this.f2013d = null;
            this.f2014e = null;
            this.f2015f = null;
            this.f2016g = null;
        } catch (Throwable th) {
            EGLDisplay eGLDisplay4 = this.f2013d;
            if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay5 = this.f2013d;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface4 = this.f2015f;
            if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f2013d, this.f2015f);
            }
            EGLContext eGLContext2 = this.f2014e;
            if (eGLContext2 != null) {
                EGL14.eglDestroyContext(this.f2013d, eGLContext2);
            }
            if (C1167d0.f4688a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay6 = this.f2013d;
            if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f2013d);
            }
            this.f2013d = null;
            this.f2014e = null;
            this.f2015f = null;
            this.f2016g = null;
            throw th;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f2010a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        m37899a();
        SurfaceTexture surfaceTexture = this.f2016g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException e) {
            }
        }
    }
}
