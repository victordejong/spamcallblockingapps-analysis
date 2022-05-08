package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgr.class */
public abstract class zzgr implements Serializable, Iterable<Byte> {

    /* renamed from: g */
    public static final zzgr f8462g = new zzhb(zzic.f8534b);

    /* renamed from: h */
    private static final zzgx f8463h;

    /* renamed from: f */
    private int f8464f = 0;

    static {
        f8463h = zzgk.m12658b() ? new zzha(null) : new zzgv(null);
    }

    /* renamed from: h */
    public static zzgr m12634h(String str) {
        return new zzhb(str.getBytes(zzic.f8533a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static zzgr m12633j(byte[] bArr) {
        return new zzhb(bArr);
    }

    /* renamed from: k */
    public static zzgr m12632k(byte[] bArr, int i, int i2) {
        m12630t(i, i + i2, bArr.length);
        return new zzhb(f8463h.mo12619a(bArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public static int m12631s(byte b) {
        return b & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static int m12630t(int i, int i2, int i3) {
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
    /* renamed from: v */
    public static zzgz m12628v(int i) {
        return new zzgz(i, null);
    }

    /* renamed from: c */
    public abstract byte mo12618c(int i);

    /* renamed from: d */
    public abstract int mo12617d();

    public abstract boolean equals(Object obj);

    /* renamed from: f */
    protected abstract int mo12616f(int i, int i2, int i3);

    /* renamed from: g */
    public abstract zzgr mo12615g(int i, int i2);

    public final int hashCode() {
        int i = this.f8464f;
        int i2 = i;
        if (i == 0) {
            int d = mo12617d();
            int f = mo12616f(d, 0, d);
            i2 = f;
            if (f == 0) {
                i2 = 1;
            }
            this.f8464f = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzgq(this);
    }

    /* renamed from: n */
    protected abstract String mo12614n(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public abstract void mo12613p(zzgo zzgoVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public abstract byte mo12612r(int i);

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(mo12617d()), mo12617d() <= 50 ? zzkn.m12135a(this) : String.valueOf(zzkn.m12135a(mo12615g(0, 47))).concat("..."));
    }

    /* renamed from: u */
    public final String m12629u() {
        return mo12617d() == 0 ? "" : mo12614n(zzic.f8533a);
    }

    /* renamed from: w */
    public abstract boolean mo12611w();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: x */
    public final int m12627x() {
        return this.f8464f;
    }
}
