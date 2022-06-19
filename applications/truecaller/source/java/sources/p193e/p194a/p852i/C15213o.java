package p193e.p194a.p852i;

import com.truecaller.log.AssertionUtil;
import com.truecaller.log.UnmutedException;
import w3.c.a.a.a.h;
@Deprecated
/* renamed from: e.a.i.o */
/* loaded from: classes2-dex2jar.jar:e/a/i/o.class */
public class C15213o {

    /* renamed from: c */
    public static final C15213o f43288c = new C15215b("").m19046a();

    /* renamed from: a */
    public final String f43289a;

    /* renamed from: b */
    public final String f43290b;

    /* renamed from: e.a.i.o$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/o$b.class */
    public static class C15215b {

        /* renamed from: a */
        public String f43291a = "";

        /* renamed from: b */
        public final String f43292b;

        public C15215b(String str) {
            this.f43292b = str;
        }

        /* renamed from: a */
        public C15213o m19046a() {
            if (this.f43291a == null) {
                AssertionUtil.reportThrowableButNeverCrash(new UnmutedException.AdsIllegalStateException(UnmutedException.AdsIllegalStateException.Cause.CAMPAIGN_CONFIG_NULL_KEY));
            }
            if (this.f43292b == null) {
                AssertionUtil.reportThrowableButNeverCrash(new UnmutedException.AdsIllegalStateException(UnmutedException.AdsIllegalStateException.Cause.CAMPAIGN_CONFIG_NULL_PLACEMENT));
            }
            return new C15213o(this, null);
        }
    }

    public C15213o(C15215b c15215b, C15214a c15214a) {
        this.f43289a = c15215b.f43291a;
        this.f43290b = c15215b.f43292b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        boolean z = false;
        if (obj == null || C15213o.class != obj.getClass()) {
            return false;
        }
        C15213o c15213o = (C15213o) obj;
        if (!this.f43289a.equals(c15213o.f43289a) || !h.e(this.f43290b, c15213o.f43290b) || !h.e((CharSequence) null, (CharSequence) null) || !h.e((CharSequence) null, (CharSequence) null)) {
            z = true;
        }
        return !z;
    }

    public int hashCode() {
        return ((((((((this.f43290b.hashCode() + (((this.f43289a.hashCode() * 31) + 0) * 31)) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0;
    }
}
