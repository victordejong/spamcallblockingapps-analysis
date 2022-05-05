package com.google.android.gms.internal.ads;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apb.class */
final class apb extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: a */
    private final int[] f8090a = new int[1];

    /* renamed from: b */
    private zzddu f8091b;

    /* renamed from: c */
    private SurfaceTexture f8092c;

    /* renamed from: d */
    private Error f8093d;

    /* renamed from: e */
    private RuntimeException f8094e;

    /* renamed from: f */
    private zzot f8095f;

    public apb() {
        super("dummySurface");
    }

    /* renamed from: a */
    public final zzot m4773a(boolean z) {
        boolean z2;
        start();
        this.f8091b = new zzddu(getLooper(), this);
        synchronized (this) {
            z2 = false;
            this.f8091b.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            while (this.f8095f == null && this.f8094e == null && this.f8093d == null) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f8094e;
        if (runtimeException == null) {
            Error error = this.f8093d;
            if (error == null) {
                return this.f8095f;
            }
            throw error;
        }
        throw runtimeException;
    }

    /* renamed from: a */
    public final void m4774a() {
        this.f8091b.sendEmptyMessage(3);
    }

    /* JADX WARN: Finally extract failed */
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
                    zzoc.checkState(eglGetDisplay != null, "eglGetDisplay failed");
                    int[] iArr3 = new int[2];
                    zzoc.checkState(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), "eglInitialize failed");
                    EGLConfig[] eGLConfigArr = new EGLConfig[1];
                    int[] iArr4 = new int[1];
                    zzoc.checkState(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr4, 0) && iArr4[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
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
                    zzoc.checkState(eglCreateContext != null, "eglCreateContext failed");
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
                    zzoc.checkState(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                    zzoc.checkState(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                    GLES20.glGenTextures(1, this.f8090a, 0);
                    this.f8092c = new SurfaceTexture(this.f8090a[0]);
                    this.f8092c.setOnFrameAvailableListener(this);
                    this.f8095f = new zzot(this, this.f8092c, z, (byte) 0);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (Error e) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e);
                    this.f8093d = e;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                } catch (RuntimeException e2) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                    this.f8094e = e2;
                    synchronized (this) {
                        notify();
                        return true;
                    }
                }
            } else if (i == 2) {
                this.f8092c.updateTexImage();
                return true;
            } else if (i != 3) {
                return true;
            } else {
                try {
                    this.f8092c.release();
                    this.f8095f = null;
                    this.f8092c = null;
                    GLES20.glDeleteTextures(1, this.f8090a, 0);
                } finally {
                    try {
                        quit();
                        return true;
                    } catch (Throwable th) {
                    }
                }
                quit();
                return true;
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
        this.f8091b.sendEmptyMessage(2);
    }
}
