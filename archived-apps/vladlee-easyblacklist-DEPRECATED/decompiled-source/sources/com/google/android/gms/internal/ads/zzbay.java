package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbay.class */
public final class zzbay {

    /* renamed from: a */
    private final Context f11632a;

    /* renamed from: b */
    private final String f11633b;

    /* renamed from: c */
    private final zzazb f11634c;

    /* renamed from: d */
    private final zzaac f11635d;

    /* renamed from: e */
    private final zzaae f11636e;

    /* renamed from: g */
    private final long[] f11638g;

    /* renamed from: h */
    private final String[] f11639h;

    /* renamed from: m */
    private boolean f11644m;

    /* renamed from: n */
    private zzbag f11645n;

    /* renamed from: o */
    private boolean f11646o;

    /* renamed from: p */
    private boolean f11647p;

    /* renamed from: f */
    private final zzaxg f11637f = new zzaxl().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzxa();

    /* renamed from: i */
    private boolean f11640i = false;

    /* renamed from: j */
    private boolean f11641j = false;

    /* renamed from: k */
    private boolean f11642k = false;

    /* renamed from: l */
    private boolean f11643l = false;

    /* renamed from: q */
    private long f11648q = -1;

    public zzbay(Context context, zzazb zzazbVar, String str, zzaae zzaaeVar, zzaac zzaacVar) {
        this.f11632a = context;
        this.f11634c = zzazbVar;
        this.f11633b = str;
        this.f11636e = zzaaeVar;
        this.f11635d = zzaacVar;
        String str2 = (String) zzve.zzoy().zzd(zzzn.zzcha);
        if (str2 == null) {
            this.f11639h = new String[0];
            this.f11638g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.f11639h = new String[split.length];
        this.f11638g = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.f11638g[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzavs.zzd("Unable to parse frame hash target time number.", e);
                this.f11638g[i] = -1;
            }
        }
    }

    public final void onStop() {
        if (zzabm.zzcux.get().booleanValue() && !this.f11646o) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.f11633b);
            bundle.putString("player", this.f11645n.zzxo());
            for (zzaxi zzaxiVar : this.f11637f.zzwz()) {
                String valueOf = String.valueOf(zzaxiVar.name);
                bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzaxiVar.count));
                String valueOf2 = String.valueOf(zzaxiVar.name);
                bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzaxiVar.zzdtz));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.f11638g;
                if (i < jArr.length) {
                    String str = this.f11639h[i];
                    if (str != null) {
                        String valueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 3);
                        sb.append("fh_");
                        sb.append(valueOf3);
                        bundle.putString(sb.toString(), str);
                    }
                    i++;
                } else {
                    zzq.zzkq().zza(this.f11632a, this.f11634c.zzbma, "gmob-apps", bundle, true);
                    this.f11646o = true;
                    return;
                }
            }
        }
    }

    public final void zzb(zzbag zzbagVar) {
        zzzv.zza(this.f11636e, this.f11635d, "vpc2");
        this.f11640i = true;
        zzaae zzaaeVar = this.f11636e;
        if (zzaaeVar != null) {
            zzaaeVar.zzh("vpn", zzbagVar.zzxo());
        }
        this.f11645n = zzbagVar;
    }

    public final void zzc(zzbag zzbagVar) {
        if (this.f11642k && !this.f11643l) {
            if (zzavs.zzvs() && !this.f11643l) {
                zzavs.zzed("VideoMetricsMixin first frame");
            }
            zzzv.zza(this.f11636e, this.f11635d, "vff2");
            this.f11643l = true;
        }
        long nanoTime = zzq.zzkx().nanoTime();
        if (this.f11644m && this.f11647p && this.f11648q != -1) {
            this.f11637f.zza(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.f11648q));
        }
        this.f11647p = this.f11644m;
        this.f11648q = nanoTime;
        long longValue = ((Long) zzve.zzoy().zzd(zzzn.zzchb)).longValue();
        long currentPosition = zzbagVar.getCurrentPosition();
        int i = 0;
        while (true) {
            String[] strArr = this.f11639h;
            if (i >= strArr.length) {
                return;
            }
            if (strArr[i] != null || longValue <= Math.abs(currentPosition - this.f11638g[i])) {
                i++;
            } else {
                String[] strArr2 = this.f11639h;
                Bitmap bitmap = zzbagVar.getBitmap(8, 8);
                long j = 63;
                long j2 = 0;
                for (int i2 = 0; i2 < 8; i2++) {
                    int i3 = 0;
                    while (i3 < 8) {
                        int pixel = bitmap.getPixel(i3, i2);
                        j2 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j);
                        i3++;
                        j--;
                    }
                }
                strArr2[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
        }
    }

    public final void zzer() {
        if (this.f11640i && !this.f11641j) {
            zzzv.zza(this.f11636e, this.f11635d, "vfr2");
            this.f11641j = true;
        }
    }

    public final void zzyi() {
        this.f11644m = true;
        if (this.f11641j && !this.f11642k) {
            zzzv.zza(this.f11636e, this.f11635d, "vfp2");
            this.f11642k = true;
        }
    }

    public final void zzyj() {
        this.f11644m = false;
    }
}
