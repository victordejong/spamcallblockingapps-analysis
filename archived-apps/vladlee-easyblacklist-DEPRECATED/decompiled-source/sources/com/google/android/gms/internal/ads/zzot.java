package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzot.class */
public final class zzot extends Surface {

    /* renamed from: a */
    private static boolean f15264a;

    /* renamed from: b */
    private static boolean f15265b;

    /* renamed from: c */
    private final boolean f15266c;

    /* renamed from: d */
    private final apb f15267d;

    /* renamed from: e */
    private boolean f15268e;

    private zzot(apb apbVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f15267d = apbVar;
        this.f15266c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzot(apb apbVar, SurfaceTexture surfaceTexture, boolean z, byte b) {
        this(apbVar, surfaceTexture, z);
    }

    public static zzot zzc(Context context, boolean z) {
        if (zzoq.SDK_INT >= 17) {
            zzoc.checkState(!z || zzc(context));
            return new apb().m4773a(z);
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    public static boolean zzc(Context context) {
        boolean z;
        synchronized (zzot.class) {
            try {
                if (!f15265b) {
                    if (zzoq.SDK_INT >= 17) {
                        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                        boolean z2 = false;
                        if (eglQueryString != null) {
                            z2 = false;
                            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                                z2 = false;
                                if (!(zzoq.SDK_INT == 24 && (zzoq.MODEL.startsWith("SM-G950") || zzoq.MODEL.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) {
                                    z2 = true;
                                }
                            }
                        }
                        f15264a = z2;
                    }
                    f15265b = true;
                }
                z = f15264a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f15267d) {
            if (!this.f15268e) {
                this.f15267d.m4774a();
                this.f15268e = true;
            }
        }
    }
}
