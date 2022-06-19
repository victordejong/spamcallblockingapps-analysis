package p193e.p194a.p437c.p438a.p480j.p483c;

import android.widget.TextView;
import java.util.Set;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p437c.p438a.p477g.C9069s0;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import s1.f0.r;
import s1.s;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.c.a.j.c.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/g.class */
public final class C9149g extends m implements l<C8505a, s> {

    /* renamed from: b */
    public final /* synthetic */ C9069s0 f27862b;

    /* renamed from: c */
    public final /* synthetic */ C9152j f27863c;

    /* renamed from: d */
    public final /* synthetic */ C9141j f27864d;

    /* renamed from: e */
    public final /* synthetic */ C8243a f27865e;

    /* renamed from: f */
    public final /* synthetic */ p f27866f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9149g(C9069s0 c9069s0, C9152j c9152j, C9141j c9141j, C8243a c8243a, Set set, p pVar) {
        super(1);
        this.f27862b = c9069s0;
        this.f27863c = c9152j;
        this.f27864d = c9141j;
        this.f27865e = c8243a;
        this.f27866f = pVar;
    }

    /* renamed from: d */
    public Object m27847d(Object obj) {
        C8505a c8505a = (C8505a) obj;
        s1.z.c.l.e(c8505a, "it");
        String str = null;
        C8243a.m28739ok(this.f27865e, this.f27863c.m27846N4(c8505a), false, 2, null);
        TextView textView = this.f27862b.f27673e;
        s1.z.c.l.d(textView, "senderText");
        String str2 = c8505a.f26291b;
        if (!r.p(str2)) {
            str = str2;
        }
        if (str == null) {
            str = this.f27864d.f27851d;
        }
        textView.setText(str);
        this.f27865e.m28738pk(false);
        return s.a;
    }
}
