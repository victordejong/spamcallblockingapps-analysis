package p193e.p194a.p997k3.p998j;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
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
import com.truecaller.data.entity.RowEntity;
import com.truecaller.data.entity.SearchWarning;
import com.truecaller.data.entity.Source;
import com.truecaller.data.entity.SpamData;
import com.truecaller.data.entity.StructuredName;
import com.truecaller.data.entity.Style;
import com.truecaller.data.entity.Tag;
import com.truecaller.premium.data.PremiumScope;
import e.m.e.k;
import e.m.f.a.j;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p997k3.C16448b;
import p193e.p194a.p997k3.C16449c;
import p193e.p194a.p997k3.p1000l.C16501i;
import p193e.p194a.p997k3.p1000l.C16502j;
import s1.u.s;
import s1.u.t;
import s1.z.c.l;
/* renamed from: e.a.k3.j.d */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/d.class */
public class C16463d extends AbstractC16460a<Contact> {

    /* renamed from: A */
    public final int f46219A;

    /* renamed from: B */
    public final int f46220B;

    /* renamed from: C */
    public final int f46221C;

    /* renamed from: D */
    public final int f46222D;

    /* renamed from: E */
    public final int f46223E;

    /* renamed from: F */
    public final int f46224F;

    /* renamed from: G */
    public final int f46225G;

    /* renamed from: H */
    public final int f46226H;

    /* renamed from: I */
    public final int f46227I;

    /* renamed from: J */
    public Uri f46228J;

    /* renamed from: K */
    public C16464a f46229K;

    /* renamed from: L */
    public C16477n f46230L;

    /* renamed from: M */
    public C16470g f46231M;

    /* renamed from: N */
    public C16467d f46232N;

    /* renamed from: O */
    public C16472i f46233O;

    /* renamed from: P */
    public C16474k f46234P;

    /* renamed from: Q */
    public C16469f f46235Q;

    /* renamed from: R */
    public C16465b f46236R;

    /* renamed from: S */
    public C16475l f46237S;

    /* renamed from: T */
    public C16468e f46238T;

    /* renamed from: U */
    public C16473j f46239U;

    /* renamed from: V */
    public C16471h f46240V;

    /* renamed from: W */
    public C16476m f46241W;

    /* renamed from: X */
    public final C16449c f46242X;

    /* renamed from: Y */
    public final C16502j f46243Y;

    /* renamed from: Z */
    public boolean f46244Z;

    /* renamed from: a */
    public final int f46245a;

    /* renamed from: b */
    public final int f46246b;

    /* renamed from: c */
    public final int f46247c;

    /* renamed from: d */
    public final int f46248d;

    /* renamed from: e */
    public final int f46249e;

    /* renamed from: f */
    public final int f46250f;

    /* renamed from: g */
    public final int f46251g;

    /* renamed from: h */
    public final int f46252h;

    /* renamed from: i */
    public final int f46253i;

    /* renamed from: j */
    public final int f46254j;

    /* renamed from: k */
    public final int f46255k;

    /* renamed from: l */
    public final int f46256l;

    /* renamed from: m */
    public final int f46257m;

    /* renamed from: n */
    public final int f46258n;

    /* renamed from: o */
    public final int f46259o;

    /* renamed from: p */
    public final int f46260p;

    /* renamed from: q */
    public final int f46261q;

    /* renamed from: r */
    public final int f46262r;

    /* renamed from: s */
    public final int f46263s;

    /* renamed from: t */
    public final int f46264t;

    /* renamed from: u */
    public final int f46265u;

    /* renamed from: v */
    public final int f46266v;

    /* renamed from: w */
    public final int f46267w;

    /* renamed from: x */
    public final int f46268x;

    /* renamed from: y */
    public final int f46269y;

    /* renamed from: z */
    public final int f46270z;

    /* renamed from: e.a.k3.j.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$a.class */
    public static class C16464a extends AbstractC16466c<Address> {

        /* renamed from: f */
        public final int f46271f;

        /* renamed from: g */
        public final int f46272g;

        /* renamed from: h */
        public final int f46273h;

        /* renamed from: i */
        public final int f46274i;

        /* renamed from: j */
        public final int f46275j;

        /* renamed from: k */
        public final int f46276k;

        /* renamed from: l */
        public final int f46277l;

        /* renamed from: m */
        public final int f46278m;

