package p193e.p194a.p619d.p643d.p644a;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11660d;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.C11657c;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d.d.a.q */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/q.class */
public final class C11680q extends m implements l<View, C11657c> {

    /* renamed from: b */
    public final /* synthetic */ VoipContactsActivity.C4807p f34250b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11680q(VoipContactsActivity.C4807p c4807p) {
        super(1);
        this.f34250b = c4807p;
    }

    /* renamed from: d */
    public Object m24292d(Object obj) {
        View view = (View) obj;
        s1.z.c.l.e(view, ViewAction.VIEW);
        AbstractC19222c m34342ua = VoipContactsActivity.this.m34342ua();
        AbstractC17405c m34345ra = VoipContactsActivity.this.m34345ra();
        AbstractC11660d abstractC11660d = VoipContactsActivity.this.f16317o;
        if (abstractC11660d != null) {
            return new C11657c(view, m34342ua, m34345ra, abstractC11660d);
        }
        s1.z.c.l.l("suggestedBarAdapterPresenter");
        throw null;
    }
}
