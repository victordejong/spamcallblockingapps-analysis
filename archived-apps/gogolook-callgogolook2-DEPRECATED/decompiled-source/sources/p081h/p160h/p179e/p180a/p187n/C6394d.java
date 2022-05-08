package p081h.p160h.p179e.p180a.p187n;

import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p626l.C14984n;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.a.n.d */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/n/d.class */
public final class C6394d {

    /* renamed from: a */
    public static final C6394d f15916a = new C6394d();

    /* renamed from: a */
    public static final C14984n<NumInfo, Long, String> m22834a(String str) {
        C15149k.m377b(str, "num");
        return f15916a.m22839a(1, str);
    }

    /* renamed from: a */
    public static final void m22842a() {
        f15916a.m22841a(1);
    }

    /* renamed from: a */
    public static final void m22836a(long j) {
        f15916a.m22840a(1, j);
    }

    /* renamed from: a */
    public static /* synthetic */ void m22835a(C6394d dVar, int i, String str, String str2, Long l, NumInfo numInfo, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 8) != 0) {
            l = null;
        }
        if ((i2 & 16) != 0) {
            numInfo = null;
        }
        dVar.m22837a(i, str, str2, l, numInfo);
    }

    /* renamed from: a */
    public static final void m22833a(String str, NumInfo numInfo) {
        C15149k.m377b(str, "num");
        C15149k.m377b(numInfo, "numInfo");
        m22835a(f15916a, 1, str, null, null, numInfo, 12, null);
    }

    /* renamed from: a */
    public static final void m22832a(String str, String str2, long j, NumInfo numInfo) {
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "etag");
        C15149k.m377b(numInfo, "numInfo");
        f15916a.m22838a(1, str, str2, j, numInfo);
    }

    /* renamed from: a */
    public static final void m22831a(String str, String str2, Long l, NumInfo numInfo) {
        C15149k.m377b(str, "num");
        f15916a.m22837a(1, str, str2, l, numInfo);
    }

    /* renamed from: a */
    public final C14984n<NumInfo, Long, String> m22839a(int i, String str) {
        C15149k.m377b(str, "num");
        try {
            return i == 1 ? C6395e.f15918b.m22827a(str) : i == 0 ? C6397f.f15922d.m22817a(str) : new C14984n<>(null, 0L, null);
        } catch (Throwable th) {
            C6438i.m22583a(th);
            return new C14984n<>(null, 0L, null);
        }
    }

    /* renamed from: a */
    public final void m22841a(int i) {
        try {
            if (i == 1) {
                C6395e.f15918b.m22824b();
            } else if (i == 0) {
                C6397f.f15922d.m22811d();
            }
        } catch (Throwable th) {
            C6438i.m22583a(th);
        }
    }

    /* renamed from: a */
    public final void m22840a(int i, long j) {
        try {
            if (i == 1) {
                C6395e.f15918b.m22828a(j);
            } else if (i == 0) {
                C6397f.f15922d.m22819a(j);
            }
        } catch (Throwable th) {
            C6438i.m22583a(th);
        }
    }

    /* renamed from: a */
    public final void m22838a(int i, String str, String str2, long j, NumInfo numInfo) {
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "etag");
        C15149k.m377b(numInfo, "numInfo");
        try {
            if (i == 1) {
                C6395e.f15918b.m22826a(str, str2, j, numInfo);
            } else if (i == 0) {
                C6397f.f15922d.m22816a(str, str2, j, numInfo);
            }
        } catch (Throwable th) {
            C6438i.m22583a(th);
        }
    }

    /* renamed from: a */
    public final void m22837a(int i, String str, String str2, Long l, NumInfo numInfo) {
        C15149k.m377b(str, "num");
        try {
            if (i == 1) {
                C6395e.f15918b.m22825a(str, str2, l, numInfo);
            } else if (i == 0) {
                C6397f.f15922d.m22815a(str, str2, l, numInfo);
            }
        } catch (Throwable th) {
            C6438i.m22583a(th);
        }
    }
}
