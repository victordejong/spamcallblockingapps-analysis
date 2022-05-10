package com.google.android.gms.internal.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p131c.p161d.p170b.p224d.p252g.p253a.a70;
import p131c.p161d.p170b.p224d.p252g.p253a.b70;
import p131c.p161d.p170b.p224d.p252g.p253a.c70;
import p131c.p161d.p170b.p224d.p252g.p253a.e70;
import p131c.p161d.p170b.p224d.p252g.p253a.s60;
import p131c.p161d.p170b.p224d.p252g.p253a.t90;
import p131c.p161d.p170b.p224d.p252g.p253a.x60;
import p131c.p161d.p170b.p224d.p252g.p253a.z60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeip.class */
public abstract class zzeip implements Serializable, Iterable<Byte> {
    public static final zzeip zzier = new zzeiz(zzekb.f28089b);
    public static final b70 zzies;
    public static final Comparator<zzeip> zziet;
    public int zzidx = 0;

    static {
        zzies = s60.m26394a() ? new e70(null) : new a70(null);
        zziet = new z60();
    }

    public static zzeip zza(Iterator<zzeip> it, int i) {
        zzeip zzeipVar;
        if (i > 0) {
            if (i == 1) {
                zzeipVar = it.next();
            } else {
                int i2 = i >>> 1;
                zzeip zza = zza(it, i2);
                zzeip zza2 = zza(it, i - i2);
                if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - zza.size() >= zza2.size()) {
                    zzeipVar = zzemc.zza(zza, zza2);
                } else {
                    int size = zza.size();
                    int size2 = zza2.size();
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("ByteString would be too long: ");
                    sb.append(size);
                    sb.append("+");
                    sb.append(size2);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            return zzeipVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static void zzaa(int i, int i2) {
        if (((i2 - (i + 1)) | i) >= 0) {
            return;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    public static int zzb(byte b) {
        return b & 255;
    }

    public static zzeiy zzbei() {
        return new zzeiy(128);
    }

    public static c70 zzfw(int i) {
        return new c70(i, null);
    }

    public static zzeip zzg(InputStream inputStream) throws IOException {
        int read;
        ArrayList arrayList = new ArrayList();
        int i = 256;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
                i2 += read;
            }
            zzeip zzi = i2 == 0 ? null : zzi(bArr, 0, i2);
            if (zzi == null) {
                return zzl(arrayList);
            }
            arrayList.add(zzi);
            i = Math.min(i << 1, 8192);
        }
    }

    public static zzeip zzhu(String str) {
        return new zzeiz(str.getBytes(zzekb.f28088a));
    }

    public static int zzi(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else {
            StringBuilder sb3 = new StringBuilder(37);
            sb3.append("End index: ");
            sb3.append(i2);
            sb3.append(" >= ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    public static zzeip zzi(byte[] bArr, int i, int i2) {
        zzi(i, i + i2, bArr.length);
        return new zzeiz(zzies.mo27056a(bArr, i, i2));
    }

    public static zzeip zzl(Iterable<zzeip> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            int i2 = 0;
            Iterator<zzeip> it = iterable.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                it.next();
                i2++;
            }
        } else {
            i = ((Collection) iterable).size();
        }
        return i == 0 ? zzier : zza(iterable.iterator(), i);
    }

    public static zzeip zzu(byte[] bArr) {
        return zzi(bArr, 0, bArr.length);
    }

    public static zzeip zzv(byte[] bArr) {
        return new zzeiz(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzidx;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zzh = zzh(size, 0, size);
            i2 = zzh;
            if (zzh == 0) {
                i2 = 1;
            }
            this.zzidx = i2;
        }
        return i2;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract int size();

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return zzekb.f28089b;
        }
        byte[] bArr = new byte[size];
        zzb(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), size() <= 50 ? t90.m26325a(this) : String.valueOf(t90.m26325a(zzz(0, 47))).concat("..."));
    }

    public abstract String zza(Charset charset);

    public abstract void zza(zzeim zzeimVar) throws IOException;

    @Deprecated
    public final void zza(byte[] bArr, int i, int i2, int i3) {
        zzi(i, i + i3, size());
        zzi(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zzb(bArr, i, i2, i3);
        }
    }

    public abstract void zzb(byte[] bArr, int i, int i2, int i3);

    /* renamed from: zzbee */
    public zzeiu iterator() {
        return new x60(this);
    }

    public final String zzbef() {
        return size() == 0 ? "" : zza(zzekb.f28088a);
    }

    public abstract boolean zzbeg();

    public abstract zzeja zzbeh();

    public abstract int zzbej();

    public abstract boolean zzbek();

    public final int zzbel() {
        return this.zzidx;
    }

    public abstract byte zzfu(int i);

    public abstract byte zzfv(int i);

    public abstract int zzg(int i, int i2, int i3);

    public abstract int zzh(int i, int i2, int i3);

    public abstract zzeip zzz(int i, int i2);
}
