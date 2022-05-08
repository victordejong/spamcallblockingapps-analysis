package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqk.class */
public abstract class zzdqk implements Serializable, Iterable<Byte> {

    /* renamed from: a */
    private static final ahk f14463a;

    /* renamed from: c */
    private static final Comparator<zzdqk> f14464c;
    public static final zzdqk zzhhx = new aho(zzdrv.zzhng);

    /* renamed from: b */
    private int f14465b = 0;

    static {
        f14463a = aha.m5427a() ? new ahn((byte) 0) : new ahj((byte) 0);
        f14464c = new ahh();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ int m3408a(byte b) {
        return b & 255;
    }

    /* renamed from: a */
    private static zzdqk m3402a(Iterator<zzdqk> it, int i) {
        zzdqk zzdqkVar;
        if (i > 0) {
            if (i == 1) {
                zzdqkVar = it.next();
            } else {
                int i2 = i >>> 1;
                zzdqk a = m3402a(it, i2);
                zzdqk a2 = m3402a(it, i - i2);
                if (Api.BaseClientBuilder.API_PRIORITY_OTHER - a.size() >= a2.size()) {
                    zzdqkVar = ajh.m5238a(a, a2);
                } else {
                    int size = a.size();
                    int size2 = a2.size();
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("ByteString would be too long: ");
                    sb.append(size);
                    sb.append("+");
                    sb.append(size2);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            return zzdqkVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdqk m3401a(byte[] bArr) {
        return new aho(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m3406a(int i, int i2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ahm m3398b(int i) {
        return new ahm(i, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static int m3395c(int i, int i2, int i3) {
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

    public static zzdqk zzf(InputStream inputStream) {
        int read;
        ArrayList arrayList = new ArrayList();
        int i = 256;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
                i2 += read;
            }
            zzdqk zzi = i2 == 0 ? null : zzi(bArr, 0, i2);
            if (zzi == null) {
                break;
            }
            arrayList.add(zzi);
            i = Math.min(i << 1, 8192);
        }
        int size = arrayList.size();
        return size == 0 ? zzhhx : m3402a(arrayList.iterator(), size);
    }

    public static zzdqk zzhf(String str) {
        return new aho(str.getBytes(zzdrv.f14562a));
    }

    public static zzdqk zzi(byte[] bArr, int i, int i2) {
        m3395c(i, i + i2, bArr.length);
        return new aho(f14463a.mo5401a(bArr, i, i2));
    }

    public static zzdqk zzu(byte[] bArr) {
        return zzi(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract byte mo3407a(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract int mo3409a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract int mo3405a(int i, int i2, int i3);

    /* renamed from: a */
    protected abstract String mo3403a(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo3404a(zzdqh zzdqhVar);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo3400a(byte[] bArr, int i, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract int mo3397b(int i, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract boolean mo3399b();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final int m3396c() {
        return this.f14465b;
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.f14465b;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int b = mo3397b(size, 0, size);
            i2 = b;
            if (b == 0) {
                i2 = 1;
            }
            this.f14465b = i2;
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
            return zzdrv.zzhng;
        }
        byte[] bArr = new byte[size];
        mo3400a(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), size() <= 50 ? akc.m5093a(this) : String.valueOf(akc.m5093a(zzy(0, 47))).concat("..."));
    }

    @Deprecated
    public final void zza(byte[] bArr, int i, int i2, int i3) {
        m3395c(i, i + i3, size());
        m3395c(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            mo3400a(bArr, i, i2, i3);
        }
    }

    /* renamed from: zzaxs */
    public zzdqp iterator() {
        return new ahf(this);
    }

    public final String zzaxt() {
        return size() == 0 ? "" : mo3403a(zzdrv.f14562a);
    }

    public abstract boolean zzaxu();

    public abstract zzdqw zzaxv();

    public abstract byte zzfe(int i);

    public abstract zzdqk zzy(int i, int i2);
}
