package p193e.p194a.p619d.p663x;

import com.truecaller.voip.manager.FailedChannelJoinReason;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.x.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/i.class */
public abstract class AbstractC12209i {

    /* renamed from: e.a.d.x.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/i$a.class */
    public static final class C12210a extends AbstractC12209i {

        /* renamed from: a */
        public final FailedChannelJoinReason f35671a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12210a(FailedChannelJoinReason failedChannelJoinReason) {
            super(null);
            l.e(failedChannelJoinReason, "reason");
            this.f35671a = failedChannelJoinReason;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C12210a) && l.a(this.f35671a, ((C12210a) obj).f35671a);
            }
            return true;
        }

        public int hashCode() {
            FailedChannelJoinReason failedChannelJoinReason = this.f35671a;
            return failedChannelJoinReason != null ? failedChannelJoinReason.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FailedChannelJoin(reason=");
            m8728C.append(this.f35671a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.x.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/i$b.class */
    public static final class C12211b extends AbstractC12209i {

        /* renamed from: a */
        public static final C12211b f35672a = new C12211b();

        public C12211b() {
            super(null);
        }
    }

    public AbstractC12209i() {
    }

    public AbstractC12209i(f fVar) {
    }
}
