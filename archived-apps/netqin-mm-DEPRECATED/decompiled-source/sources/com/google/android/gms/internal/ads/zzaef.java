package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaef.class */
public final class zzaef extends NativeAd.Image {

    /* renamed from: a */
    public final zzaee f24060a;

    /* renamed from: b */
    public final Drawable f24061b;

    /* renamed from: c */
    public final Uri f24062c;

    /* renamed from: d */
    public final double f24063d;

    /* renamed from: e */
    public final int f24064e;

    /* renamed from: f */
    public final int f24065f;

    /* JADX WARN: Can't wrap try/catch for region: R(19:2|27|3|(15:5|9|29|10|13|35|14|17|33|18|21|31|22|25|26)|8|9|29|10|13|35|14|17|33|18|21|31|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        com.google.android.gms.internal.ads.zzbbq.m15855b("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005a, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        com.google.android.gms.internal.ads.zzbbq.m15855b("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
        com.google.android.gms.internal.ads.zzbbq.m15855b("", r5);
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0099, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
        com.google.android.gms.internal.ads.zzbbq.m15855b("", r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaef(com.google.android.gms.internal.ads.zzaee r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f24060a = r1
            r0 = 0
            r6 = r0
            r0 = r5
            com.google.android.gms.dynamic.IObjectWrapper r0 = r0.mo16833U1()     // Catch: RemoteException -> 0x0021
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0028
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.dynamic.ObjectWrapper.m17021Q(r0)     // Catch: RemoteException -> 0x0021
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: RemoteException -> 0x0021
            r5 = r0
            goto L_0x002a
        L_0x0021:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzbbq.m15855b(r0, r1)
        L_0x0028:
            r0 = 0
            r5 = r0
        L_0x002a:
            r0 = r4
            r1 = r5
            r0.f24061b = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzaee r0 = r0.f24060a     // Catch: RemoteException -> 0x003c
            android.net.Uri r0 = r0.mo16832o()     // Catch: RemoteException -> 0x003c
            r5 = r0
            goto L_0x0045
        L_0x003c:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzbbq.m15855b(r0, r1)
            r0 = r6
            r5 = r0
        L_0x0045:
            r0 = r4
            r1 = r5
            r0.f24062c = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzaee r0 = r0.f24060a     // Catch: RemoteException -> 0x005a
            double r0 = r0.getScale()     // Catch: RemoteException -> 0x005a
            r9 = r0
            goto L_0x0064
        L_0x005a:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzbbq.m15855b(r0, r1)
            r0 = r7
            r9 = r0
        L_0x0064:
            r0 = r4
            r1 = r9
            r0.f24063d = r1
            r0 = -1
            r11 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzaee r0 = r0.f24060a     // Catch: RemoteException -> 0x007b
            int r0 = r0.getWidth()     // Catch: RemoteException -> 0x007b
            r12 = r0
            goto L_0x0085
        L_0x007b:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzbbq.m15855b(r0, r1)
            r0 = -1
            r12 = r0
        L_0x0085:
            r0 = r4
            r1 = r12
            r0.f24064e = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzaee r0 = r0.f24060a     // Catch: RemoteException -> 0x0099
            int r0 = r0.getHeight()     // Catch: RemoteException -> 0x0099
            r12 = r0
            goto L_0x00a4
        L_0x0099:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzbbq.m15855b(r0, r1)
            r0 = r11
            r12 = r0
        L_0x00a4:
            r0 = r4
            r1 = r12
            r0.f24065f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaef.<init>(com.google.android.gms.internal.ads.zzaee):void");
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f24061b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getHeight() {
        return this.f24065f;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.f24063d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.f24062c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getWidth() {
        return this.f24064e;
    }
}
