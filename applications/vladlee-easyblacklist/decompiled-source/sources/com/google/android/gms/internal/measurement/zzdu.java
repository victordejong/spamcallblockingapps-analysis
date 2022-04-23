package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdu.class */
public abstract class zzdu implements Serializable, Iterable<Byte> {

    /* renamed from: a */
    private static final AbstractC2516by f16199a;

    /* renamed from: c */
    private static final Comparator<zzdu> f16200c;
    public static final zzdu zza = new C2520cb(zzff.zzb);

    /* renamed from: b */
    private int f16201b = 0;

    static {
        f16199a = C2509br.m2898a() ? new C2522cd((byte) 0) : new C2514bw((byte) 0);
        f16200c = new C2512bu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ int m2310a(byte b) {
        return b & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2307a(int i, int i2, int i3) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdu m2304a(byte[] bArr) {
        return new C2520cb(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static C2519ca m2303b(int i) {
        return new C2519ca(i, (byte) 0);
    }

    public static zzdu zza(String str) {
        return new C2520cb(str.getBytes(zzff.f16286a));
    }

    public static zzdu zza(byte[] bArr, int i, int i2) {
        m2307a(i, i + i2, bArr.length);
        return new C2520cb(f16199a.mo2888a(bArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract byte mo2309a(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final int m2311a() {
        return this.f16201b;
    }

    /* renamed from: a */
    protected abstract int mo2308a(int i, int i2);

    /* renamed from: a */
    protected abstract String mo2305a(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo2306a(zzdv zzdvVar);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.f16201b;
        int i2 = i;
        if (i == 0) {
            int zza2 = zza();
            int a = mo2308a(zza2, zza2);
            i2 = a;
            if (a == 0) {
                i2 = 1;
            }
            this.f16201b = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new C2513bv(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()), zza() <= 50 ? C2581ei.m2610a(this) : String.valueOf(C2581ei.m2610a(zza(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zza();

    public abstract zzdu zza(int i, int i2);

    public final String zzb() {
        return zza() == 0 ? "" : mo2305a(zzff.f16286a);
    }

    public abstract boolean zzc();
}
