package p012b.p076s.p078b.p079a.p102w0.p105n0.p106q;

import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.offline.StreamKey;
import java.util.Collections;
import java.util.List;
/* renamed from: b.s.b.a.w0.n0.q.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/f.class */
public final class C1623f extends AbstractC1625g {

    /* renamed from: d */
    public final int f6683d;

    /* renamed from: e */
    public final long f6684e;

    /* renamed from: f */
    public final long f6685f;

    /* renamed from: g */
    public final boolean f6686g;

    /* renamed from: h */
    public final int f6687h;

    /* renamed from: i */
    public final long f6688i;

    /* renamed from: j */
    public final int f6689j;

    /* renamed from: k */
    public final long f6690k;

    /* renamed from: l */
    public final boolean f6691l;

    /* renamed from: m */
    public final boolean f6692m;

    /* renamed from: n */
    public final DrmInitData f6693n;

    /* renamed from: o */
    public final List<C1624a> f6694o;

    /* renamed from: p */
    public final long f6695p;

    /* renamed from: b.s.b.a.w0.n0.q.f$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/f$a.class */
    public static final class C1624a implements Comparable<Long> {

        /* renamed from: a */
        public final String f6696a;

        /* renamed from: b */
        public final C1624a f6697b;

        /* renamed from: c */
        public final long f6698c;

        /* renamed from: d */
        public final int f6699d;

        /* renamed from: e */
        public final long f6700e;

        /* renamed from: f */
        public final DrmInitData f6701f;

        /* renamed from: g */
        public final String f6702g;

        /* renamed from: h */
        public final String f6703h;

        /* renamed from: i */
        public final long f6704i;

        /* renamed from: j */
        public final long f6705j;

        /* renamed from: k */
        public final boolean f6706k;

        public C1624a(String str, long j, long j2, String str2, String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j, j2, false);
        }

        public C1624a(String str, C1624a aVar, String str2, long j, int i, long j2, DrmInitData drmInitData, String str3, String str4, long j3, long j4, boolean z) {
            this.f6696a = str;
            this.f6697b = aVar;
            this.f6698c = j;
            this.f6699d = i;
            this.f6700e = j2;
            this.f6701f = drmInitData;
            this.f6702g = str3;
            this.f6703h = str4;
            this.f6704i = j3;
            this.f6705j = j4;
            this.f6706k = z;
        }

        /* renamed from: a */
        public int compareTo(Long l) {
            return this.f6700e > l.longValue() ? 1 : this.f6700e < l.longValue() ? -1 : 0;
        }
    }

    public C1623f(int i, String str, List<String> list, long j, long j2, boolean z, int i2, long j3, int i3, long j4, boolean z2, boolean z3, boolean z4, DrmInitData drmInitData, List<C1624a> list2) {
        super(str, list, z2);
        this.f6683d = i;
        this.f6685f = j2;
        this.f6686g = z;
        this.f6687h = i2;
        this.f6688i = j3;
        this.f6689j = i3;
        this.f6690k = j4;
        this.f6691l = z3;
        this.f6692m = z4;
        this.f6693n = drmInitData;
        this.f6694o = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            C1624a aVar = list2.get(list2.size() - 1);
            this.f6695p = aVar.f6700e + aVar.f6698c;
        } else {
            this.f6695p = 0L;
        }
        if (j == -9223372036854775807L) {
            j = -9223372036854775807L;
        } else if (j < 0) {
            j = this.f6695p + j;
        }
        this.f6684e = j;
    }

    /* renamed from: a */
    public C1623f m32553a() {
        return this.f6691l ? this : new C1623f(this.f6683d, this.f6707a, this.f6708b, this.f6684e, this.f6685f, this.f6686g, this.f6687h, this.f6688i, this.f6689j, this.f6690k, this.f6709c, true, this.f6692m, this.f6693n, this.f6694o);
    }

    /* renamed from: a */
    public C1623f m32552a(long j, int i) {
        return new C1623f(this.f6683d, this.f6707a, this.f6708b, this.f6684e, j, true, i, this.f6688i, this.f6689j, this.f6690k, this.f6709c, this.f6691l, this.f6692m, this.f6693n, this.f6694o);
    }

    @Override // p012b.p076s.p078b.p079a.p101v0.AbstractC1529a
    /* renamed from: a */
    public AbstractC1625g mo32550a(List<StreamKey> list) {
        return this;
    }

    /* renamed from: a */
    public boolean m32551a(C1623f fVar) {
        boolean z = true;
        if (fVar != null) {
            long j = this.f6688i;
            long j2 = fVar.f6688i;
            if (j > j2) {
                z = true;
            } else if (j < j2) {
                return false;
            } else {
                int size = this.f6694o.size();
                int size2 = fVar.f6694o.size();
                z = true;
                if (size <= size2) {
                    z = size == size2 && this.f6691l && !fVar.f6691l;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public long m32549b() {
        return this.f6685f + this.f6695p;
    }
}