        public C16464a(Cursor cursor) {
            super(cursor);
            this.f46271f = cursor.getColumnIndex("data1");
            this.f46272g = cursor.getColumnIndex("data2");
            this.f46273h = cursor.getColumnIndex("data3");
            this.f46274i = cursor.getColumnIndex("data4");
            this.f46275j = cursor.getColumnIndex("data5");
            this.f46276k = cursor.getColumnIndex("data6");
            this.f46277l = cursor.getColumnIndex("data7");
            this.f46278m = cursor.getColumnIndex("data8");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Address mo17349g(Cursor cursor) {
            Address address = new Address();
            address.setStreet(m17374a(cursor, this.f46271f));
            address.setZipCode(m17374a(cursor, this.f46272g));
            address.setCity(m17374a(cursor, this.f46273h));
            address.setCountryCode(m17374a(cursor, this.f46274i));
            address.setType(m17370e(cursor, this.f46275j));
            address.setTypeLabel(m17374a(cursor, this.f46276k));
            address.setTimeZone(m17374a(cursor, this.f46277l));
            address.setArea(m17374a(cursor, this.f46278m));
            return address;
        }
    }

    /* renamed from: e.a.k3.j.d$b */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$b.class */
    public static class C16465b extends AbstractC16466c<Business> {

        /* renamed from: f */
        public final int f46279f;

        /* renamed from: g */
        public final int f46280g;

        /* renamed from: h */
        public final int f46281h;

        /* renamed from: i */
        public final int f46282i;

        /* renamed from: j */
        public final int f46283j;

        /* renamed from: k */
        public final int f46284k;

        /* renamed from: l */
        public final int f46285l;

        /* renamed from: m */
        public final int f46286m;

        /* renamed from: n */
        public final int f46287n;

        /* renamed from: o */
        public final int f46288o;

        public C16465b(Cursor cursor) {
            super(cursor);
            this.f46279f = cursor.getColumnIndex("data1");
            this.f46280g = cursor.getColumnIndex("data2");
            this.f46281h = cursor.getColumnIndex("data3");
            this.f46282i = cursor.getColumnIndex("data4");
            this.f46283j = cursor.getColumnIndex("data5");
            this.f46284k = cursor.getColumnIndex("data6");
            this.f46285l = cursor.getColumnIndex("data7");
            this.f46286m = cursor.getColumnIndex("data8");
            this.f46287n = cursor.getColumnIndex("data9");
            this.f46288o = cursor.getColumnIndex("data10");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Business mo17349g(Cursor cursor) {
            Business business = new Business();
            business.setBranch(m17374a(cursor, this.f46279f));
            business.setDepartment(m17374a(cursor, this.f46280g));
            business.setCompanySize(m17374a(cursor, this.f46281h));
            business.setOpeningHours(m17374a(cursor, this.f46282i));
            business.setLandline(m17374a(cursor, this.f46283j));
            business.setScore(m17374a(cursor, this.f46284k));
            business.setSwishNumber(m17374a(cursor, this.f46285l));
            business.setMediaCallerIDs(m17374a(cursor, this.f46286m));
            business.setAppStores(m17374a(cursor, this.f46287n));
            business.setBrandedMedia(m17374a(cursor, this.f46288o));
            return business;
        }
    }

    /* renamed from: e.a.k3.j.d$c */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$c.class */
    public static abstract class AbstractC16466c<T extends RowEntity> extends AbstractC16460a<T> {

        /* renamed from: a */
        public final int f46289a;

        /* renamed from: b */
        public final int f46290b;

        /* renamed from: c */
        public final int f46291c;

        /* renamed from: d */
        public final int f46292d;

        /* renamed from: e */
        public final int f46293e;

        public AbstractC16466c(Cursor cursor) {
            this.f46289a = m17373b(cursor, "data_id", "_id");
            this.f46290b = m17373b(cursor, "data_tc_id", "tc_id");
            this.f46291c = m17373b(cursor, "data_is_primary");
            this.f46292d = m17373b(cursor, "data_phonebook_id");
            this.f46293e = m17373b(cursor, "aggregated_raw_contact_source", "contact_source");
        }

