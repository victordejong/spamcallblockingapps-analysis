package p193e.p194a.p997k3.p998j;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Business;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.ContactSurvey;
import com.truecaller.data.entity.Entity;
import com.truecaller.data.entity.Link;
import com.truecaller.data.entity.NameFeedback;
import com.truecaller.data.entity.Note;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.SearchWarning;
import com.truecaller.data.entity.Source;
import com.truecaller.data.entity.SpamData;
import com.truecaller.data.entity.StructuredName;
import com.truecaller.data.entity.Style;
import com.truecaller.data.entity.Tag;
import com.truecaller.log.AssertionUtil;
import e.m.e.k;
import e.m.f.a.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p997k3.p1000l.C16502j;
import w3.c.a.a.a.h;
import w3.c.a.a.a.k.a;
/* renamed from: e.a.k3.j.j */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/j.class */
public class C16487j extends AbstractC16479f {

    /* renamed from: c */
    public boolean f46356c = true;

    public C16487j(Context context) {
        super(context);
    }

    /* renamed from: c */
    public boolean m17331c(Contact contact) {
        return m17330d(Collections.singletonList(contact));
    }

    /* renamed from: d */
    public boolean m17330d(List<Contact> list) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        List<Entity> arrayList2 = new ArrayList<>();
        int i = 0;
        for (Contact contact : list) {
            boolean z = true;
            i++;
            if (i % 5 != 0) {
                z = false;
            }
            m17324j(arrayList, arrayList2, contact, z);
        }
        return m17348a(arrayList, arrayList2);
    }

    /* renamed from: e */
    public final void m17329e(List<ContentProviderOperation> list, String str) {
        String[] strArr = {str};
        list.add(ContentProviderOperation.newDelete(C17891a1.C17899h.m15701a()).withSelection("tc_id=?", strArr).build());
        list.add(ContentProviderOperation.newDelete(C17891a1.C17904m.m15552a()).withSelection("tc_id=?", strArr).build());
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
        if (r11 != r0) goto L21;
     */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.truecaller.data.entity.Contact> m17328f(long r11) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p997k3.p998j.C16487j.m17328f(long):java.util.List");
    }

    /* renamed from: g */
    public Contact m17327g(String str) {
        return m17325i(C17891a1.C17904m.m15551b(), "tc_id=?", str);
    }

    /* renamed from: h */
    public Cursor m17326h() {
        return this.f46338b.query(C17891a1.C17904m.m15552a(), new String[]{"tc_id", "contact_phonebook_id", "contact_phonebook_hash"}, "contact_phonebook_hash IS NOT NULL", null, "contact_phonebook_id ASC");
    }

    /* renamed from: i */
    public final Contact m17325i(Uri uri, String str, String... strArr) {
        ContentResolver contentResolver = this.f46338b;
        if (strArr.length == 0) {
            strArr = null;
        }
        Cursor query = contentResolver.query(uri, null, str, strArr, null);
        Contact contact = null;
        if (query != null) {
            contact = null;
            try {
                if (query.moveToFirst()) {
                    C16463d c16463d = new C16463d(query);
                    c16463d.m17353h(false);
                    contact = c16463d.m17354g(query);
                    do {
                        c16463d.m17355f(query, contact);
                    } while (query.moveToNext());
                }
            } finally {
                query.close();
            }
        }
        return contact;
    }

    /* renamed from: j */
    public final void m17324j(List<ContentProviderOperation> list, List<Entity> list2, Contact contact, boolean z) {
        if (contact == null || contact.f11515j) {
            return;
        }
        list2.add(contact);
        Uri m15552a = C17891a1.C17904m.m15552a();
        Uri uri = m15552a;
        if (!this.f46356c) {
            uri = m15552a.buildUpon().appendQueryParameter("aggregation", "false").build();
        }
        if (contact.m35488x0() && !TextUtils.isEmpty(contact.getTcId())) {
            list.add(ContentProviderOperation.newAssertQuery(C17891a1.C17904m.m15552a()).withSelection("tc_id=? AND contact_access LIKE ?", new String[]{contact.getTcId(), "public"}).withExpectedCount(0).build());
        }
        int size = list.size();
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(uri);
        boolean z2 = this.f46356c;
        ContentValues contentValues = new ContentValues();
        if (contact.getTcId() == null) {
            contact.setTcId(UUID.randomUUID().toString());
        }
        if (!z2) {
            contentValues.put("aggregated_contact_id", contact.m35509l());
        }
        contentValues.put("tc_id", contact.getTcId());
        contentValues.put("contact_name", contact.m35566G());
        contentValues.put("contact_transliterated_name", contact.m35518f0());
        contentValues.put("contact_is_favorite", Boolean.valueOf(contact.m35503o0()));
        int i = ((ContactDto.Contact) contact.mRow).favoritePosition;
        contentValues.put("contact_favorite_position", i >= 0 ? Integer.valueOf(i) : null);
        contentValues.put("contact_handle", ((ContactDto.Contact) contact.mRow).handle);
        contentValues.put("contact_alt_name", contact.m35507m());
        contentValues.put("contact_gender", ((ContactDto.Contact) contact.mRow).gender);
        contentValues.put("contact_about", contact.m35515h());
        contentValues.put("contact_image_url", contact.m35573B());
        contentValues.put("contact_job_title", contact.m35569D());
        contentValues.put("contact_company", contact.m35502p());
        contentValues.put("contact_access", ((ContactDto.Contact) contact.mRow).access);
        contentValues.put("contact_common_connections", Integer.valueOf(((ContactDto.Contact) contact.mRow).commonConnections));
        contentValues.put("contact_search_time", Long.valueOf(contact.m35540X()));
        contentValues.put("contact_source", Integer.valueOf(contact.getSource()));
        contentValues.put("contact_default_number", contact.m35498s());
        contentValues.put("contact_phonebook_id", contact.m35548R());
        long j = ((ContactDto.Contact) contact.mRow).phonebookHash;
        contentValues.put("contact_phonebook_hash", j == 0 ? null : Long.valueOf(j));
        contentValues.put("contact_phonebook_lookup", contact.m35545T());
        contentValues.put("search_query", contact.m35542V());
        contentValues.put("cache_control", contact.m35504o());
        contentValues.put("contact_badges", Integer.valueOf(contact.f11523r));
        contentValues.put("tc_flag", Integer.valueOf(contact.f11531z));
        contentValues.put("contact_im_id", contact.m35575A());
        contentValues.put("contact_spam_score", Integer.valueOf(contact.m35533a0()));
        contentValues.put("contact_spam_type", contact.m35530b0());
        contentValues.put("spam_categories", contact.m35536Z());
        list.add(newInsert.withValues(contentValues).withYieldAllowed(z).build());
        for (Number number : contact.m35557M()) {
            list2.add(number);
            ContentProviderOperation.Builder newInsert2 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b = AbstractC16479f.m17347b(number, contact);
            m17347b.put("data1", number.m35479e());
            m17347b.put("data2", number.m35480d());
            m17347b.put("data9", number.m35473l());
            m17347b.put("data3", Integer.valueOf(number.m35472m()));
            m17347b.put("data4", Integer.valueOf(number.m35470o()));
            m17347b.put("data5", number.m35469p());
            m17347b.put("data6", Integer.valueOf(a.g(((ContactDto.Contact.PhoneNumber) number.mRow).dialingCode)));
            m17347b.put("data7", number.getCountryCode());
            m17347b.put("data8", (number.m35475i() != null ? number.m35475i() : j.d.l).name());
            m17347b.put("data10", number.m35482b());
            m17347b.put("data11", number.m35471n());
            m17347b.put("data_type", (Integer) 4);
            list.add(newInsert2.withValues(m17347b).withValueBackReference("data_raw_contact_id", size).build());
            if (!this.f46356c && !h.j(number.m35479e())) {
                list.add(ContentProviderOperation.newUpdate(C17891a1.C17902k.m15675H()).withSelection("normalized_destination=?", new String[]{number.m35479e()}).withValue("aggregated_contact_id", contact.m35509l()).build());
            }
        }
        for (Address address : contact.m35510k()) {
            list2.add(address);
            ContentProviderOperation.Builder newInsert3 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b2 = AbstractC16479f.m17347b(address, contact);
            m17347b2.put("data1", address.getStreet());
            m17347b2.put("data2", address.getZipCode());
            m17347b2.put("data3", address.getCity());
            m17347b2.put("data4", address.getCountryCode());
            m17347b2.put("data5", Integer.valueOf(address.getType()));
            m17347b2.put("data6", address.getTypeLabel());
            m17347b2.put("data7", address.getTimeZone());
            m17347b2.put("data8", address.getArea());
            m17347b2.put("data_type", (Integer) 1);
            list.add(newInsert3.withValues(m17347b2).withValueBackReference("data_raw_contact_id", size).build());
        }
        for (Tag tag : contact.m35524d0()) {
            list2.add(tag);
            ContentProviderOperation.Builder newInsert4 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b3 = AbstractC16479f.m17347b(tag, contact);
            m17347b3.put("data1", tag.getValue());
            m17347b3.put("data_type", (Integer) 6);
            list.add(newInsert4.withValues(m17347b3).withValueBackReference("data_raw_contact_id", size).build());
        }
        for (Link link : contact.m35567F()) {
            list2.add(link);
            ContentProviderOperation.Builder newInsert5 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b4 = AbstractC16479f.m17347b(link, contact);
            m17347b4.put("data1", link.getInfo());
            m17347b4.put("data2", link.getService());
            m17347b4.put("data3", link.getCaption());
            m17347b4.put("data_type", (Integer) 3);
            list.add(newInsert5.withValues(m17347b4).withValueBackReference("data_raw_contact_id", size).build());
        }
        if (contact.f11519n == null) {
            contact.f11519n = Collections.unmodifiableList(contact.f11509d);
        }
        for (Source source : contact.f11519n) {
            list2.add(source);
            ContentProviderOperation.Builder newInsert6 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b5 = AbstractC16479f.m17347b(source, contact);
            m17347b5.put("data1", source.m35460a());
            m17347b5.put("data2", ((ContactDto.Contact.Source) source.mRow).url);
            m17347b5.put("data3", ((ContactDto.Contact.Source) source.mRow).logo);
            m17347b5.put("data4", ((ContactDto.Contact.Source) source.mRow).caption);
            m17347b5.put("data_type", (Integer) 5);
            Map<String, String> map = ((ContactDto.Contact.Source) source.mRow).extra;
            if (map != null && !map.isEmpty()) {
                m17347b5.put("data5", new k().m(map));
            }
            list.add(newInsert6.withValues(m17347b5).withValueBackReference("data_raw_contact_id", size).build());
        }
        StructuredName structuredName = contact.f11524s;
        if (structuredName != null) {
            list2.add(structuredName);
            ContentProviderOperation.Builder newInsert7 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b6 = AbstractC16479f.m17347b(structuredName, contact);
            m17347b6.put("data1", structuredName.getGivenName());
            m17347b6.put("data2", structuredName.getFamilyName());
            m17347b6.put("data3", structuredName.getMiddleName());
            m17347b6.put("data_type", (Integer) 7);
            list.add(newInsert7.withValues(m17347b6).withValueBackReference("data_raw_contact_id", size).build());
        }
        Note note = contact.f11525t;
        if (note != null) {
            list2.add(note);
            ContentProviderOperation.Builder newInsert8 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b7 = AbstractC16479f.m17347b(note, contact);
            m17347b7.put("data1", note.getValue());
            m17347b7.put("data_type", (Integer) 8);
            list.add(newInsert8.withValues(m17347b7).withValueBackReference("data_raw_contact_id", size).build());
        }
        Business business = contact.f11526u;
        if (business != null) {
            list2.add(business);
            ContentProviderOperation.Builder newInsert9 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b8 = AbstractC16479f.m17347b(business, contact);
            m17347b8.put("data1", business.getBranch());
            m17347b8.put("data2", business.getDepartment());
            m17347b8.put("data3", business.getCompanySize());
            m17347b8.put("data4", business.getOpeningHours());
            m17347b8.put("data5", business.getLandline());
            m17347b8.put("data6", business.getScore());
            m17347b8.put("data7", business.getSwishNumber());
            m17347b8.put("data8", business.getMediaCallerIDs());
            m17347b8.put("data9", business.getAppStores());
            m17347b8.put("data10", business.getBrandedMedia());
            m17347b8.put("data_type", (Integer) 9);
            list.add(newInsert9.withValues(m17347b8).withValueBackReference("data_raw_contact_id", size).build());
        }
        Style style = contact.f11527v;
        if (style != null) {
            list2.add(style);
            ContentProviderOperation.Builder newInsert10 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b9 = AbstractC16479f.m17347b(style, contact);
            m17347b9.put("data1", style.getBackgroundColor());
            m17347b9.put("data2", style.getImageUrls());
            m17347b9.put("data_type", (Integer) 10);
            list.add(newInsert10.withValues(m17347b9).withValueBackReference("data_raw_contact_id", size).build());
        }
        NameFeedback nameFeedback = contact.f11528w;
        if (nameFeedback != null) {
            list2.add(nameFeedback);
            ContentProviderOperation.Builder newInsert11 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b10 = AbstractC16479f.m17347b(nameFeedback, contact);
            if (nameFeedback.getNameSource() != null) {
                m17347b10.put("data1", Integer.valueOf(nameFeedback.getNameSource().intValue()));
            }
            m17347b10.put("data2", nameFeedback.getNameElectionAlgo());
            m17347b10.put("data_type", (Integer) 11);
            list.add(newInsert11.withValues(m17347b10).withValueBackReference("data_raw_contact_id", size).build());
        }
        SpamData spamData = contact.f11529x;
        if (spamData != null) {
            list2.add(spamData);
            ContentProviderOperation.Builder newInsert12 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b11 = AbstractC16479f.m17347b(spamData, contact);
            if (spamData.getNumReports60days() != null) {
                m17347b11.put("data1", Integer.valueOf(spamData.getNumReports60days().intValue()));
            }
            if (spamData.getNumCalls60days() != null) {
                m17347b11.put("data2", Integer.valueOf(spamData.getNumCalls60days().intValue()));
            }
            if (spamData.getNumCalls60DaysPointerPosition() != null) {
                m17347b11.put("data3", Integer.valueOf(spamData.getNumCalls60DaysPointerPosition().intValue()));
            }
            m17347b11.put("data4", spamData.getNumCallsHourly());
            if (spamData.getSpamVersion() != null) {
                m17347b11.put("data5", spamData.getSpamVersion());
            }
            m17347b11.put("data_type", (Integer) 12);
            list.add(newInsert12.withValues(m17347b11).withValueBackReference("data_raw_contact_id", size).build());
        }
        for (SearchWarning searchWarning : contact.m35538Y()) {
            list2.add(searchWarning);
            ContentProviderOperation.Builder newInsert13 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b12 = AbstractC16479f.m17347b(searchWarning, contact);
            m17347b12.put("data_type", (Integer) 13);
            m17347b12.put("data1", searchWarning.getId());
            m17347b12.put("data3", searchWarning.getRuleName());
            String m17315a = C16502j.f46396b.m17315a(searchWarning.getFeatures());
            if (m17315a != null) {
                m17347b12.put("data2", m17315a);
            }
            list.add(newInsert13.withValues(m17347b12).withValueBackReference("data_raw_contact_id", size).build());
        }
        for (ContactSurvey contactSurvey : contact.m35527c0()) {
            list2.add(contactSurvey);
            ContentProviderOperation.Builder newInsert14 = ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a());
            ContentValues m17347b13 = AbstractC16479f.m17347b(contactSurvey, contact);
            m17347b13.put("data_type", (Integer) 14);
            m17347b13.put("data1", contactSurvey.getId());
            m17347b13.put("data2", contactSurvey.getFrequency());
            m17347b13.put("data3", contactSurvey.getPassthroughData());
            list.add(newInsert14.withValues(m17347b13).withValueBackReference("data_raw_contact_id", size).build());
        }
    }

    /* renamed from: k */
    public void m17323k(List<String> list) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (String str : list) {
            m17329e(arrayList, str);
        }
        m17348a(arrayList, Collections.emptyList());
    }

    /* renamed from: l */
    public boolean m17322l(String str, int... iArr) {
        AssertionUtil.AlwaysFatal.isFalse(iArr.length == 0, "At least one source is required");
        String[] strArr = new String[iArr.length + 1];
        strArr[0] = str;
        StringBuilder m8728C = C22128a.m8728C("data1=? AND data_type=4 AND contact_source IN (?");
        strArr[1] = String.valueOf(iArr[0]);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= iArr.length) {
                break;
            }
            m8728C.append(",?");
            int i3 = i2 + 1;
            strArr[i3] = String.valueOf(iArr[i2]);
            i = i3;
        }
        m8728C.append(")");
        Cursor query = this.f46338b.query(C17891a1.C17904m.m15551b(), new String[]{"tc_id"}, m8728C.toString(), strArr, null);
        ArrayList arrayList = new ArrayList();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    arrayList.add(query.getString(0));
                } finally {
                    query.close();
                }
            }
        }
        m17323k(arrayList);
        return !arrayList.isEmpty();
    }

    /* renamed from: m */
    public void m17321m(String str, Long l) {
        if (l != null && l.longValue() > 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_super_primary", (Integer) 1);
            this.f46338b.update(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, l.longValue()), contentValues, null, null);
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("data_is_primary", (Integer) 1);
        this.f46338b.update(C17891a1.C17899h.m15701a(), contentValues2, "_id=?", new String[]{str});
    }
}
