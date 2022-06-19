package p193e.p194a.p619d.p643d.p644a;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import p193e.p194a.p619d.p643d.p644a.p645a.p646a.C11640a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d.d.a.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/c.class */
public final class C11666c extends m implements l<View, C11640a> {

    /* renamed from: b */
    public final /* synthetic */ VoipContactsActivity.C4799h f34235b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11666c(VoipContactsActivity.C4799h c4799h) {
        super(1);
        this.f34235b = c4799h;
    }

    /* renamed from: d */
    public Object m24300d(Object obj) {
        View view = (View) obj;
        s1.z.c.l.e(view, ViewAction.VIEW);
        VoipContactsActivity voipContactsActivity = VoipContactsActivity.this;
        VoipContactsActivity.C4794c c4794c = VoipContactsActivity.f16301B;
        return new C11640a(voipContactsActivity.m34346qa(), VoipContactsActivity.this.m34345ra(), VoipContactsActivity.this.m34342ua(), view);
    }
}
