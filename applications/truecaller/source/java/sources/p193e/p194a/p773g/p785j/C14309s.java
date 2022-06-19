package p193e.p194a.p773g.p785j;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1114o5.C19047j1;
import p193e.p194a.p1114o5.C19090q;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.g.j.s */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/s.class */
public final class C14309s implements AbstractC14307r {

    /* renamed from: a */
    public final AbstractC19219a0 f41391a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC19126x> f41392b;

    /* renamed from: e.a.g.j.s$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/j/s$a.class */
    public static final class C14310a implements C19047j1.AbstractC19048a {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14313t f41393a;

        /* renamed from: b */
        public final /* synthetic */ Contact f41394b;

        public C14310a(AbstractC14313t abstractC14313t, Contact contact) {
            this.f41393a = abstractC14313t;
            this.f41394b = contact;
        }

        @Override // p193e.p194a.p1114o5.C19047j1.AbstractC19048a
        /* renamed from: a */
        public final void mo10489a(Contact contact, byte[] bArr) {
            l.e(contact, "<anonymous parameter 0>");
            AbstractC14313t abstractC14313t = this.f41393a;
            Intent m14140d = C19090q.m14140d(this.f41394b, bArr);
            l.d(m14140d, "ContactManager.getInsertIntent(contact, bitmap)");
            abstractC14313t.mo20272Ig(m14140d);
        }
    }

    @Inject
    public C14309s(AbstractC19219a0 abstractC19219a0, AbstractC19854f<AbstractC19126x> abstractC19854f) {
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19854f, "contactsManager");
        this.f41391a = abstractC19219a0;
        this.f41392b = abstractC19854f;
    }

    /* renamed from: a */
    public void m20275a(FragmentManager fragmentManager, Contact contact, AbstractC14313t abstractC14313t) {
        l.e(fragmentManager, "fragmentManager");
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(abstractC14313t, "listener");
        try {
            C19047j1 m14189QA = C19047j1.m14189QA(contact, new C14310a(abstractC14313t, contact));
            int i = C19047j1.f53199e;
            m14189QA.show(fragmentManager, "contact_save");
        } catch (ActivityNotFoundException e) {
            C10480a.m26057J1(e, "Cannot find an activity to insert contact");
        }
    }
}
