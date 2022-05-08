package p459j.p460a.p572v0.p573c;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0003\u0010\u0011\u0012¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/urlscan/data/SourceResult;", "", "source", "Lgogolook/callgogolook2/urlscan/data/SourceResult$Source;", "(Lgogolook/callgogolook2/urlscan/data/SourceResult$Source;)V", "getSource", "()Lgogolook/callgogolook2/urlscan/data/SourceResult$Source;", "url", "", "getUrl", "()Ljava/lang/String;", "urlRating", "Lgogolook/callgogolook2/urlscan/data/UrlRating;", "getUrlRating", "()Lgogolook/callgogolook2/urlscan/data/UrlRating;", "Source", "Lgogolook/callgogolook2/urlscan/data/RedirectCheckResult;", "Lgogolook/callgogolook2/urlscan/data/WhoscallPatternMatchResult;", "Lgogolook/callgogolook2/urlscan/data/GoogleEvaluateResult;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.v0.c.g */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/g.class */
public abstract class AbstractC13709g {

    /* renamed from: a */
    public final EnumC13710a f30784a;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018�� \u000b2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/urlscan/data/SourceResult$Source;", "", "definition", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDefinition", "()Ljava/lang/String;", "UNKNOWN", "REDIRECT_CHECK", "WHOSCALL_PATTERN_MATCH", "GOOGLE_EVALUATE_API", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.v0.c.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/c/g$a.class */
    public enum EnumC13710a {
        UNKNOWN("unknown"),
        REDIRECT_CHECK("redirect_check"),
        WHOSCALL_PATTERN_MATCH("whoscall_pattern_match"),
        GOOGLE_EVALUATE_API("google_evaluate_api");
        

        /* renamed from: g */
        public static final C13711a f30790g = new C13711a(null);

        /* renamed from: a */
        public final String f30791a;

        /* renamed from: j.a.v0.c.g$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/v0/c/g$a$a.class */
        public static final class C13711a {
            public C13711a() {
            }

            public /* synthetic */ C13711a(C15145g gVar) {
                this();
            }

            /* renamed from: a */
            public final EnumC13710a m3615a(String str) {
                EnumC13710a aVar;
                if (str == null) {
                    return EnumC13710a.UNKNOWN;
                }
                EnumC13710a[] values = EnumC13710a.values();
                int length = values.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        aVar = null;
                        break;
                    }
                    EnumC13710a aVar2 = values[i];
                    if (C15149k.m384a((Object) aVar2.m3616a(), (Object) str)) {
                        aVar = aVar2;
                        break;
                    }
                    i++;
                }
                if (aVar == null) {
                    aVar = EnumC13710a.UNKNOWN;
                }
                return aVar;
            }
        }

        EnumC13710a(String str) {
            C15149k.m377b(str, "definition");
            this.f30791a = str;
        }

        /* renamed from: a */
        public final String m3616a() {
            return this.f30791a;
        }
    }

    public AbstractC13709g(EnumC13710a aVar) {
        this.f30784a = aVar;
    }

    public /* synthetic */ AbstractC13709g(EnumC13710a aVar, C15145g gVar) {
        this(aVar);
    }

    /* renamed from: a */
    public final EnumC13710a m3617a() {
        return this.f30784a;
    }

    /* renamed from: b */
    public abstract EnumC13715k mo3601b();
}
