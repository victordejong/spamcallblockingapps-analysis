package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
import p131c.p161d.p170b.p224d.p252g.p253a.ze0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpt.class */
public final class zzpt extends Surface {

    /* renamed from: c */
    public static boolean f28799c;

    /* renamed from: d */
    public static boolean f28800d;

    /* renamed from: a */
    public final ze0 f28801a;

    /* renamed from: b */
    public boolean f28802b;

    public zzpt(ze0 ze0Var, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f28801a = ze0Var;
    }

    /* renamed from: a */
    public static zzpt m11609a(Context context, boolean z) {
        if (zzpq.f28786a >= 17) {
            zzoz.m11694b(!z || m11610a(context));
            return new ze0().m26005a(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    /* renamed from: a */
    public static boolean m11610a(Context context) {
        boolean z;
        synchronized (zzpt.class) {
            try {
                if (!f28800d) {
                    if (zzpq.f28786a >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                z2 = false;
                                if (!(zzpq.f28786a == 24 && (zzpq.f28789d.startsWith("SM-G950") || zzpq.f28789d.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) {
                                    z2 = true;
                                }
                            }
                        }
                        f28799c = z2;
                    }
                    f28800d = true;
                }
                z = f28799c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f28801a) {
            if (!this.f28802b) {
                this.f28801a.m26006a();
                this.f28802b = true;
            }
        }
    }
}
