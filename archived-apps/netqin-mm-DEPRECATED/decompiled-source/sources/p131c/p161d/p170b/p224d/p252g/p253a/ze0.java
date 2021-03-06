package p131c.p161d.p170b.p224d.p252g.p253a;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpt;
/* renamed from: c.d.b.d.g.a.ze0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ze0.class */
public final class ze0 extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: a */
    public final int[] f16437a = new int[1];

    /* renamed from: b */
    public Handler f16438b;

    /* renamed from: c */
    public SurfaceTexture f16439c;

    /* renamed from: d */
    public Error f16440d;

    /* renamed from: e */
    public RuntimeException f16441e;

    /* renamed from: f */
    public zzpt f16442f;

    public ze0() {
        super("dummySurface");
    }

    /* renamed from: a */
    public final zzpt m26005a(boolean z) {
        boolean z2;
        start();
        this.f16438b = new Handler(getLooper(), this);
        synchronized (this) {
            try {
                z2 = false;
                this.f16438b.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
                while (this.f16442f == null && this.f16441e == null && this.f16440d == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z2 = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f16441e;
        if (runtimeException == null) {
            Error error = this.f16440d;
            if (error == null) {
                return this.f16442f;
            }
            throw error;
        }
        throw runtimeException;
    }

    /* renamed from: a */
    public final void m26006a() {
        this.f16438b.sendEmptyMessage(3);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int[] iArr;
        int[] iArr2;
        int i = message.what;
        try {
            if (i == 1) {
                try {
                    boolean z = message.arg1 != 0;
                    EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                    zzoz.m11693b(eglGetDisplay != null, "eglGetDisplay failed");
                    int[] iArr3 = new int[2];
                    zzoz.m11693b(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
                    EGLConfig[] eGLConfigArr = new EGLConfig[1];
                    int[] iArr4 = new int[1];
                    zzoz.m11693b(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    if (z) {
                        iArr = new int[5];
                        iArr[0] = 12440;
                        iArr[1] = 2;
                        iArr[2] = 12992;
                        iArr[3] = 1;
                        iArr[4] = 12344;
                    } else {
                        iArr = new int[3];
                        iArr[0] = 12440;
                        iArr[1] = 2;
                        iArr[2] = 12344;
                    }
                    EGLContext eglCreateContext = EGL14.eglCreateContext(eglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
                    zzoz.m11693b(eglCreateContext != null, "eglCreateContext failed");
                    if (z) {
                        iArr2 = new int[7];
                        iArr2[0] = 12375;
                        iArr2[1] = 1;
                        iArr2[2] = 12374;
                        iArr2[3] = 1;
                        iArr2[4] = 12992;
                        iArr2[5] = 1;
                        iArr2[6] = 12344;
                    } else {
                        iArr2 = new int[5];
                        iArr2[0] = 12375;
                        iArr2[1] = 1;
                        iArr2[2] = 12374;
                        iArr2[3] = 1;
                        iArr2[4] = 12344;
                    }
                    EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eglGetDisplay, eGLConfig, iArr2, 0);
                    zzoz.m11693b(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                    zzoz.m11693b(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                    GLES20.glGenTextures(1, this.f16437a, 0);
                    SurfaceTexture surfaceTexture = new SurfaceTexture(this.f16437a[0]);
                    this.f16439c = surfaceTexture;
                    surfaceTexture.setOnFrameAvailableListener(this);
                    this.f16442f = new zzpt(this, this.f16439c, z);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e);
                    this.f16440d = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                    this.f16441e = e2;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                }
            } else if (i == 2) {
                this.f16439c.updateTexImage();
                return true;
            } else if (i != 3) {
                return true;
            } else {
                try {
                    this.f16439c.release();
                    this.f16442f = null;
                    this.f16439c = null;
                    GLES20.glDeleteTextures(1, this.f16437a, 0);
                    return true;
                } catch (Throwable th) {
                    try {
                        Log.e("DummySurface", "Failed to release dummy surface", th);
                        return true;
                    } finally {
                        quit();
                    }
                }
            }
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f16438b.sendEmptyMessage(2);
    }
}
