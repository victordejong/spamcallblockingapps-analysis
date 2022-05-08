package p459j.p460a.p474c0.p483e.p485b;

import kotlin.Metadata;
import p626l.C14976h;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002:\u0003\u0006\u0007\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016\u0082\u0001\u0003\t\n\u000b¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/domain/Result;", "R", "", "()V", "toString", "", "Error", "Loading", "Success", "Lgogolook/callgogolook2/messaging/scan/domain/Result$Success;", "Lgogolook/callgogolook2/messaging/scan/domain/Result$Error;", "Lgogolook/callgogolook2/messaging/scan/domain/Result$Loading;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.b.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/d.class */
public abstract class AbstractC11735d<R> {

    /* renamed from: j.a.c0.e.b.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/d$a.class */
    public static final class C11736a extends AbstractC11735d {

        /* renamed from: a */
        public final Exception f26331a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11736a(Exception exc) {
            super(null);
            C15149k.m377b(exc, "exception");
            this.f26331a = exc;
        }

        /* renamed from: a */
        public final Exception m8401a() {
            return this.f26331a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11736a) && C15149k.m384a(this.f26331a, ((C11736a) obj).f26331a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f26331a;
            return exc != null ? exc.hashCode() : 0;
        }

        @Override // p459j.p460a.p474c0.p483e.p485b.AbstractC11735d
        public String toString() {
            return "Error(exception=" + this.f26331a + ")";
        }
    }

    /* renamed from: j.a.c0.e.b.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/d$b.class */
    public static final class C11737b extends AbstractC11735d {
        static {
            new C11737b();
        }

        public C11737b() {
            super(null);
        }
    }

    /* renamed from: j.a.c0.e.b.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/d$c.class */
    public static final class C11738c<T> extends AbstractC11735d<T> {

        /* renamed from: a */
        public final T f26332a;

        public C11738c(T t) {
            super(null);
            this.f26332a = t;
        }

        /* renamed from: a */
        public final T m8400a() {
            return this.f26332a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11738c) && C15149k.m384a(this.f26332a, ((C11738c) obj).f26332a);
            }
            return true;
        }

        public int hashCode() {
            T t = this.f26332a;
            return t != null ? t.hashCode() : 0;
        }

        @Override // p459j.p460a.p474c0.p483e.p485b.AbstractC11735d
        public String toString() {
            return "Success(data=" + this.f26332a + ")";
        }
    }

    public AbstractC11735d() {
    }

    public /* synthetic */ AbstractC11735d(C15145g gVar) {
        this();
    }

    public String toString() {
        String str;
        if (this instanceof C11738c) {
            str = "Success[data=" + ((C11738c) this).m8400a() + ']';
        } else if (this instanceof C11736a) {
            str = "Error[exception=" + ((C11736a) this).m8401a() + ']';
        } else if (this instanceof C11737b) {
            str = "Loading";
        } else {
            throw new C14976h();
        }
        return str;
    }
}
