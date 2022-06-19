package p193e.p194a.p619d.p643d.p644a;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import p193e.p194a.p619d.p643d.p644a.p645a.p647b.C11651d;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d.d.a.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/g.class */
public final class C11670g extends m implements l<View, C11651d> {

    /* renamed from: b */
    public final /* synthetic */ VoipContactsActivity.C4801j f34239b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11670g(VoipContactsActivity.C4801j c4801j) {
        super(1);
        this.f34239b = c4801j;
    }

    /* renamed from: d */
    public Object m24296d(Object obj) {
        View view = (View) obj;
        s1.z.c.l.e(view, ViewAction.VIEW);
        VoipContactsActivity voipContactsActivity = VoipContactsActivity.this;
        VoipContactsActivity.C4794c c4794c = VoipContactsActivity.f16301B;
        return new C11651d(voipContactsActivity.m34341va(), VoipContactsActivity.this.m34345ra(), VoipContactsActivity.this.m34342ua(), view);
    }
}
