package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzct.class */
public abstract class zzct implements Serializable, Iterable<Byte> {

    /* renamed from: g */
    public static final zzct f7956g = new zzdd(zzeb.f8014b);

    /* renamed from: h */
    private static final zzcz f7957h;

    /* renamed from: f */
    private int f7958f = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.internal.icing.zzcx] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.gms.internal.icing.zzdg] */
    static {
        f7957h = zzcs.m13982a() ? new zzdg(null) : new zzcx(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static int m13979c(byte b) {
        return b & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static int m13975p(int i, int i2, int i3) {
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
    /* renamed from: t */
    public static zzdb m13974t(int i) {
        return new zzdb(i, null);
    }

    /* renamed from: u */
    public static zzct m13973u(String str) {
        return new zzdd(str.getBytes(zzeb.f8013a));
    }

    /* renamed from: d */
    protected abstract int mo13967d(int i, int i2, int i3);

    /* renamed from: e */
    public abstract zzct mo13966e(int i, int i2);

    public abstract boolean equals(Object obj);

    /* renamed from: f */
    protected abstract String mo13965f(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public abstract void mo13964g(zzcu zzcuVar) throws IOException;

    /* renamed from: h */
    public final String m13978h() {
        return size() == 0 ? "" : mo13965f(zzeb.f8013a);
    }

    public final int hashCode() {
        int i = this.f7958f;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int d = mo13967d(size, 0, size);
            i2 = d;
            if (d == 0) {
                i2 = 1;
            }
            this.f7958f = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzcw(this);
    }

    /* renamed from: j */
    public abstract boolean mo13963j();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public final int m13977k() {
        return this.f7958f;
    }

    /* renamed from: r */
    public abstract byte mo13962r(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public abstract byte mo13961s(int i);

    public abstract int size();

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), size() <= 50 ? zzgi.m13620a(this) : String.valueOf(zzgi.m13620a(mo13966e(0, 47))).concat("..."));
    }
}