        /* renamed from: f */
        public T m17352f(Cursor cursor) {
            int i = this.f46289a;
            if (i == -1 || cursor.isNull(i)) {
                return null;
            }
            T mo17349g = mo17349g(cursor);
            if (mo17349g != null) {
                mo17349g.setId(m17371d(cursor, this.f46289a));
                mo17349g.setTcId(m17374a(cursor, this.f46290b));
                boolean z = true;
                if (m17370e(cursor, this.f46291c) != 1) {
                    z = false;
                }
                mo17349g.setIsPrimary(z);
                mo17349g.setDataPhonebookId(m17371d(cursor, this.f46292d));
                mo17349g.setSource(m17370e(cursor, this.f46293e));
            }
            return mo17349g;
        }

        /* renamed from: g */
        public abstract T mo17349g(Cursor cursor);
    }

    /* renamed from: e.a.k3.j.d$d */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$d.class */
    public static class C16467d extends AbstractC16466c<Link> {

        /* renamed from: f */
        public final int f46294f;

        /* renamed from: g */
        public final int f46295g;

        /* renamed from: h */
        public final int f46296h;

        public C16467d(Cursor cursor) {
            super(cursor);
            this.f46294f = cursor.getColumnIndex("data1");
            this.f46295g = cursor.getColumnIndex("data2");
            this.f46296h = cursor.getColumnIndex("data3");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Link mo17349g(Cursor cursor) {
            Link link = new Link();
            link.setInfo(m17374a(cursor, this.f46294f));
            link.setService(m17374a(cursor, this.f46295g));
            link.setCaption(m17374a(cursor, this.f46296h));
            return link;
        }
    }

    /* renamed from: e.a.k3.j.d$e */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$e.class */
    public static class C16468e extends AbstractC16466c<NameFeedback> {

        /* renamed from: f */
        public final int f46297f;

        /* renamed from: g */
        public final int f46298g;

        public C16468e(Cursor cursor) {
            super(cursor);
            this.f46297f = cursor.getColumnIndex("data1");
            this.f46298g = cursor.getColumnIndex("data2");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public NameFeedback mo17349g(Cursor cursor) {
            NameFeedback nameFeedback = new NameFeedback();
            nameFeedback.setNameSource(m17372c(cursor, this.f46297f));
            nameFeedback.setNameElectionAlgo(m17374a(cursor, this.f46298g));
            return nameFeedback;
        }
    }

    /* renamed from: e.a.k3.j.d$f */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$f.class */
    public static class C16469f extends AbstractC16466c<Note> {

        /* renamed from: f */
        public final int f46299f;

        public C16469f(Cursor cursor) {
            super(cursor);
            this.f46299f = cursor.getColumnIndex("data1");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Note mo17349g(Cursor cursor) {
            Note note = new Note();
            note.setValue(m17374a(cursor, this.f46299f));
            return note;
        }
    }

    /* renamed from: e.a.k3.j.d$g */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$g.class */
    public static class C16470g extends AbstractC16466c<Number> {

        /* renamed from: f */
        public final int f46300f;

        /* renamed from: g */
        public final int f46301g;

        /* renamed from: h */
        public final int f46302h;

        /* renamed from: i */
        public final int f46303i;

        /* renamed from: j */
        public final int f46304j;

        /* renamed from: k */
        public final int f46305k;

        /* renamed from: l */
        public final int f46306l;

        /* renamed from: m */
        public final int f46307m;

        /* renamed from: n */
        public final int f46308n;

        /* renamed from: o */
        public final int f46309o;

        /* renamed from: p */
        public final int f46310p;

        /* renamed from: q */
        public final int f46311q;

        public C16470g(Cursor cursor) {
            super(cursor);
            this.f46300f = cursor.getColumnIndex("data1");
            this.f46301g = cursor.getColumnIndex("data2");
            this.f46302h = cursor.getColumnIndex("data3");
            this.f46303i = cursor.getColumnIndex("data4");
            this.f46304j = cursor.getColumnIndex("data5");
            this.f46305k = cursor.getColumnIndex("data6");
            this.f46306l = cursor.getColumnIndex("data7");
            this.f46307m = cursor.getColumnIndex("data8");
            this.f46308n = cursor.getColumnIndex("data9");
            this.f46309o = cursor.getColumnIndex("data10");
            this.f46311q = cursor.getColumnIndex("data11");
            this.f46310p = m17373b(cursor, "aggregated_raw_contact_source", "contact_source");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Number mo17349g(Cursor cursor) {
            Number number = new Number();
            number.m35466t(m17374a(cursor, this.f46300f));
            number.m35467s(m17374a(cursor, this.f46301g));
            number.m35463x(m17370e(cursor, this.f46302h));
            number.m35462y(m17370e(cursor, this.f46303i));
            number.m35461z(m17374a(cursor, this.f46304j));
            ((ContactDto.Contact.PhoneNumber) number.mRow).dialingCode = String.valueOf(m17370e(cursor, this.f46305k));
            number.setCountryCode(m17374a(cursor, this.f46306l));
            number.m35465v(C8574c0.m28347l(m17374a(cursor, this.f46307m), j.d.l));
            number.m35464w(m17374a(cursor, this.f46308n));
            ((ContactDto.Contact.PhoneNumber) number.mRow).carrier = m17374a(cursor, this.f46309o);
            number.f11564a = m17370e(cursor, this.f46310p);
            ((ContactDto.Contact.PhoneNumber) number.mRow).spamType = m17374a(cursor, this.f46311q);
            return number;
        }
    }

