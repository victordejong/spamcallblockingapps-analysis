package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzkt.class */
public final class zzkt {

    /* renamed from: a */
    private final String f15046a;

    /* renamed from: b */
    private final MediaCodecInfo.CodecCapabilities f15047b;
    public final String name;
    public final boolean zzajo;
    public final boolean zzaxn;
    public final boolean zzaxo;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzkt(java.lang.String r4, java.lang.String r5, android.media.MediaCodecInfo.CodecCapabilities r6, boolean r7, boolean r8) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzoc.checkNotNull(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.name = r1
            r0 = r3
            r1 = r5
            r0.f15046a = r1
            r0 = r3
            r1 = r6
            r0.f15047b = r1
            r0 = 1
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L_0x004a
            r0 = r6
            if (r0 == 0) goto L_0x004a
            int r0 = com.google.android.gms.internal.ads.zzoq.SDK_INT
            r1 = 19
            if (r0 < r1) goto L_0x003c
            r0 = r6
            java.lang.String r1 = "adaptive-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x003c
            r0 = 1
            r10 = r0
            goto L_0x003f
        L_0x003c:
            r0 = 0
            r10 = r0
        L_0x003f:
            r0 = r10
            if (r0 == 0) goto L_0x004a
            r0 = 1
            r7 = r0
            goto L_0x004d
        L_0x004a:
            r0 = 0
            r7 = r0
        L_0x004d:
            r0 = r3
            r1 = r7
            r0.zzaxn = r1
            r0 = r6
            if (r0 == 0) goto L_0x007c
            int r0 = com.google.android.gms.internal.ads.zzoq.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x006e
            r0 = r6
            java.lang.String r1 = "tunneled-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x006e
            r0 = 1
            r10 = r0
            goto L_0x0071
        L_0x006e:
            r0 = 0
            r10 = r0
        L_0x0071:
            r0 = r10
            if (r0 == 0) goto L_0x007c
            r0 = 1
            r7 = r0
            goto L_0x007f
        L_0x007c:
            r0 = 0
            r7 = r0
        L_0x007f:
            r0 = r3
            r1 = r7
            r0.zzajo = r1
            r0 = r9
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L_0x00bb
            r0 = r6
            if (r0 == 0) goto L_0x00b8
            int r0 = com.google.android.gms.internal.ads.zzoq.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x00a9
            r0 = r6
            java.lang.String r1 = "secure-playback"
            boolean r0 = r0.isFeatureSupported(r1)
            if (r0 == 0) goto L_0x00a9
            r0 = 1
            r10 = r0
            goto L_0x00ac
        L_0x00a9:
            r0 = 0
            r10 = r0
        L_0x00ac:
            r0 = r10
            if (r0 == 0) goto L_0x00b8
            r0 = r9
            r7 = r0
            goto L_0x00bb
        L_0x00b8:
            r0 = 0
            r7 = r0
        L_0x00bb:
            r0 = r3
            r1 = r7
            r0.zzaxo = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    /* renamed from: a */
    private final void m3199a(String str) {
        String str2 = this.name;
        String str3 = this.f15046a;
        String str4 = zzoq.zzbgv;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        Log.d("MediaCodecInfo", sb.toString());
    }

    /* renamed from: a */
    private static boolean m3200a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    public static zzkt zza(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new zzkt(str, str2, codecCapabilities, z, z2);
    }

    public static zzkt zzbd(String str) {
        return new zzkt(str, null, null, false, false);
    }

    public final boolean zza(int i, int i2, double d) {
        String sb;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f15047b;
        if (codecCapabilities == null) {
            sb = "sizeAndRate.caps";
        } else {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities == null) {
                sb = "sizeAndRate.vCaps";
            } else if (m3200a(videoCapabilities, i, i2, d)) {
                return true;
            } else {
                if (i >= i2 || !m3200a(videoCapabilities, i2, i, d)) {
                    StringBuilder sb2 = new StringBuilder(69);
                    sb2.append("sizeAndRate.support, ");
                    sb2.append(i);
                    sb2.append("x");
                    sb2.append(i2);
                    sb2.append("x");
                    sb2.append(d);
                    sb = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder(69);
                    sb3.append("sizeAndRate.rotated, ");
                    sb3.append(i);
                    sb3.append("x");
                    sb3.append(i2);
                    sb3.append("x");
                    sb3.append(d);
                    String sb4 = sb3.toString();
                    String str = this.name;
                    String str2 = this.f15046a;
                    String str3 = zzoq.zzbgv;
                    StringBuilder sb5 = new StringBuilder(String.valueOf(sb4).length() + 25 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
                    sb5.append("AssumedSupport [");
                    sb5.append(sb4);
                    sb5.append("] [");
                    sb5.append(str);
                    sb5.append(", ");
                    sb5.append(str2);
                    sb5.append("] [");
                    sb5.append(str3);
                    sb5.append("]");
                    Log.d("MediaCodecInfo", sb5.toString());
                    return true;
                }
            }
        }
        m3199a(sb);
        return false;
    }

    public final boolean zzaq(int i) {
        String sb;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f15047b;
        if (codecCapabilities == null) {
            sb = "sampleRate.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                sb = "sampleRate.aCaps";
            } else if (audioCapabilities.isSampleRateSupported(i)) {
                return true;
            } else {
                StringBuilder sb2 = new StringBuilder(31);
                sb2.append("sampleRate.support, ");
                sb2.append(i);
                sb = sb2.toString();
            }
        }
        m3199a(sb);
        return false;
    }

    public final boolean zzar(int i) {
        String sb;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f15047b;
        if (codecCapabilities == null) {
            sb = "channelCount.caps";
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                sb = "channelCount.aCaps";
            } else if (audioCapabilities.getMaxInputChannelCount() >= i) {
                return true;
            } else {
                StringBuilder sb2 = new StringBuilder(33);
                sb2.append("channelCount.support, ");
                sb2.append(i);
                sb = sb2.toString();
            }
        }
        m3199a(sb);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzbe(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzbe(java.lang.String):boolean");
    }

    public final Point zzd(int i, int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f15047b;
        if (codecCapabilities == null) {
            m3199a("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m3199a("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(zzoq.zzf(i, widthAlignment) * widthAlignment, zzoq.zzf(i2, heightAlignment) * heightAlignment);
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzgu() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f15047b;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : this.f15047b.profileLevels;
    }
}
