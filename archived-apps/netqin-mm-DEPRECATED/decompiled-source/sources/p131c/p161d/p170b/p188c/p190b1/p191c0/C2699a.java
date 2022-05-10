package p131c.p161d.p170b.p188c.p190b1.p191c0;

import android.net.Uri;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.b1.c0.a */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/c0/a.class */
public final class C2699a {

    /* renamed from: f */
    public static final C2699a f9854f = new C2699a(new long[0]);

    /* renamed from: a */
    public final int f9855a;

    /* renamed from: b */
    public final long[] f9856b;

    /* renamed from: c */
    public final C2700a[] f9857c;

    /* renamed from: d */
    public final long f9858d;

    /* renamed from: e */
    public final long f9859e;

    /* renamed from: c.d.b.c.b1.c0.a$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/c0/a$a.class */
    public static final class C2700a {

        /* renamed from: a */
        public final int f9860a;

        /* renamed from: b */
        public final Uri[] f9861b;

        /* renamed from: c */
        public final int[] f9862c;

        /* renamed from: d */
        public final long[] f9863d;

        public C2700a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        public C2700a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            C2877e.m28734a(iArr.length == uriArr.length);
            this.f9860a = i;
            this.f9862c = iArr;
            this.f9861b = uriArr;
            this.f9863d = jArr;
        }

        /* renamed from: a */
        public int m29278a() {
            return m29277a(-1);
        }

        /* renamed from: a */
        public int m29277a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f9862c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: b */
        public boolean m29276b() {
            return this.f9860a == -1 || m29278a() < this.f9860a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C2700a.class != obj.getClass()) {
                return false;
            }
            C2700a aVar = (C2700a) obj;
            if (this.f9860a != aVar.f9860a || !Arrays.equals(this.f9861b, aVar.f9861b) || !Arrays.equals(this.f9862c, aVar.f9862c) || !Arrays.equals(this.f9863d, aVar.f9863d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f9860a * 31) + Arrays.hashCode(this.f9861b)) * 31) + Arrays.hashCode(this.f9862c)) * 31) + Arrays.hashCode(this.f9863d);
        }
    }

    public C2699a(long... jArr) {
        int length = jArr.length;
        this.f9855a = length;
        this.f9856b = Arrays.copyOf(jArr, length);
        this.f9857c = new C2700a[length];
        for (int i = 0; i < length; i++) {
            this.f9857c[i] = new C2700a();
        }
        this.f9858d = 0L;
        this.f9859e = -9223372036854775807L;
    }

    /* renamed from: a */
    public int m29281a(long j) {
        int length = this.f9856b.length - 1;
        while (length >= 0 && m29280a(j, length)) {
            length--;
        }
        if (length < 0 || !this.f9857c[length].m29276b()) {
            length = -1;
        }
        return length;
    }

    /* renamed from: a */
    public int m29279a(long j, long j2) {
        int i = -1;
        if (j != Long.MIN_VALUE) {
            if (j2 == -9223372036854775807L || j < j2) {
                int i2 = 0;
                while (true) {
                    long[] jArr = this.f9856b;
                    if (i2 >= jArr.length || jArr[i2] == Long.MIN_VALUE || (j < jArr[i2] && this.f9857c[i2].m29276b())) {
                        break;
                    }
                    i2++;
                }
                i = -1;
                if (i2 < this.f9856b.length) {
                    i = i2;
                }
            } else {
                i = -1;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final boolean m29280a(long j, int i) {
        boolean z = false;
        boolean z2 = false;
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j2 = this.f9856b[i];
        if (j2 == Long.MIN_VALUE) {
            long j3 = this.f9859e;
            if (j3 == -9223372036854775807L || j < j3) {
                z2 = true;
            }
            return z2;
        }
        if (j < j2) {
            z = true;
        }
        return z;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2699a.class != obj.getClass()) {
            return false;
        }
        C2699a aVar = (C2699a) obj;
        if (!(this.f9855a == aVar.f9855a && this.f9858d == aVar.f9858d && this.f9859e == aVar.f9859e && Arrays.equals(this.f9856b, aVar.f9856b) && Arrays.equals(this.f9857c, aVar.f9857c))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((((this.f9855a * 31) + ((int) this.f9858d)) * 31) + ((int) this.f9859e)) * 31) + Arrays.hashCode(this.f9856b)) * 31) + Arrays.hashCode(this.f9857c);
    }
}