    /* renamed from: e.a.k3.j.d$h */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$h.class */
    public static class C16471h extends AbstractC16466c<SearchWarning> {

        /* renamed from: f */
        public final int f46312f;

        /* renamed from: g */
        public final int f46313g;

        /* renamed from: h */
        public final int f46314h;

        /* renamed from: i */
        public final C16502j f46315i;

        public C16471h(Cursor cursor, C16502j c16502j) {
            super(cursor);
            this.f46312f = cursor.getColumnIndex("data1");
            this.f46313g = cursor.getColumnIndex("data2");
            this.f46314h = cursor.getColumnIndex("data3");
            this.f46315i = c16502j;
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public SearchWarning mo17349g(Cursor cursor) {
            List<? extends ContactDto.Contact.SearchWarning.Feature> list;
            SearchWarning searchWarning = new SearchWarning();
            searchWarning.setId(m17374a(cursor, this.f46312f));
            searchWarning.setRuleName(m17374a(cursor, this.f46314h));
            C16502j c16502j = this.f46315i;
            String m17374a = m17374a(cursor, this.f46313g);
            Objects.requireNonNull(c16502j);
            if (m17374a == null || m17374a.length() == 0) {
                list = s.a;
            } else {
                Object g = C16502j.f46395a.g(m17374a, new C16501i().getType());
                l.d(g, "gson.fromJson(serializedFeatures, listType)");
                list = (List) g;
            }
            searchWarning.setFeatures(list);
            return searchWarning;
        }
    }

    /* renamed from: e.a.k3.j.d$i */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$i.class */
    public static class C16472i extends AbstractC16466c<Source> {

        /* renamed from: f */
        public final int f46316f;

        /* renamed from: g */
        public final int f46317g;

        /* renamed from: h */
        public final int f46318h;

        /* renamed from: i */
        public final int f46319i;

        /* renamed from: j */
        public final int f46320j;

        public C16472i(Cursor cursor) {
            super(cursor);
            this.f46316f = cursor.getColumnIndex("data1");
            this.f46317g = cursor.getColumnIndex("data2");
            this.f46318h = cursor.getColumnIndex("data3");
            this.f46319i = cursor.getColumnIndex("data4");
            this.f46320j = cursor.getColumnIndex("data5");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Source mo17349g(Cursor cursor) {
            Source source = new Source();
            ((ContactDto.Contact.Source) source.mRow).f11494id = m17374a(cursor, this.f46316f);
            ((ContactDto.Contact.Source) source.mRow).url = m17374a(cursor, this.f46317g);
            ((ContactDto.Contact.Source) source.mRow).logo = m17374a(cursor, this.f46318h);
            ((ContactDto.Contact.Source) source.mRow).caption = m17374a(cursor, this.f46319i);
            String m17374a = m17374a(cursor, this.f46320j);
            if (!TextUtils.isEmpty(m17374a)) {
                ((ContactDto.Contact.Source) source.mRow).extra = (Map) new k().g(m17374a, new C16478e(this).getType());
            }
            return source;
        }
    }

    /* renamed from: e.a.k3.j.d$j */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$j.class */
    public static class C16473j extends AbstractC16466c<SpamData> {

        /* renamed from: f */
        public final int f46321f;

        /* renamed from: g */
        public final int f46322g;

        /* renamed from: h */
        public final int f46323h;

        /* renamed from: i */
        public final int f46324i;

        /* renamed from: j */
        public final int f46325j;

        /* renamed from: k */
        public final int f46326k;

        /* renamed from: l */
        public final C16449c f46327l;

