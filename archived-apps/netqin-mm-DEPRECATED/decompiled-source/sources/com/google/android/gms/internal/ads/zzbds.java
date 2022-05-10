package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3983r7;
import p131c.p161d.p170b.p224d.p252g.p253a.C3943q7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbds.class */
public final class zzbds extends Thread implements SurfaceTexture.OnFrameAvailableListener, AbstractC3983r7 {

    /* renamed from: B */
    public static final float[] f24816B = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};

    /* renamed from: A */
    public volatile boolean f24817A;

    /* renamed from: a */
    public final C3943q7 f24818a;

    /* renamed from: j */
    public float f24827j;

    /* renamed from: k */
    public float f24828k;

    /* renamed from: l */
    public int f24829l;

    /* renamed from: m */
    public int f24830m;

    /* renamed from: n */
    public SurfaceTexture f24831n;

    /* renamed from: o */
    public SurfaceTexture f24832o;

    /* renamed from: p */
    public int f24833p;

    /* renamed from: q */
    public int f24834q;

    /* renamed from: r */
    public int f24835r;

    /* renamed from: s */
    public FloatBuffer f24836s;

    /* renamed from: v */
    public EGL10 f24839v;

    /* renamed from: w */
    public EGLDisplay f24840w;

    /* renamed from: x */
    public EGLContext f24841x;

    /* renamed from: y */
    public EGLSurface f24842y;

    /* renamed from: z */
    public volatile boolean f24843z;

    /* renamed from: b */
    public final float[] f24819b = new float[9];

    /* renamed from: c */
    public final float[] f24820c = new float[9];

    /* renamed from: d */
    public final float[] f24821d = new float[9];

    /* renamed from: e */
    public final float[] f24822e = new float[9];

    /* renamed from: f */
    public final float[] f24823f = new float[9];

    /* renamed from: g */
    public final float[] f24824g = new float[9];

    /* renamed from: h */
    public final float[] f24825h = new float[9];

    /* renamed from: i */
    public float f24826i = Float.NaN;

    /* renamed from: t */
    public final CountDownLatch f24837t = new CountDownLatch(1);

    /* renamed from: u */
    public final Object f24838u = new Object();

    public zzbds(Context context) {
        super("SphericalVideoProcessor");
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(f24816B.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f24836s = asFloatBuffer;
        asFloatBuffer.put(f24816B).position(0);
        C3943q7 q7Var = new C3943q7(context);
        this.f24818a = q7Var;
        q7Var.m26526a(this);
    }

    /* renamed from: a */
    public static int m15762a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        m15760a("createShader");
        int i2 = glCreateShader;
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            m15760a("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            m15760a("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            m15760a("getShaderiv");
            i2 = glCreateShader;
            if (iArr[0] == 0) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Could not compile shader ");
                sb.append(i);
                sb.append(":");
                Log.e("SphericalVideoRenderer", sb.toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                m15760a("deleteShader");
                i2 = 0;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static void m15760a(String str) {
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
    public static void m15759a(float[] fArr, float f) {
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
    public static void m15758a(float[] fArr, float[] fArr2, float[] fArr3) {
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

    /* renamed from: b */
    public static void m15756b(float[] fArr, float f) {
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

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3983r7
    /* renamed from: a */
    public final void mo15765a() {
        synchronized (this.f24838u) {
            this.f24838u.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m15764a(float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.f24830m;
        int i2 = this.f24829l;
        if (i > i2) {
            f5 = (f * 1.7453293f) / i;
            f3 = f2 * 1.7453293f;
            f4 = i;
        } else {
            f5 = (f * 1.7453293f) / i2;
            f3 = f2 * 1.7453293f;
            f4 = i2;
        }
        this.f24827j -= f5;
        float f6 = this.f24828k - (f3 / f4);
        this.f24828k = f6;
        if (f6 < -1.5707964f) {
            this.f24828k = -1.5707964f;
        }
        if (this.f24828k > 1.5707964f) {
            this.f24828k = 1.5707964f;
        }
    }

    /* renamed from: a */
    public final void m15763a(int i, int i2) {
        synchronized (this.f24838u) {
            this.f24830m = i;
            this.f24829l = i2;
            this.f24843z = true;
            this.f24838u.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m15761a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f24830m = i;
        this.f24829l = i2;
        this.f24832o = surfaceTexture;
    }

    /* renamed from: b */
    public final void m15757b() {
        synchronized (this.f24838u) {
            this.f24817A = true;
            this.f24832o = null;
            this.f24838u.notifyAll();
        }
    }

    /* renamed from: c */
    public final SurfaceTexture m15755c() {
        if (this.f24832o == null) {
            return null;
        }
        try {
            this.f24837t.await();
        } catch (InterruptedException e) {
        }
        return this.f24831n;
    }

    @VisibleForTesting
    /* renamed from: d */
    public final boolean m15754d() {
        EGLSurface eGLSurface = this.f24842y;
        boolean z = false;
        if (eGLSurface != null) {
            EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
            z = false;
            if (eGLSurface != eGLSurface2) {
                z = this.f24839v.eglDestroySurface(this.f24840w, this.f24842y) | this.f24839v.eglMakeCurrent(this.f24840w, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT) | false;
                this.f24842y = null;
            }
        }
        EGLContext eGLContext = this.f24841x;
        boolean z2 = z;
        if (eGLContext != null) {
            z2 = z | this.f24839v.eglDestroyContext(this.f24840w, eGLContext);
            this.f24841x = null;
        }
        EGLDisplay eGLDisplay = this.f24840w;
        boolean z3 = z2;
        if (eGLDisplay != null) {
            z3 = z2 | this.f24839v.eglTerminate(eGLDisplay);
            this.f24840w = null;
        }
        return z3;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f24835r++;
        synchronized (this.f24838u) {
            this.f24838u.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0619  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0342  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbds.run():void");
    }
}
