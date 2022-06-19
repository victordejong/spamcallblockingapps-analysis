package p193e.p194a.p682e.p700d2;

import android.content.Context;
import android.text.TextUtils;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import p193e.p194a.p997k3.p998j.C16461b;
@Deprecated
/* renamed from: e.a.e.d2.g */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/g.class */
public class C13230g extends C13229f {

    /* renamed from: k */
    public final HistoryEvent f38453k;

    /* renamed from: l */
    public C16461b f38454l;

    public C13230g(Contact contact, HistoryEvent historyEvent) {
        super(contact);
        this.f38453k = historyEvent;
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: d */
    public String mo18608d(Context context) {
        Contact contact;
        HistoryEvent historyEvent = this.f38453k;
        if (historyEvent == null || historyEvent.getId() == null || (contact = this.f38452j) == null) {
            return null;
        }
        if (!contact.m35488x0()) {
            return this.f38452j.m35496t();
        }
        if (this.f38454l == null) {
            this.f38454l = new C16461b(context);
        }
        Contact m17366f = this.f38454l.m17366f(this.f38453k.getId().longValue());
        if (m17366f == null) {
            return null;
        }
        return m17366f.m35485z();
    }

    @Override // p193e.p194a.p682e.p699c2.C13197i0
    /* renamed from: h */
    public String mo18605h(Context context) {
        return TextUtils.isEmpty(this.f38452j.m35491w()) ? this.f38452j.m35496t() : this.f38452j.m35491w();
    }
}