        public C16473j(Cursor cursor, C16449c c16449c) {
            super(cursor);
            this.f46321f = cursor.getColumnIndex("data1");
            this.f46322g = cursor.getColumnIndex("data2");
            this.f46323h = cursor.getColumnIndex("data3");
            this.f46324i = cursor.getColumnIndex("data4");
            this.f46325j = cursor.getColumnIndex("spam_categories");
            this.f46326k = cursor.getColumnIndex("data5");
            this.f46327l = c16449c;
        }

        /* renamed from: h */
        public SpamData mo17349g(Cursor cursor) {
            SpamData spamData = new SpamData(this.f46327l.mo17388a(m17374a(cursor, this.f46325j)));
            spamData.setNumReports60days(m17372c(cursor, this.f46321f));
            spamData.setNumCalls60days(m17372c(cursor, this.f46322g));
            spamData.setNumCalls60DaysPointerPosition(m17372c(cursor, this.f46323h));
            spamData.setNumCallsHourly(m17374a(cursor, this.f46324i));
            spamData.setSpamVersion(m17372c(cursor, this.f46326k));
            return spamData;
        }
    }

    /* renamed from: e.a.k3.j.d$k */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$k.class */
    public static class C16474k extends AbstractC16466c<StructuredName> {

        /* renamed from: f */
        public final int f46328f;

        /* renamed from: g */
        public final int f46329g;

        /* renamed from: h */
        public final int f46330h;

        public C16474k(Cursor cursor) {
            super(cursor);
            this.f46328f = cursor.getColumnIndex("data1");
            this.f46329g = cursor.getColumnIndex("data2");
            this.f46330h = cursor.getColumnIndex("data3");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public StructuredName mo17349g(Cursor cursor) {
            StructuredName structuredName = new StructuredName();
            structuredName.setGivenName(m17374a(cursor, this.f46328f));
            structuredName.setFamilyName(m17374a(cursor, this.f46329g));
            structuredName.setMiddleName(m17374a(cursor, this.f46330h));
            return structuredName;
        }
    }

    /* renamed from: e.a.k3.j.d$l */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$l.class */
    public static class C16475l extends AbstractC16466c<Style> {

        /* renamed from: f */
        public final int f46331f;

        /* renamed from: g */
        public final int f46332g;

        public C16475l(Cursor cursor) {
            super(cursor);
            this.f46331f = cursor.getColumnIndex("data1");
            this.f46332g = cursor.getColumnIndex("data2");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Style mo17349g(Cursor cursor) {
            Style style = new Style();
            style.setBackgroundColor(m17374a(cursor, this.f46331f));
            style.setImageUrls(m17374a(cursor, this.f46332g));
            return style;
        }
    }

    /* renamed from: e.a.k3.j.d$m */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$m.class */
    public static class C16476m extends AbstractC16466c<ContactSurvey> {

        /* renamed from: f */
        public final int f46333f;

        /* renamed from: g */
        public final int f46334g;

        /* renamed from: h */
        public final int f46335h;

        public C16476m(Cursor cursor) {
            super(cursor);
            this.f46333f = cursor.getColumnIndex("data1");
            this.f46334g = cursor.getColumnIndex("data2");
            this.f46335h = cursor.getColumnIndex("data3");
        }

        /* renamed from: h */
        public ContactSurvey mo17349g(Cursor cursor) {
            ContactSurvey contactSurvey = new ContactSurvey();
            contactSurvey.setId(m17374a(cursor, this.f46333f));
            contactSurvey.setFrequency(m17371d(cursor, this.f46334g));
            contactSurvey.setPassthroughData(m17374a(cursor, this.f46335h));
            return contactSurvey;
        }
    }

    /* renamed from: e.a.k3.j.d$n */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/d$n.class */
    public static class C16477n extends AbstractC16466c<Tag> {

        /* renamed from: f */
        public final int f46336f;

        public C16477n(Cursor cursor) {
            super(cursor);
            this.f46336f = cursor.getColumnIndex("data1");
        }

        @Override // p193e.p194a.p997k3.p998j.C16463d.AbstractC16466c
        /* renamed from: g */
        public Tag mo17349g(Cursor cursor) {
            Tag tag = new Tag();
            tag.setValue(m17374a(cursor, this.f46336f));
            return tag;
        }
    }

    public C16463d(Cursor cursor) {
        this(cursor, new C16448b(new C16449c.C16450a(t.a)), C16502j.f46396b);
    }

