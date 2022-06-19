package p193e.p194a.p837h0;

import android.content.ContentValues;
import android.content.Context;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamData;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.filters.sync.FilterUploadWorker;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19892y;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p837h0.p844w.AbstractC14875b;
import p193e.p194a.p837h0.p844w.C14872a;
import p193e.p194a.p837h0.p844w.C14876c;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.h0.s */
/* loaded from: classes9-dex2jar.jar:e/a/h0/s.class */
public class C14855s implements AbstractC14854r {

    /* renamed from: a */
    public final Context f42462a;

    /* renamed from: b */
    public final AbstractC14835j f42463b;

    /* renamed from: c */
    public final AbstractC10255e f42464c;

    /* renamed from: d */
    public AbstractC19854f<AbstractC17348c> f42465d;

    /* renamed from: e */
    public final C16461b f42466e;

    public C14855s(Context context, AbstractC14835j abstractC14835j, AbstractC19854f<AbstractC17348c> abstractC19854f, AbstractC10255e abstractC10255e, C16461b c16461b) {
        this.f42462a = context;
        this.f42463b = abstractC14835j;
        this.f42465d = abstractC19854f;
        this.f42464c = abstractC10255e;
        this.f42466e = c16461b;
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo19532a(List<Participant> list, List<String> list2, List<String> list3, String str, String str2, boolean z) {
        SpamData spamData;
        C16461b c16461b = this.f42466e;
        l.e(list, "$this$getAddressesAndSpamVersions");
        l.e(c16461b, "dao");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Participant participant : list) {
            String str3 = participant.f11572e;
            Contact m17367e = c16461b.m17367e(participant.f11575h);
            arrayList.add(new k(str3, (m17367e == null || (spamData = m17367e.f11529x) == null) ? null : spamData.getSpamVersion()));
        }
        FiltersContract.Filters.EntityType entityType = FiltersContract.Filters.EntityType.UNKNOWN;
        ContentValues[] contentValuesArr = new ContentValues[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            String str4 = (String) ((k) arrayList.get(i)).a;
            Integer num = (Integer) ((k) arrayList.get(i)).b;
            String str5 = list2.get(i);
            contentValuesArr[i] = m19525h(str4, str5, list3.get(i), str2, 1, entityType, null, num);
            this.f42463b.mo19589g(str4, str5, str, str2, z);
        }
        this.f42464c.mo19540b();
        this.f42462a.getContentResolver().bulkInsert(FiltersContract.Filters.m35810a(), contentValuesArr);
        FilterUploadWorker.m35426n(this.f42462a);
        return AbstractC19891x.m11834h(Boolean.TRUE);
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: b */
    public AbstractC19891x<AbstractC14875b> mo19531b() {
        return new C19892y(new C14876c(this.f42462a.getContentResolver().query(FiltersContract.Filters.m35810a(), null, "rule=? AND sync_state!=?", new String[]{String.valueOf(0), String.valueOf(2)}, "_id DESC")), C14829d.f42401a);
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: c */
    public AbstractC19891x<Boolean> mo19530c(C14872a c14872a, String str, boolean z) {
        Boolean bool = Boolean.TRUE;
        ContentValues m19526g = m19526g(c14872a.f42503e, c14872a.f42504f, c14872a.f42502d, str, c14872a.f42500b, c14872a.f42505g.type, c14872a.f42501c, FiltersContract.Filters.EntityType.UNKNOWN, null, c14872a.f42507i);
        if (c14872a.m19499b()) {
            this.f42462a.getContentResolver().delete(FiltersContract.Filters.m35810a(), "_id = ?", new String[]{String.valueOf(c14872a.f42499a)});
            this.f42463b.mo19589g(c14872a.f42503e, "COUNTRY_CODE", "unblock", str, z);
            return AbstractC19891x.m11834h(bool);
        }
        if (!c14872a.m19500a()) {
            m19526g.put("rule", (Integer) 1);
            m19526g.put("sync_state", (Integer) 1);
        } else {
            m19526g.put("sync_state", (Integer) 2);
        }
        this.f42462a.getContentResolver().insert(FiltersContract.Filters.m35810a(), m19526g);
        this.f42463b.mo19589g(c14872a.f42503e, c14872a.f42504f, "unblock", str, z);
        FilterUploadWorker.m35426n(this.f42462a);
        return AbstractC19891x.m11834h(bool);
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: d */
    public AbstractC19891x<Boolean> mo19529d(String str, String str2, FiltersContract.Filters.WildCardType wildCardType, String str3) {
        String formatPattern = wildCardType.formatPattern(str);
        try {
            Pattern.compile(formatPattern);
            ContentValues m19525h = m19525h(formatPattern, "REG_EXP", str2, str3, 0, FiltersContract.Filters.EntityType.UNKNOWN, null, null);
            m19525h.put("wildcard_type", Integer.valueOf(wildCardType.type));
            this.f42462a.getContentResolver().insert(FiltersContract.Filters.m35810a(), m19525h);
            this.f42463b.mo19589g(formatPattern, "REG_EXP", "block", str3, false);
            FilterUploadWorker.m35426n(this.f42462a);
            return AbstractC19891x.m11834h(Boolean.TRUE);
        } catch (PatternSyntaxException e) {
            AssertionUtil.shouldNeverHappen(e, "Could not compile wildcard pattern");
            return AbstractC19891x.m11834h(Boolean.FALSE);
        }
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo19528e(CountryListDto.C3679a c3679a, String str) {
        String str2 = c3679a.f10912c;
        ContentValues m19525h = m19525h(str2, "COUNTRY_CODE", null, str, 0, FiltersContract.Filters.EntityType.UNKNOWN, null, null);
        m19525h.put("sync_state", (Integer) 0);
        this.f42462a.getContentResolver().insert(FiltersContract.Filters.m35810a(), m19525h);
        this.f42463b.mo19589g(str2, "COUNTRY_CODE", "block", str, false);
        FilterUploadWorker.m35426n(this.f42462a);
        return AbstractC19891x.m11834h(Boolean.TRUE);
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo19527f(String str, String str2, String str3, String str4, boolean z, FiltersContract.Filters.EntityType entityType, Long l, Integer num) {
        this.f42462a.getContentResolver().insert(FiltersContract.Filters.m35810a(), m19525h(str, str2, str3, str4, 0, entityType, l, num));
        FilterUploadWorker.m35426n(this.f42462a);
        this.f42463b.mo19589g(str, str2, "block", str4, z);
        this.f42464c.mo19540b();
        return AbstractC19891x.m11834h(Boolean.TRUE);
    }

    /* renamed from: g */
    public final ContentValues m19526g(String str, String str2, String str3, String str4, int i, int i2, int i3, FiltersContract.Filters.EntityType entityType, Long l, Integer num) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str);
        contentValues.put("label", str3);
        contentValues.put("rule", Integer.valueOf(i));
        contentValues.put("wildcard_type", Integer.valueOf(i2));
        contentValues.put("sync_state", Integer.valueOf(i3));
        contentValues.put("tracking_type", str2);
        contentValues.put("tracking_source", str4);
        contentValues.put("entity_type", Integer.valueOf(entityType.value));
        contentValues.put("category_id", l);
        contentValues.put("spam_version", num);
        contentValues.put("history_event_id", C14836k.m19604C(this.f42465d, contentValues));
        return contentValues;
    }

    /* renamed from: h */
    public final ContentValues m19525h(String str, String str2, String str3, String str4, int i, FiltersContract.Filters.EntityType entityType, Long l, Integer num) {
        return m19526g(str, str2, str3, str4, i, FiltersContract.Filters.WildCardType.NONE.type, 1, entityType, l, num);
    }
}
