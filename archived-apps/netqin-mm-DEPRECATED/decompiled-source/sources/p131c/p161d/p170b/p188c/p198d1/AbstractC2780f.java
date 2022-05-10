package p131c.p161d.p170b.p188c.p198d1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2822f;
/* renamed from: c.d.b.c.d1.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/d1/f.class */
public interface AbstractC2780f {

    /* renamed from: c.d.b.c.d1.f$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/d1/f$a.class */
    public static final class C2781a {

        /* renamed from: a */
        public final TrackGroup f10129a;

        /* renamed from: b */
        public final int[] f10130b;

        /* renamed from: c */
        public final int f10131c;

        /* renamed from: d */
        public final Object f10132d;

        public C2781a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public C2781a(TrackGroup trackGroup, int[] iArr, int i, Object obj) {
            this.f10129a = trackGroup;
            this.f10130b = iArr;
            this.f10131c = i;
            this.f10132d = obj;
        }
    }

    /* renamed from: c.d.b.c.d1.f$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/d1/f$b.class */
    public interface AbstractC2782b {
        /* renamed from: a */
        AbstractC2780f[] mo29021a(C2781a[] aVarArr, AbstractC2822f fVar);
    }

    /* renamed from: a */
    Format mo29028a(int i);

    /* renamed from: a */
    TrackGroup mo29030a();

    /* renamed from: a */
    void mo29029a(float f);

    /* renamed from: b */
    int mo29027b();

    /* renamed from: b */
    int mo29026b(int i);

    /* renamed from: c */
    void mo29025c();

    /* renamed from: d */
    Format mo29024d();

    /* renamed from: e */
    void mo29023e();

    /* renamed from: f */
    void mo29022f();

    int length();
}
