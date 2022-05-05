package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacj.class */
public final class zzacj extends NativeAd.Image {

    /* renamed from: a */
    private final zzaci f10850a;

    /* renamed from: b */
    private final Drawable f10851b;

    /* renamed from: c */
    private final Uri f10852c;

    /* renamed from: d */
    private final double f10853d;

    /* renamed from: e */
    private final int f10854e;

    /* renamed from: f */
    private final int f10855f;

    /* JADX WARN: Can't wrap try/catch for region: R(18:2|(2:35|3)|(15:5|9|31|10|13|27|14|17|33|18|21|29|22|25|26)|8|9|31|10|13|27|14|17|33|18|21|29|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
        com.google.android.gms.internal.ads.zzayu.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005e, code lost:
        com.google.android.gms.internal.ads.zzayu.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007e, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007f, code lost:
        com.google.android.gms.internal.ads.zzayu.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009d, code lost:
        com.google.android.gms.internal.ads.zzayu.zzc("", r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzacj(com.google.android.gms.internal.ads.zzaci r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f10850a = r1
            r0 = 0
            r6 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzaci r0 = r0.f10850a     // Catch: RemoteException -> 0x0024
            com.google.android.gms.dynamic.IObjectWrapper r0 = r0.zzrc()     // Catch: RemoteException -> 0x0024
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002b
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r0)     // Catch: RemoteException -> 0x0024
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: RemoteException -> 0x0024
            r5 = r0
            goto L_0x002d
        L_0x0024:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzayu.zzc(r0, r1)
        L_0x002b:
            r0 = 0
            r5 = r0
        L_0x002d:
            r0 = r4
            r1 = r5
            r0.f10851b = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzaci r0 = r0.f10850a     // Catch: RemoteException -> 0x003f
            android.net.Uri r0 = r0.getUri()     // Catch: RemoteException -> 0x003f
            r5 = r0
            goto L_0x0048
        L_0x003f:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzayu.zzc(r0, r1)
            r0 = r6
            r5 = r0
        L_0x0048:
            r0 = r4
            r1 = r5
            r0.f10852c = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzaci r0 = r0.f10850a     // Catch: RemoteException -> 0x005d
            double r0 = r0.getScale()     // Catch: RemoteException -> 0x005d
            r9 = r0
            goto L_0x0067
        L_0x005d:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzayu.zzc(r0, r1)
            r0 = r7
            r9 = r0
        L_0x0067:
            r0 = r4
            r1 = r9
            r0.f10853d = r1
            r0 = -1
            r11 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzaci r0 = r0.f10850a     // Catch: RemoteException -> 0x007e
            int r0 = r0.getWidth()     // Catch: RemoteException -> 0x007e
            r12 = r0
            goto L_0x0088
        L_0x007e:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzayu.zzc(r0, r1)
            r0 = -1
            r12 = r0
        L_0x0088:
            r0 = r4
            r1 = r12
            r0.f10854e = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzaci r0 = r0.f10850a     // Catch: RemoteException -> 0x009c
            int r0 = r0.getHeight()     // Catch: RemoteException -> 0x009c
            r12 = r0
            goto L_0x00a7
        L_0x009c:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzayu.zzc(r0, r1)
            r0 = r11
            r12 = r0
        L_0x00a7:
            r0 = r4
            r1 = r12
            r0.f10855f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacj.<init>(com.google.android.gms.internal.ads.zzaci):void");
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f10851b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getHeight() {
        return this.f10855f;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.f10853d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.f10852c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getWidth() {
        return this.f10854e;
    }
}
