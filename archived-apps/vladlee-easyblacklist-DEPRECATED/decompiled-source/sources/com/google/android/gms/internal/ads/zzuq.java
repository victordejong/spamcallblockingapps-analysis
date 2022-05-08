package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdSize;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuq.class */
public final class zzuq {

    /* renamed from: a */
    private final AdSize[] f15587a;

    /* renamed from: b */
    private final String f15588b;

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.String, android.content.res.TypedArray] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzuq(android.content.Context r5, android.util.AttributeSet r6) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r5
            android.content.res.Resources r0 = r0.getResources()
            r1 = r6
            int[] r2 = com.google.android.gms.ads.C1537R.styleable.AdsAttrs
            android.content.res.TypedArray r0 = r0.obtainAttributes(r1, r2)
            r5 = r0
            r0 = r5
            int r1 = com.google.android.gms.ads.C1537R.styleable.AdsAttrs_adSize
            java.lang.String r0 = r0.getString(r1)
            r7 = r0
            r0 = r5
            int r1 = com.google.android.gms.ads.C1537R.styleable.AdsAttrs_adSizes
            java.lang.String r0 = r0.getString(r1)
            r6 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0045
            r0 = r9
            if (r0 != 0) goto L_0x0045
            r0 = r4
            r1 = r7
            com.google.android.gms.ads.AdSize[] r1 = m2993a(r1)
            r0.f15587a = r1
            goto L_0x0057
        L_0x0045:
            r0 = r8
            if (r0 != 0) goto L_0x0077
            r0 = r9
            if (r0 == 0) goto L_0x0077
            r0 = r4
            r1 = r6
            com.google.android.gms.ads.AdSize[] r1 = m2993a(r1)
            r0.f15587a = r1
        L_0x0057:
            r0 = r4
            r1 = r5
            int r2 = com.google.android.gms.ads.C1537R.styleable.AdsAttrs_adUnitId
            java.lang.String r1 = r1.getString(r2)
            r0.f15588b = r1
            r0 = r4
            java.lang.String r0 = r0.f15588b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x006d
            return
        L_0x006d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Required XML attribute \"adUnitId\" was missing."
            r1.<init>(r2)
            throw r0
        L_0x0077:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0088
            r0 = r5
            java.lang.String r1 = "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."
            r0.<init>(r1)
            r0 = r5
            throw r0
        L_0x0088:
            r0 = r5
            java.lang.String r1 = "Required XML attribute \"adSize\" was missing."
            r0.<init>(r1)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuq.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: a */
    private static AdSize[] m2993a(String str) {
        String[] split = str.split("\\s*,\\s*");
        AdSize[] adSizeArr = new AdSize[split.length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    adSizeArr[i] = new AdSize("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    String valueOf = String.valueOf(trim);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.BANNER;
            } else if ("LARGE_BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.LARGE_BANNER;
            } else if ("FULL_BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.FULL_BANNER;
            } else if ("LEADERBOARD".equals(trim)) {
                adSizeArr[i] = AdSize.LEADERBOARD;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                adSizeArr[i] = AdSize.MEDIUM_RECTANGLE;
            } else if ("SMART_BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.SMART_BANNER;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                adSizeArr[i] = AdSize.WIDE_SKYSCRAPER;
            } else if ("FLUID".equals(trim)) {
                adSizeArr[i] = AdSize.FLUID;
            } else if ("ICON".equals(trim)) {
                adSizeArr[i] = AdSize.zzabf;
            } else {
                String valueOf2 = String.valueOf(trim);
                throw new IllegalArgumentException(valueOf2.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf2) : new String("Could not parse XML attribute \"adSize\": "));
            }
        }
        if (adSizeArr.length != 0) {
            return adSizeArr;
        }
        String valueOf3 = String.valueOf(str);
        throw new IllegalArgumentException(valueOf3.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf3) : new String("Could not parse XML attribute \"adSize\": "));
    }

    public final String getAdUnitId() {
        return this.f15588b;
    }

    public final AdSize[] zzy(boolean z) {
        if (z || this.f15587a.length == 1) {
            return this.f15587a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }
}