    public C16463d(Cursor cursor, C16449c c16449c, C16502j c16502j) {
        int m17373b = m17373b(cursor, "history_aggregated_contact_id", "history_raw_contact_id", "_id");
        this.f46245a = m17373b;
        this.f46247c = m17373b(cursor, "history_aggregated_contact_tc_id", "history_raw_contact_tc_id", "tc_id");
        int columnIndex = cursor.getColumnIndex("aggregated_contact_id");
        this.f46246b = columnIndex;
        this.f46248d = cursor.getColumnIndex("contact_name");
        this.f46251g = cursor.getColumnIndex("contact_transliterated_name");
        this.f46249e = cursor.getColumnIndex("contact_is_favorite");
        this.f46250f = cursor.getColumnIndex("contact_favorite_position");
        this.f46252h = cursor.getColumnIndex("contact_handle");
        this.f46253i = cursor.getColumnIndex("contact_alt_name");
        this.f46254j = cursor.getColumnIndex("contact_gender");
        this.f46255k = cursor.getColumnIndex("contact_about");
        this.f46256l = cursor.getColumnIndex("contact_image_url");
        this.f46257m = cursor.getColumnIndex("contact_job_title");
        this.f46258n = cursor.getColumnIndex("contact_company");
        this.f46259o = cursor.getColumnIndex("contact_access");
        this.f46260p = cursor.getColumnIndex("contact_common_connections");
        this.f46261q = cursor.getColumnIndex("contact_search_time");
        this.f46262r = cursor.getColumnIndex("contact_source");
        this.f46263s = cursor.getColumnIndex("contact_default_number");
        this.f46264t = cursor.getColumnIndex("contact_phonebook_id");
        this.f46265u = cursor.getColumnIndex("contact_phonebook_hash");
        this.f46266v = cursor.getColumnIndex("contact_phonebook_lookup");
        this.f46267w = cursor.getColumnIndex("contact_badges");
        this.f46269y = cursor.getColumnIndex("search_query");
        this.f46270z = cursor.getColumnIndex("cache_control");
        this.f46219A = cursor.getColumnIndex("contact_spam_score");
        this.f46220B = cursor.getColumnIndex("contact_spam_type");
        this.f46221C = cursor.getColumnIndex("tc_flag");
        this.f46222D = cursor.getColumnIndex("data_raw_contact_id");
        this.f46223E = cursor.getColumnIndex("insert_timestamp");
        this.f46224F = cursor.getColumnIndex("contact_im_id");
        this.f46225G = cursor.getColumnIndex("contact_premium_level");
        this.f46226H = cursor.getColumnIndex("contact_premium_scope");
        this.f46227I = cursor.getColumnIndex("spam_categories");
        this.f46268x = cursor.getColumnIndex("data_type");
        this.f46242X = c16449c;
        m17353h(cursor.getColumnIndex("history_aggregated_contact_id") == m17373b || columnIndex == -1 || cursor.getColumnIndex("aggregated_raw_contact_id") != -1);
        this.f46243Y = c16502j;
    }

