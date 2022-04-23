package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyl.class */
public final class zzbyl {

    /* renamed from: a */
    private final zzaxk f12718a;

    /* renamed from: b */
    private final Clock f12719b;

    /* renamed from: c */
    private final Executor f12720c;

    public zzbyl(zzaxk zzaxkVar, Clock clock, Executor executor) {
        this.f12718a = zzaxkVar;
        this.f12719b = clock;
        this.f12720c = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ Bitmap m3851a(zzbyl zzbylVar, byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqa)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zzbylVar.m3850a(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) zzve.zzoy().zzd(zzzn.zzcqb)).intValue())) / 2);
            }
        }
        return zzbylVar.m3850a(bArr, options);
    }

    /* renamed from: a */
    private final Bitmap m3850a(byte[] bArr, BitmapFactory.Options options) {
        long elapsedRealtime = this.f12719b.elapsedRealtime();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long elapsedRealtime2 = this.f12719b.elapsedRealtime();
        if (Build.VERSION.SDK_INT >= 19 && decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            StringBuilder sb = new StringBuilder(108);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(elapsedRealtime2 - elapsedRealtime);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzavs.zzed(sb.toString());
        }
        return decodeByteArray;
    }

    public final zzdhe<Bitmap> zza(String str, double d, boolean z) {
        return zzdgs.zzb(zzaxk.zzeq(str), new C2117ol(this, d, z), this.f12720c);
    }
}
