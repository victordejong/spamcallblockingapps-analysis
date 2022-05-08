package p459j.p460a.p554q.p555c;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/debug_tool/data/UiData;", "", "()V", "Data", "Header", "Lgogolook/callgogolook2/debug_tool/data/UiData$Header;", "Lgogolook/callgogolook2/debug_tool/data/UiData$Data;", "whoscall_core_debugTool_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.q.c.b */
/* loaded from: classes2-dex2jar.jar:j/a/q/c/b.class */
public abstract class AbstractC13363b {

    /* renamed from: j.a.q.c.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/q/c/b$a.class */
    public static final class C13364a extends AbstractC13363b {

        /* renamed from: a */
        public final String f30088a;

        /* renamed from: b */
        public final String f30089b;

        /* renamed from: c */
        public AbstractC13357a f30090c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13364a(String str, String str2, AbstractC13357a aVar) {
            super(null);
            C15149k.m377b(str2, "prefName");
            C15149k.m377b(aVar, "edtType");
            this.f30088a = str;
            this.f30089b = str2;
            this.f30090c = aVar;
        }

        /* renamed from: a */
        public final AbstractC13357a m4127a() {
            return this.f30090c;
        }

        /* renamed from: a */
        public final void m4126a(AbstractC13357a aVar) {
            C15149k.m377b(aVar, "<set-?>");
            this.f30090c = aVar;
        }

        /* renamed from: b */
        public final String m4125b() {
            return this.f30088a;
        }

        /* renamed from: c */
        public final String m4124c() {
            return this.f30089b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13364a)) {
                return false;
            }
            C13364a aVar = (C13364a) obj;
            return C15149k.m384a((Object) this.f30088a, (Object) aVar.f30088a) && C15149k.m384a((Object) this.f30089b, (Object) aVar.f30089b) && C15149k.m384a(this.f30090c, aVar.f30090c);
        }

        public int hashCode() {
            String str = this.f30088a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f30089b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            AbstractC13357a aVar = this.f30090c;
            if (aVar != null) {
                i = aVar.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            return "Data(key=" + this.f30088a + ", prefName=" + this.f30089b + ", edtType=" + this.f30090c + ")";
        }
    }

    /* renamed from: j.a.q.c.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/q/c/b$b.class */
    public static final class C13365b extends AbstractC13363b {

        /* renamed from: a */
        public final String f30091a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13365b(String str) {
            super(null);
            C15149k.m377b(str, "prefName");
            this.f30091a = str;
        }

        /* renamed from: a */
        public final String m4123a() {
            return this.f30091a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13365b) && C15149k.m384a((Object) this.f30091a, (Object) ((C13365b) obj).f30091a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f30091a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "Header(prefName=" + this.f30091a + ")";
        }
    }

    public AbstractC13363b() {
    }

    public /* synthetic */ AbstractC13363b(C15145g gVar) {
        this();
    }
}
