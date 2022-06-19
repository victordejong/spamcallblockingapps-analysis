package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import e.m.d.y.n;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1342w4.p1344s.C21260k0;
import p193e.p194a.p288a0.C7406u;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import p193e.p194a.p682e.p699c2.AbstractC13209t.C13211b;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.z.c.l;
/* renamed from: e.a.e.c2.x */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/x.class */
public abstract class AbstractC13217x<VH extends AbstractC13209t.C13211b, C extends Cursor> extends AbstractC13209t<VH> {

    /* renamed from: b */
    public C f38386b;

    /* renamed from: c */
    public int f38387c;

    public AbstractC13217x(C c) {
        this.f38386b = c;
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: e */
    public void mo10012e(VH vh, int i) {
        Contact contact;
        String str;
        this.f38386b.moveToPosition(i);
        C13199j0 c13199j0 = (C13199j0) this;
        AbstractC17373b abstractC17373b = (AbstractC17373b) this.f38386b;
        HistoryEvent mo16159n = abstractC17373b.isAfterLast() ? null : abstractC17373b.mo16159n();
        boolean z = true;
        if (mo16159n != null && (contact = mo16159n.f11539f) != null) {
            C21260k0 c21260k0 = (C21260k0) vh;
            contact.m35491w();
            C8551c mo20025b = c13199j0.f38335e.mo20025b(contact);
            c21260k0.mo10000a(n.s(contact, false, false, (String) null, 7));
            l.e(contact, "$this$getAvailabilityIdentifier");
            Number m35493v = contact.m35493v();
            c21260k0.mo9995j(m35493v != null ? m35493v.m35479e() : null);
            c21260k0.setTitle(TextUtils.isEmpty(contact.m35491w()) ? contact.m35496t() : contact.m35491w());
            ListItemX.m35642r1(c21260k0.f59576e, null, 0, 2, null);
            if (!C18334g0.m15236c0(contact)) {
                c21260k0.f59576e.m35636y1(false);
            } else if (c13199j0.f38338h.mo8993b(contact)) {
                c21260k0.f59576e.m35635z1(true);
            } else {
                c21260k0.f59576e.m35636y1(c13199j0.f38338h.mo8994a(contact));
            }
            if (contact.m35574A0()) {
                C7406u mo29678b = c13199j0.f38344n.mo29678b(contact);
                c21260k0.mo10021Z3(mo29678b.f23546a, null, mo29678b.f23547b);
            } else if (mo20025b != null) {
                c21260k0.mo10001M1(mo20025b);
            } else {
                Context context = c13199j0.f38334d;
                if (mo16159n.getId() != null) {
                    if (!contact.m35488x0()) {
                        str = contact.m35496t();
                    } else {
                        Contact m17366f = new C16461b(context).m17366f(mo16159n.getId().longValue());
                        if (m17366f != null) {
                            str = m17366f.m35485z();
                        }
                    }
                    c21260k0.mo10025H2(str);
                }
                str = null;
                c21260k0.mo10025H2(str);
            }
            if (!contact.m35514h0() || c13199j0.f38343m) {
                c21260k0.f59576e.m35649j1(null, null);
            } else {
                l.e(contact, AnalyticsConstants.CONTACT);
                c21260k0.f59576e.m35649j1(ListItemX.Action.CALL, new C21260k0.C21263c(contact));
            }
        }
        if (mo16159n == null) {
            z = false;
        }
        ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
        vh.itemView.setVisibility(z ? 0 : 8);
        layoutParams.height = z ? c13199j0.f38339i : 0;
        int i2 = 0;
        if (z) {
            i2 = -1;
        }
        layoutParams.width = i2;
        vh.itemView.setLayoutParams(layoutParams);
        C21260k0 c21260k02 = (C21260k0) vh;
        String str2 = null;
        if (abstractC17373b.isFirst()) {
            str2 = c13199j0.f38334d.getString(C2752R.string.global_search_section_history);
        }
        c21260k02.f59579h.f42157a = str2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        if (this.f38387c >= 0) {
            this.f38386b.moveToPosition(i);
            return this.f38386b.getLong(this.f38387c);
        }
        return -1L;
    }
}
