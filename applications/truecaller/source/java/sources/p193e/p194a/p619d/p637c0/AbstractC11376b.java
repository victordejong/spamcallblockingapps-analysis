package p193e.p194a.p619d.p637c0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p373a.p378c.p380m.C8279b;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/b.class */
public abstract class AbstractC11376b {

    /* renamed from: e.a.d.c0.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/b$a.class */
    public static final class C11377a extends AbstractC11376b {

        /* renamed from: a */
        public final String f33428a;

        /* renamed from: b */
        public final String f33429b;

        /* renamed from: c */
        public final List<C8279b> f33430c;

        /* renamed from: d */
        public final List<String> f33431d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11377a(String str, String str2, List<C8279b> list, List<String> list2) {
            super(null);
            l.e(str, "names");
            l.e(str2, "other");
            l.e(list, "groupAvatarConfigs");
            l.e(list2, "numbers");
            this.f33428a = str;
            this.f33429b = str2;
            this.f33430c = list;
            this.f33431d = list2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11377a)) {
                    return false;
                }
                C11377a c11377a = (C11377a) obj;
                return l.a(this.f33428a, c11377a.f33428a) && l.a(this.f33429b, c11377a.f33429b) && l.a(this.f33430c, c11377a.f33430c) && l.a(this.f33431d, c11377a.f33431d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f33428a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f33429b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            List<C8279b> list = this.f33430c;
            int hashCode3 = list != null ? list.hashCode() : 0;
            List<String> list2 = this.f33431d;
            if (list2 != null) {
                i = list2.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Group(names=");
            m8728C.append(this.f33428a);
            m8728C.append(", other=");
            m8728C.append(this.f33429b);
            m8728C.append(", groupAvatarConfigs=");
            m8728C.append(this.f33430c);
            m8728C.append(", numbers=");
            return C22128a.m8602l(m8728C, this.f33431d, ")");
        }
    }

    /* renamed from: e.a.d.c0.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/b$b.class */
    public static final class C11378b extends AbstractC11376b {

        /* renamed from: a */
        public final String f33432a;

        /* renamed from: b */
        public final AvatarXConfig f33433b;

        /* renamed from: c */
        public final String f33434c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11378b(String str, AvatarXConfig avatarXConfig, String str2) {
            super(null);
            l.e(str, AnalyticsConstants.NAME);
            l.e(avatarXConfig, "avatarXConfig");
            l.e(str2, "number");
            this.f33432a = str;
            this.f33433b = avatarXConfig;
            this.f33434c = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11378b)) {
                    return false;
                }
                C11378b c11378b = (C11378b) obj;
                return l.a(this.f33432a, c11378b.f33432a) && l.a(this.f33433b, c11378b.f33433b) && l.a(this.f33434c, c11378b.f33434c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f33432a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            AvatarXConfig avatarXConfig = this.f33433b;
            int hashCode2 = avatarXConfig != null ? avatarXConfig.hashCode() : 0;
            String str2 = this.f33434c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("OneToOne(name=");
            m8728C.append(this.f33432a);
            m8728C.append(", avatarXConfig=");
            m8728C.append(this.f33433b);
            m8728C.append(", number=");
            return C22128a.m8618h(m8728C, this.f33434c, ")");
        }
    }

    public AbstractC11376b() {
    }

    public AbstractC11376b(f fVar) {
    }
}
