package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbax.class */
public final class zzbax extends Thread implements SurfaceTexture.OnFrameAvailableListener, AbstractC1915gz {

    /* renamed from: a */
    private static final float[] f11604a = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};

    /* renamed from: A */
    private volatile boolean f11605A;

    /* renamed from: B */
    private volatile boolean f11606B;

    /* renamed from: b */
    private final C1913gx f11607b;

    /* renamed from: k */
    private float f11616k;

    /* renamed from: l */
    private float f11617l;

    /* renamed from: m */
    private int f11618m;

    /* renamed from: n */
    private int f11619n;

    /* renamed from: o */
    private SurfaceTexture f11620o;

    /* renamed from: p */
    private SurfaceTexture f11621p;

    /* renamed from: q */
    private int f11622q;

    /* renamed from: r */
    private int f11623r;

    /* renamed from: s */
    private int f11624s;

    /* renamed from: w */
    private EGL10 f11628w;

    /* renamed from: x */
    private EGLDisplay f11629x;

    /* renamed from: y */
    private EGLContext f11630y;

    /* renamed from: z */
    private EGLSurface f11631z;

    /* renamed from: t */
    private FloatBuffer f11625t = ByteBuffer.allocateDirect(f11604a.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();

    /* renamed from: c */
    private final float[] f11608c = new float[9];

    /* renamed from: d */
    private final float[] f11609d = new float[9];

    /* renamed from: e */
    private final float[] f11610e = new float[9];

    /* renamed from: f */
    private final float[] f11611f = new float[9];

    /* renamed from: g */
    private final float[] f11612g = new float[9];

    /* renamed from: h */
    private final float[] f11613h = new float[9];

    /* renamed from: i */
    private final float[] f11614i = new float[9];

    /* renamed from: j */
    private float f11615j = Float.NaN;

    /* renamed from: u */
    private final CountDownLatch f11626u = new CountDownLatch(1);

    /* renamed from: v */
    private final Object f11627v = new Object();

    public zzbax(Context context) {
        super("SphericalVideoProcessor");
        this.f11625t.put(f11604a).position(0);
        this.f11607b = new C1913gx(context);
        this.f11607b.m4718a(this);
    }

    /* renamed from: a */
    private static int m4170a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        m4169a("createShader");
        int i2 = glCreateShader;
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            m4169a("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            m4169a("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            m4169a("getShaderiv");
            i2 = glCreateShader;
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                m4169a("deleteShader");
                i2 = 0;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static void m4169a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    /* renamed from: a */
    private static void m4168a(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    /* renamed from: a */
    private static void m4167a(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    /* renamed from: a */
    private final boolean m4171a() {
        EGLSurface eGLSurface = this.f11631z;
        boolean z = false;
        if (eGLSurface != null) {
            z = false;
            if (eGLSurface != EGL10.EGL_NO_SURFACE) {
                EGL10 egl10 = this.f11628w;
                EGLDisplay eGLDisplay = this.f11629x;
                EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
                z = this.f11628w.eglDestroySurface(this.f11629x, this.f11631z) | egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT) | false;
                this.f11631z = null;
            }
        }
        EGLContext eGLContext = this.f11630y;
        boolean z2 = z;
        if (eGLContext != null) {
            z2 = z | this.f11628w.eglDestroyContext(this.f11629x, eGLContext);
            this.f11630y = null;
        }
        EGLDisplay eGLDisplay2 = this.f11629x;
        boolean z3 = z2;
        if (eGLDisplay2 != null) {
            z3 = z2 | this.f11628w.eglTerminate(eGLDisplay2);
            this.f11629x = null;
        }
        return z3;
    }

    /* renamed from: b */
    private static void m4166b(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f11624s++;
        synchronized (this.f11627v) {
            this.f11627v.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0621  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x062c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0358  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbax.run():void");
    }

    public final void zza(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f11619n = i;
        this.f11618m = i2;
        this.f11621p = surfaceTexture;
    }

    public final void zzb(float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.f11619n;
        int i2 = this.f11618m;
        float f6 = f * 1.7453293f;
        if (i > i2) {
            f5 = f6 / i;
            f3 = f2 * 1.7453293f;
            f4 = i;
        } else {
            f5 = f6 / i2;
            f3 = f2 * 1.7453293f;
            f4 = i2;
        }
        this.f11616k -= f5;
        this.f11617l -= f3 / f4;
        if (this.f11617l < -1.5707964f) {
            this.f11617l = -1.5707964f;
        }
        if (this.f11617l > 1.5707964f) {
            this.f11617l = 1.5707964f;
        }
    }

    public final void zzm(int i, int i2) {
        synchronized (this.f11627v) {
            this.f11619n = i;
            this.f11618m = i2;
            this.f11605A = true;
            this.f11627v.notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1915gz
    public final void zztq() {
        synchronized (this.f11627v) {
            this.f11627v.notifyAll();
        }
    }

    public final void zzyf() {
        synchronized (this.f11627v) {
            this.f11606B = true;
            this.f11621p = null;
            this.f11627v.notifyAll();
        }
    }

    public final SurfaceTexture zzyg() {
        if (this.f11621p == null) {
            return null;
        }
        try {
            this.f11626u.await();
        } catch (InterruptedException e) {
        }
        return this.f11620o;
    }
}
