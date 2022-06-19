package p193e.p194a.p947k.p971l;

import com.truecaller.videocallerid.data.PredefinedVideoDownloadErrorType;
import com.truecaller.videocallerid.data.PredefinedVideoResult;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.l.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/l/c.class */
public abstract class AbstractC16121c {

    /* renamed from: e.a.k.l.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/l/c$a.class */
    public static final class C16122a extends AbstractC16121c {

        /* renamed from: a */
        public final PredefinedVideoResult f45433a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16122a(PredefinedVideoResult predefinedVideoResult) {
            super(null);
            l.e(predefinedVideoResult, "video");
            this.f45433a = predefinedVideoResult;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16122a) && l.a(this.f45433a, ((C16122a) obj).f45433a);
            }
            return true;
        }

        public int hashCode() {
            PredefinedVideoResult predefinedVideoResult = this.f45433a;
            return predefinedVideoResult != null ? predefinedVideoResult.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Downloaded(video=");
            m8728C.append(this.f45433a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.l.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/l/c$b.class */
    public static final class C16123b extends AbstractC16121c {

        /* renamed from: a */
        public final PredefinedVideoResult f45434a;

        /* renamed from: b */
        public final PredefinedVideoDownloadErrorType f45435b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16123b(PredefinedVideoResult predefinedVideoResult, PredefinedVideoDownloadErrorType predefinedVideoDownloadErrorType) {
            super(null);
            l.e(predefinedVideoResult, "video");
            l.e(predefinedVideoDownloadErrorType, "errorType");
            this.f45434a = predefinedVideoResult;
            this.f45435b = predefinedVideoDownloadErrorType;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16123b)) {
                    return false;
                }
                C16123b c16123b = (C16123b) obj;
                return l.a(this.f45434a, c16123b.f45434a) && l.a(this.f45435b, c16123b.f45435b);
            }
            return true;
        }

        public int hashCode() {
            PredefinedVideoResult predefinedVideoResult = this.f45434a;
            int i = 0;
            int hashCode = predefinedVideoResult != null ? predefinedVideoResult.hashCode() : 0;
            PredefinedVideoDownloadErrorType predefinedVideoDownloadErrorType = this.f45435b;
            if (predefinedVideoDownloadErrorType != null) {
                i = predefinedVideoDownloadErrorType.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Failed(video=");
            m8728C.append(this.f45434a);
            m8728C.append(", errorType=");
            m8728C.append(this.f45435b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.l.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/l/c$c.class */
    public static final class C16124c extends AbstractC16121c {

        /* renamed from: a */
        public static final C16124c f45436a = new C16124c();

        public C16124c() {
            super(null);
        }
    }

    /* renamed from: e.a.k.l.c$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/l/c$d.class */
    public static final class C16125d extends AbstractC16121c {

        /* renamed from: a */
        public final PredefinedVideoResult f45437a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16125d(PredefinedVideoResult predefinedVideoResult) {
            super(null);
            l.e(predefinedVideoResult, "video");
            this.f45437a = predefinedVideoResult;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16125d) && l.a(this.f45437a, ((C16125d) obj).f45437a);
            }
            return true;
        }

        public int hashCode() {
            PredefinedVideoResult predefinedVideoResult = this.f45437a;
            return predefinedVideoResult != null ? predefinedVideoResult.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Loading(video=");
            m8728C.append(this.f45437a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC16121c() {
    }

    public AbstractC16121c(f fVar) {
    }
}