    /* renamed from: f */
    public Entity m17355f(Cursor cursor, Contact contact) {
        SpamData spamData;
        int i = this.f46268x;
        if (i == -1 || cursor.isNull(i)) {
            SpamData spamData2 = null;
            if (this.f46227I != -1) {
                spamData2 = new C16473j(cursor, this.f46242X).mo17349g(cursor);
                contact.f11529x = spamData2;
            }
            return spamData2;
        }
        int m17370e = m17370e(cursor, this.f46268x);
        switch (m17370e) {
            case 1:
                if (this.f46229K == null) {
                    this.f46229K = new C16464a(cursor);
                }
                Address m17352f = this.f46229K.m17352f(cursor);
                spamData = m17352f;
                if (m17352f != null) {
                    contact.m35531b(m17352f);
                    spamData = m17352f;
                    break;
                }
                break;
            case 2:
            default:
                String.format("Encountered an unknown data type=%s, contact=%s", Integer.valueOf(m17370e), contact);
                spamData = null;
                break;
            case 3:
                if (this.f46232N == null) {
                    this.f46232N = new C16467d(cursor);
                }
                Link m17352f2 = this.f46232N.m17352f(cursor);
                spamData = m17352f2;
                if (m17352f2 != null) {
                    contact.m35528c(m17352f2);
                    spamData = m17352f2;
                    break;
                }
                break;
            case 4:
                if (this.f46231M == null) {
                    this.f46231M = new C16470g(cursor);
                }
                Number m17352f3 = this.f46231M.m17352f(cursor);
                spamData = m17352f3;
                if (m17352f3 != null) {
                    contact.m35525d(m17352f3);
                    spamData = m17352f3;
                    if (contact.m35498s() == null) {
                        contact.m35552O0(m17352f3.m35479e());
                        spamData = m17352f3;
                        break;
                    }
                }
                break;
            case 5:
                if (this.f46233O == null) {
                    this.f46233O = new C16472i(cursor);
                }
                RowEntity rowEntity = (Source) this.f46233O.m17352f(cursor);
                spamData = rowEntity;
                if (rowEntity != null) {
                    ContactDto.Contact contact2 = (ContactDto.Contact) contact.mRow;
                    contact2.sources = contact.m35534a(contact.f11509d, contact2.sources, rowEntity, (ContactDto.Contact.Source) rowEntity.row());
                    spamData = rowEntity;
                    break;
                }
                break;
            case 6:
                if (this.f46230L == null) {
                    this.f46230L = new C16477n(cursor);
                }
                Tag m17352f4 = this.f46230L.m17352f(cursor);
                spamData = m17352f4;
                if (m17352f4 != null) {
                    contact.m35517g(m17352f4);
                    spamData = m17352f4;
                    break;
                }
                break;
            case 7:
                if (this.f46234P == null) {
                    this.f46234P = new C16474k(cursor);
                }
                StructuredName m17352f5 = this.f46234P.m17352f(cursor);
                contact.f11524s = m17352f5;
                spamData = m17352f5;
                break;
            case 8:
                if (this.f46235Q == null) {
                    this.f46235Q = new C16469f(cursor);
                }
                Note m17352f6 = this.f46235Q.m17352f(cursor);
                spamData = m17352f6;
                if (m17352f6 != null) {
                    contact.f11525t = m17352f6;
                    spamData = m17352f6;
                    break;
                }
                break;
            case 9:
                if (this.f46236R == null) {
                    this.f46236R = new C16465b(cursor);
                }
                Business m17352f7 = this.f46236R.m17352f(cursor);
                spamData = m17352f7;
                if (m17352f7 != null) {
                    contact.f11526u = m17352f7;
                    spamData = m17352f7;
                    break;
                }
                break;
            case 10:
                if (this.f46237S == null) {
                    this.f46237S = new C16475l(cursor);
                }
                Style m17352f8 = this.f46237S.m17352f(cursor);
                spamData = m17352f8;
                if (m17352f8 != null) {
                    contact.f11527v = m17352f8;
                    spamData = m17352f8;
                    break;
                }
                break;
            case 11:
                if (this.f46238T == null) {
                    this.f46238T = new C16468e(cursor);
                }
                NameFeedback m17352f9 = this.f46238T.m17352f(cursor);
                spamData = m17352f9;
                if (m17352f9 != null) {
                    contact.f11528w = m17352f9;
                    spamData = m17352f9;
                    break;
                }
                break;
            case 12:
                if (this.f46239U == null) {
                    this.f46239U = new C16473j(cursor, this.f46242X);
                }
                SpamData m17352f10 = this.f46239U.m17352f(cursor);
                spamData = m17352f10;
                if (m17352f10 != null) {
                    contact.f11529x = m17352f10;
                    spamData = m17352f10;
                    break;
                }
                break;
            case 13:
                if (this.f46240V == null) {
                    this.f46240V = new C16471h(cursor, this.f46243Y);
                }
                SearchWarning m17352f11 = this.f46240V.m17352f(cursor);
                spamData = m17352f11;
                if (m17352f11 != null) {
                    contact.m35522e(m17352f11);
                    spamData = m17352f11;
                    break;
                }
                break;
            case 14:
                if (this.f46241W == null) {
                    this.f46241W = new C16476m(cursor);
                }
                ContactSurvey m17352f12 = this.f46241W.m17352f(cursor);
                spamData = m17352f12;
                if (m17352f12 != null) {
                    contact.m35519f(m17352f12);
                    spamData = m17352f12;
                    break;
                }
                break;
        }
        return spamData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v49, types: [long] */
    /* JADX WARN: Type inference failed for: r1v81, types: [long] */
    /* renamed from: g */
    public Contact m17354g(Cursor cursor) {
        int i = this.f46245a;
        if (i == -1 || cursor.isNull(i)) {
            return null;
        }
        Contact contact = new Contact();
        long j = cursor.getLong(this.f46245a);
        contact.setId(Long.valueOf(j));
        int i2 = this.f46246b;
        if (i2 != -1 && !this.f46244Z) {
            Long m17371d = m17371d(cursor, i2);
            ((ContactDto.Contact) contact.mRow).aggregatedRowId = m17371d == null ? (char) 0 : m17371d.longValue();
        }
        contact.f11514i = ContentUris.withAppendedId(this.f46228J, j);
        contact.setTcId(cursor.getString(this.f46247c));
        contact.m35546S0(m17374a(cursor, this.f46248d));
        ((ContactDto.Contact) contact.mRow).transliteratedName = m17374a(cursor, this.f46251g);
        boolean z = true;
        if (m17370e(cursor, this.f46249e) != 1) {
            z = false;
        }
        contact.m35549Q0(z);
        Integer m17372c = m17372c(cursor, this.f46250f);
        ((ContactDto.Contact) contact.mRow).favoritePosition = m17372c != null ? m17372c.intValue() : -1;
        ((ContactDto.Contact) contact.mRow).handle = m17374a(cursor, this.f46252h);
        contact.m35558L0(m17374a(cursor, this.f46253i));
        ((ContactDto.Contact) contact.mRow).gender = m17374a(cursor, this.f46254j);
        ((ContactDto.Contact) contact.mRow).about = m17374a(cursor, this.f46255k);
        contact.m35550P0(m17374a(cursor, this.f46256l));
        contact.m35547R0(m17374a(cursor, this.f46257m));
        contact.m35554N0(m17374a(cursor, this.f46258n));
        ((ContactDto.Contact) contact.mRow).access = m17374a(cursor, this.f46259o);
        ((ContactDto.Contact) contact.mRow).commonConnections = m17370e(cursor, this.f46260p);
        int i3 = this.f46261q;
        contact.m35539X0(((i3 == -1 || cursor.isNull(i3)) ? false : cursor.getLong(this.f46261q)) == true ? 1L : 0L);
        contact.setSource(m17370e(cursor, this.f46262r));
        contact.m35552O0(m17374a(cursor, this.f46263s));
        contact.m35544T0(m17371d(cursor, this.f46264t));
        Long m17371d2 = m17371d(cursor, this.f46265u);
        ((ContactDto.Contact) contact.mRow).phonebookHash = m17371d2 == null ? (char) 0 : m17371d2.longValue();
        ((ContactDto.Contact) contact.mRow).phonebookLookupKey = m17374a(cursor, this.f46266v);
        int i4 = this.f46267w;
        int i5 = 0;
        if (i4 != -1) {
            i5 = cursor.isNull(i4) ? 0 : cursor.getInt(this.f46267w);
        }
        contact.f11523r = i5;
        contact.m35541V0(m17374a(cursor, this.f46269y));
        String m17374a = m17374a(cursor, this.f46270z);
        Set<Character> set = C19231g0.f53598a;
        Long l = null;
        if (m17374a != null) {
            try {
                l = Long.valueOf(Long.parseLong(m17374a));
            } catch (RuntimeException e) {
                l = null;
            }
        }
        contact.m35556M0(l);
        contact.f11515j = this.f46244Z;
        contact.m35535Z0(m17372c(cursor, this.f46219A));
        contact.m35537Y0(m17374a(cursor, this.f46227I));
        contact.m35532a1(m17374a(cursor, this.f46220B));
        contact.f11531z = m17370e(cursor, this.f46221C);
        ((ContactDto.Contact) contact.mRow).imId = m17374a(cursor, this.f46224F);
        String m17374a2 = m17374a(cursor, this.f46225G);
        if (m17374a2 != null) {
            contact.f11530y = Contact.PremiumLevel.fromRemote(m17374a2);
        }
        String m17374a3 = m17374a(cursor, this.f46226H);
        if (m17374a3 != null) {
            PremiumScope.fromRemote(m17374a3);
        }
        return contact;
    }

    /* renamed from: h */
    public void m17353h(boolean z) {
        this.f46244Z = z;
        if (this.f46268x == -1) {
            this.f46228J = z ? C17891a1.C17892a.m15709b() : C17891a1.C17904m.m15552a();
        } else {
            this.f46228J = z ? C17891a1.C17892a.m15707d() : C17891a1.C17904m.m15551b();
        }
    }
}
