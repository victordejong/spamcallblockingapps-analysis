package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3695ji;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgn.class */
public final class zzcgn {

    /* renamed from: a */
    public final Clock f25989a;

    /* renamed from: b */
    public final Executor f25990b;

    public zzcgn(zzbag zzbagVar, Clock clock, Executor executor) {
        this.f25989a = clock;
        this.f25990b = executor;
    }

    /* renamed from: a */
    public final Bitmap m14290a(byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23812f3)).booleanValue()) {
            options.inJustDecodeBounds = true;
            m14289a(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) zzwm.m11166e().m16921a(zzabb.f23818g3)).intValue())) / 2);
            }
        }
        return m14289a(bArr, options);
    }

    /* renamed from: a */
    public final Bitmap m14289a(byte[] bArr, BitmapFactory.Options options) {
        long a = this.f25989a.mo17092a();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long a2 = this.f25989a.mo17092a();
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
            sb.append(a2 - a);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzayp.m16153g(sb.toString());
        }
        return decodeByteArray;
    }

    /* renamed from: a */
    public final zzdzc<Bitmap> m14291a(String str, double d, boolean z) {
        return zzdyq.m12993a(zzbag.m15971a(str), new C3695ji(this, d, z), this.f25990b);
    }
}
