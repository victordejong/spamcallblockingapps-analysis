package p193e.p194a.p673d0;

import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.multisim.SimInfo;
import java.util.UUID;
import javax.inject.Inject;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p798g5.AbstractC14537p;
/* renamed from: e.a.d0.w */
/* loaded from: classes6-dex2jar.jar:e/a/d0/w.class */
public class C12562w {

    /* renamed from: a */
    public final AbstractC14537p f36689a;

    /* renamed from: b */
    public final AbstractC13497p f36690b;

    @Inject
    public C12562w(AbstractC14537p abstractC14537p, AbstractC13497p abstractC13497p) {
        this.f36689a = abstractC14537p;
        this.f36690b = abstractC13497p;
    }

    /* renamed from: a */
    public HistoryEvent m22869a(C12560v c12560v) {
        String str;
        SimInfo mo21741e;
        Number number = c12560v.f36669a;
        HistoryEvent historyEvent = new HistoryEvent((HistoryEvent.C3825a) null);
        historyEvent.f11536c = number.m35473l();
        historyEvent.f11535b = number.m35479e();
        historyEvent.f11549p = number.m35475i();
        historyEvent.f11537d = number.getCountryCode();
        historyEvent.f11541h = c12560v.f36672d;
        historyEvent.f11539f = c12560v.f36680l;
        historyEvent.f11534a = UUID.randomUUID().toString();
        if (this.f36690b.mo21740h() && (mo21741e = this.f36690b.mo21741e(c12560v.f36670b)) != null) {
            historyEvent.f11544k = mo21741e.f13984b;
        }
        int i = c12560v.f36676h;
        if (i == 12785645) {
            historyEvent.f11551r = 1;
        } else {
            historyEvent.f11551r = i;
        }
        FilterMatch filterMatch = c12560v.f36681m;
        Contact contact = c12560v.f36680l;
        ActionSource actionSource = filterMatch.f10454c;
        if (actionSource != ActionSource.NONE) {
            str = actionSource.name();
        } else {
            str = null;
            if (contact != null) {
                str = null;
                if (contact.m35574A0()) {
                    str = ActionSource.SPAMMER_FROM_SEARCH.name();
                }
            }
        }
        historyEvent.f11554u = str;
        if (c12560v.f36673e) {
            if (c12560v.f36677i != 3 || c12560v.f36678j) {
                historyEvent.f11550q = 1;
            } else {
                historyEvent.f11550q = 3;
            }
            historyEvent.f11543j = c12560v.f36685q - c12560v.f36672d;
        } else {
            historyEvent.f11550q = 2;
        }
        return historyEvent;
    }
}
