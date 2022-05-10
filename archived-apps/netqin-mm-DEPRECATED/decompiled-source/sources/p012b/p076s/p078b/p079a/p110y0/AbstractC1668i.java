package p012b.p076s.p078b.p079a.p110y0;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import java.util.List;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1590d;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1591e;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
/* renamed from: b.s.b.a.y0.i */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y0/i.class */
public interface AbstractC1668i {

    /* renamed from: b.s.b.a.y0.i$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/i$a.class */
    public static final class C1669a {

        /* renamed from: a */
        public final TrackGroup f6847a;

        /* renamed from: b */
        public final int[] f6848b;

        /* renamed from: c */
        public final int f6849c;

        /* renamed from: d */
        public final Object f6850d;

        public C1669a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public C1669a(TrackGroup trackGroup, int[] iArr, int i, Object obj) {
            this.f6847a = trackGroup;
            this.f6848b = iArr;
            this.f6849c = i;
            this.f6850d = obj;
        }
    }

    /* renamed from: b.s.b.a.y0.i$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/i$b.class */
    public interface AbstractC1670b {
        /* renamed from: a */
        AbstractC1668i[] mo32409a(C1669a[] aVarArr, AbstractC1679c cVar);
    }

    /* renamed from: a */
    Format mo32423a(int i);

    /* renamed from: a */
    TrackGroup mo32425a();

    /* renamed from: a */
    void mo32424a(float f);

    @Deprecated
    /* renamed from: a */
    void mo32421a(long j, long j2, long j3);

    /* renamed from: a */
    void mo32420a(long j, long j2, long j3, List<? extends AbstractC1590d> list, AbstractC1591e[] eVarArr);

    /* renamed from: a */
    boolean mo32422a(int i, long j);

    /* renamed from: b */
    int mo32419b();

    /* renamed from: b */
    int mo32418b(int i);

    /* renamed from: c */
    int mo32416c(int i);

    /* renamed from: c */
    void mo32417c();

    /* renamed from: d */
    Format mo32415d();

    /* renamed from: e */
    void mo32414e();

    /* renamed from: f */
    void mo32413f();

    /* renamed from: g */
    int mo32412g();

    /* renamed from: h */
    int mo32411h();

    /* renamed from: i */
    Object mo32410i();

    int length();
}
