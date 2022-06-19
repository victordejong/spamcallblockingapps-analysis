package p193e.p194a.p437c.p526c.p527a;

import com.truecaller.insights.source.SourceType;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import s1.f0.n;
import s1.u.i;
import s1.u.u;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.c.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/a.class */
public final class C9730a extends AbstractC25649a {

    /* renamed from: e.a.c.c.a.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/c/c/a/a$a.class */
    public static final class C9731a extends m implements l<String, CharSequence> {

        /* renamed from: c */
        public static final C9731a f29421c = new C9731a(0);

        /* renamed from: d */
        public static final C9731a f29422d = new C9731a(1);

        /* renamed from: b */
        public final /* synthetic */ int f29423b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9731a(int i) {
            super(1);
            this.f29423b = i;
        }

        /* renamed from: d */
        public final Object m27164d(Object obj) {
            int i = this.f29423b;
            if (i == 0) {
                String str = (String) obj;
                s1.z.c.l.e(str, "it");
                return '\'' + str + '\'';
            } else if (i != 1) {
                throw null;
            } else {
                String str2 = (String) obj;
                s1.z.c.l.e(str2, "it");
                return '\'' + str2 + '\'';
            }
        }
    }

    public C9730a() {
        super(34, 35);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        s1.z.c.l.e(abstractC26147b, "database");
        abstractC26147b.mo2668S0(n.c("\n            ALTER TABLE sender_info\n            ADD COLUMN source_type\n            TEXT NOT NULL DEFAULT " + SourceType.USER + "\n            "));
        StringBuilder sb = new StringBuilder();
        sb.append("\n                UPDATE sender_info\n                SET source_type = '");
        sb.append(SourceType.FIREBASE.name());
        sb.append("'\n                WHERE sender IN (");
        u uVar = u.a;
        sb.append(i.O(uVar, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C9731a.f29421c, 30));
        sb.append(")\n               ");
        abstractC26147b.mo2668S0(sb.toString());
        abstractC26147b.mo2668S0("\n                UPDATE sender_info\n                SET grammars_enabled = 'ALL'\n                WHERE sender NOT IN (" + i.O(uVar, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C9731a.f29422d, 30) + ")\n               ");
    }
}
