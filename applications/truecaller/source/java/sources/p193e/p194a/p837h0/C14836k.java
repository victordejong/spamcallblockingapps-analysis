package p193e.p194a.p837h0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.OperationCanceledException;
import android.telephony.TelephonyManager;
import com.amazon.device.ads.DtbConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.SpamData;
import com.truecaller.filters.sync.FilterUploadWorker;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.j;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p1727n3.p1807k.p1820h.C26553c;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p413i.p415f.C8469a;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p837h0.p844w.C14872a;
import p193e.p194a.p837h0.p844w.C14876c;
import p193e.p194a.p837h0.p845x.AbstractC14877a;
import p193e.p194a.p837h0.p845x.C14878b;
import p193e.p194a.p837h0.p845x.C14879c;
import p193e.p194a.p837h0.p845x.C14880d;
import p193e.p194a.p837h0.p845x.C14881e;
import s1.g;
import s1.k;
import s1.n;
import s1.z.b.a;
import w3.c.a.a.a.h;
import x3.a0;
/* renamed from: e.a.h0.k */
/* loaded from: classes9-dex2jar.jar:e/a/h0/k.class */
public class C14836k implements AbstractC14835j {

    /* renamed from: o */
    public static final Pattern f42404o = Pattern.compile("91140\\d{7}$");

    /* renamed from: a */
    public final Context f42405a;

    /* renamed from: b */
    public final AbstractC14840m f42406b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC19463a0> f42407c;

    /* renamed from: d */
    public final AbstractC19462a f42408d;

    /* renamed from: e */
    public final AbstractC8621z f42409e;

    /* renamed from: f */
    public final C20592g f42410f;

    /* renamed from: g */
    public final AbstractC8432l f42411g;

    /* renamed from: h */
    public final TelephonyManager f42412h;

    /* renamed from: i */
    public final AbstractC19219a0 f42413i;

    /* renamed from: j */
    public final AbstractC17197v0 f42414j;

    /* renamed from: k */
    public AbstractC19854f<AbstractC17348c> f42415k;

    /* renamed from: l */
    public C14830e f42416l;

    /* renamed from: m */
    public CleverTapManager f42417m;

    /* renamed from: n */
    public AbstractC10255e f42418n;

    /* renamed from: e.a.h0.k$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/k$a.class */
    public static class C14837a {

        /* renamed from: a */
        public final String f42419a;

        /* renamed from: b */
        public final String[] f42420b;

        public C14837a(String str, String[] strArr) {
            this.f42419a = str;
            this.f42420b = strArr;
        }

        /* renamed from: a */
        public static C14837a m19569a(String... strArr) {
            if (strArr == null) {
                return null;
            }
            StringBuilder m8728C = C22128a.m8728C("(");
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                if (!h.j(str) && !arrayList.contains(str)) {
                    if (arrayList.size() > 0) {
                        m8728C.append(" OR ");
                    }
                    arrayList.add(str);
                    m8728C.append("value=? COLLATE NOCASE");
                }
            }
            if (arrayList.size() == 0) {
                AssertionUtil.isTrue(false, new String[0]);
                return null;
            }
            m8728C.append(")");
            return new C14837a(m8728C.toString(), (String[]) arrayList.toArray(new String[0]));
        }

        public String toString() {
            String str = C14837a.class.getSimpleName() + ": selection: " + this.f42419a;
            for (String str2 : this.f42420b) {
                str = C22128a.m8725C2(str, ", ", str2);
            }
            return str;
        }
    }

    /* renamed from: e.a.h0.k$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/k$b.class */
    public static class C14838b {

        /* renamed from: a */
        public final Pattern f42421a;

        public C14838b(String str, int i) {
            Pattern pattern;
            PatternSyntaxException e;
            Pattern compilePattern;
            String str2;
            FiltersContract.Filters.WildCardType valueOfType = FiltersContract.Filters.WildCardType.valueOfType(i);
            try {
                compilePattern = valueOfType.compilePattern(str);
                pattern = compilePattern;
            } catch (PatternSyntaxException e2) {
                e = e2;
                pattern = null;
            }
            try {
                if (valueOfType == FiltersContract.Filters.WildCardType.START) {
                    String stripPattern = valueOfType.stripPattern(str);
                    pattern = compilePattern;
                    if (!stripPattern.startsWith("+")) {
                        int o = j.q().o(AbstractApplicationC8442a.m28551L().m28543T().toUpperCase());
                        List<String> list = C8574c0.f26390a;
                        boolean contains = C8574c0.f26390a.contains(j.q().y(o));
                        if (stripPattern.startsWith("00")) {
                            str2 = "+" + stripPattern.substring(2);
                        } else if (!stripPattern.startsWith(DtbConstants.NETWORK_TYPE_UNKNOWN) || contains) {
                            str2 = "+" + o + stripPattern;
                        } else {
                            str2 = "+" + o + stripPattern.substring(1);
                        }
                        pattern = valueOfType.compilePattern(valueOfType.formatPattern(str2));
                    }
                }
            } catch (PatternSyntaxException e3) {
                e = e3;
                pattern = compilePattern;
                AssertionUtil.reportThrowableButNeverCrash(e);
                this.f42421a = pattern;
            }
            this.f42421a = pattern;
        }
    }

    public C14836k(Context context, AbstractC14840m abstractC14840m, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19462a abstractC19462a, AbstractC8621z abstractC8621z, C20592g c20592g, AbstractC8432l abstractC8432l, TelephonyManager telephonyManager, AbstractC19219a0 abstractC19219a0, AbstractC17197v0 abstractC17197v0, AbstractC19854f<AbstractC17348c> abstractC19854f2, C14830e c14830e, CleverTapManager cleverTapManager, AbstractC10255e abstractC10255e) {
        this.f42405a = context.getApplicationContext();
        this.f42406b = abstractC14840m;
        this.f42407c = abstractC19854f;
        this.f42408d = abstractC19462a;
        this.f42409e = abstractC8621z;
        this.f42410f = c20592g;
        this.f42411g = abstractC8432l;
        this.f42412h = telephonyManager;
        this.f42413i = abstractC19219a0;
        this.f42414j = abstractC17197v0;
        this.f42415k = abstractC19854f2;
        this.f42416l = c14830e;
        this.f42417m = cleverTapManager;
        this.f42418n = abstractC10255e;
    }

    /* renamed from: C */
    public static String m19604C(AbstractC19854f<AbstractC17348c> abstractC19854f, ContentValues contentValues) {
        try {
            HistoryEvent mo11831c = abstractC19854f.mo11854a().mo16240h(contentValues.get("value").toString()).mo11831c();
            if (mo11831c == null) {
                return null;
            }
            return mo11831c.f11534a;
        } catch (InterruptedException e) {
            return null;
        }
    }

    /* renamed from: A */
    public final List<FilterMatch> m19606A(String str, String str2, String str3, boolean z, int i, List<C14872a> list) {
        ArrayList arrayList = new ArrayList();
        for (C14872a c14872a : list) {
            FiltersContract.Filters.WildCardType wildCardType = c14872a.f42505g;
            boolean z2 = wildCardType != FiltersContract.Filters.WildCardType.NONE;
            boolean z3 = true;
            if (!z) {
                z3 = c14872a.f42501c != 2;
            }
            if (z2 && z3) {
                if (wildCardType.type == FiltersContract.Filters.WildCardType.CONTAIN.type && !h.j(str3) && m19600G(str3, c14872a.f42503e, c14872a.f42505g.type)) {
                    arrayList.add(new FilterMatch(c14872a.f42499a, FilterAction.FILTER_BLACKLISTED, ActionSource.BLACKLISTED_WILDCARD, c14872a.f42502d, c14872a.f42501c, 0, c14872a.f42505g, C19291g.m13610L1(c14872a.f42506h), null));
                    if (arrayList.size() == i) {
                        return arrayList;
                    }
                } else if ((!h.j(str) && m19600G(str, c14872a.f42503e, c14872a.f42505g.type)) || (!h.j(str2) && m19600G(str2, c14872a.f42503e, c14872a.f42505g.type))) {
                    arrayList.add(new FilterMatch(c14872a.f42499a, FilterAction.FILTER_BLACKLISTED, ActionSource.BLACKLISTED_WILDCARD, c14872a.f42502d, c14872a.f42501c, 0, c14872a.f42505g, C19291g.m13610L1(c14872a.f42506h), null));
                    if (arrayList.size() == i) {
                        return arrayList;
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: B */
    public final C14878b m19605B(String str) {
        C14878b c14878b;
        String str2;
        String str3;
        if (str == null) {
            return null;
        }
        try {
            HistoryEvent mo11831c = this.f42415k.mo11854a().mo16225w(str).mo11831c();
            Objects.requireNonNull(this.f42416l);
            if (mo11831c == null) {
                c14878b = null;
            } else {
                C14878b c14878b2 = new C14878b();
                c14878b2.f42533b = mo11831c.f11541h;
                c14878b2.f42534c = mo11831c.f11542i;
                int i = mo11831c.f11550q;
                if (i == 1) {
                    str2 = "INCOMING";
                } else if (i == 2) {
                    str2 = "OUTGOING";
                } else if (i != 3) {
                    throw new IllegalArgumentException(C22128a.m8611i2("Unsupported direction: ", i));
                } else {
                    str2 = "MISSED";
                }
                c14878b2.f42532a = str2;
                int i2 = mo11831c.f11551r;
                c14878b2.f42535d = i2 != 0 ? i2 != 1 ? i2 != 3 ? "UNKNOWN" : "MUTED" : "HUNG_UP" : "NONE";
                String str4 = mo11831c.f11554u;
                if (str4 == null) {
                    str3 = null;
                } else {
                    try {
                        switch (ActionSource.valueOf(str4).ordinal()) {
                            case 0:
                                str3 = "NONE";
                                break;
                            case 1:
                                str3 = "HIDDEN_NUMBER";
                                break;
                            case 2:
                                str3 = "NON_PHONEBOOK";
                                break;
                            case 3:
                                str3 = "FOREIGN_NUMBER";
                                break;
                            case 4:
                                str3 = "NEIGHBOUR_SPOOFING";
                                break;
                            case 5:
                                str3 = "REGISTERED_TELEMARKETERS";
                                break;
                            case 6:
                                str3 = "TOP_SPAMMER_LIST";
                                break;
                            case 7:
                                str3 = "BLACKLISTED_NUMBER";
                                break;
                            case 8:
                                str3 = "COUNTRY_BLOCK";
                                break;
                            case 9:
                                str3 = "BLACKLISTED_NUMBER_SERIE";
                                break;
                            case 10:
                                str3 = "WHITELIST";
                                break;
                            case 11:
                                str3 = "SPAMMER_FROM_SEARCH";
                                break;
                            default:
                                AssertionUtil.reportWeirdnessButNeverCrash("Unexpected FILTER_SOURCE: " + str4);
                                str3 = null;
                                break;
                        }
                    } catch (IllegalArgumentException e) {
                        AssertionUtil.reportWeirdnessButNeverCrash("Unexpected FILTER_SOURCE: " + str4);
                        str3 = null;
                    }
                }
                c14878b2.f42536e = str3;
                c14878b = c14878b2;
            }
        } catch (InterruptedException e2) {
            c14878b = null;
        }
        return c14878b;
    }

    /* renamed from: D */
    public final C14879c m19603D(ContentValues contentValues, List<C14879c> list) {
        String asString = contentValues.getAsString("value");
        if (asString == null) {
            return null;
        }
        String str = asString;
        if ("IM_ID".equals(contentValues.getAsString("tracking_type"))) {
            str = C22128a.m8543z2("*", asString);
        }
        for (C14879c c14879c : list) {
            if (str.equals(c14879c.f42538b)) {
                return c14879c;
            }
        }
        return null;
    }

    /* renamed from: E */
    public final boolean m19602E(String str, String... strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: F */
    public final boolean m19601F(String str) {
        if (!this.f42413i.mo13825h("android.permission.READ_CONTACTS")) {
            return true;
        }
        return C17422k.m16042z(this.f42405a, str);
    }

    /* renamed from: G */
    public final boolean m19600G(String str, String str2, int i) {
        String m28374e;
        C14838b c14838b = new C14838b(str2, i);
        return c14838b.f42421a != null && (((m28374e = C8572b0.m28374e(str)) != null && c14838b.f42421a.matcher(m28374e).matches()) || c14838b.f42421a.matcher(str).matches());
    }

    /* renamed from: H */
    public final List<C14872a> m19599H() {
        C14876c c14876c;
        Throwable th;
        ArrayList arrayList = new ArrayList();
        try {
            c14876c = new C14876c(this.f42405a.getContentResolver().query(FiltersContract.Filters.m35810a(), null, null, null, null));
            while (c14876c.moveToNext()) {
                try {
                    arrayList.add(c14876c.getFilter());
                } catch (Throwable th2) {
                    th = th2;
                    if (c14876c != null) {
                        c14876c.close();
                    }
                    throw th;
                }
            }
            c14876c.close();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            c14876c = null;
        }
    }

    /* renamed from: I */
    public final void m19598I(String str) {
        C20592g c20592g = this.f42410f;
        if (c20592g.f57777L3.m10941a(c20592g, C20592g.f57695p6[247]).isEnabled()) {
            boolean m19596K = m19596K(this.f42409e.mo28180k(str != null ? str : ""));
            ArrayList arrayList = new ArrayList();
            m19580p(arrayList, C14837a.m19569a(str), 1);
            boolean z = !arrayList.isEmpty();
            if (!m19596K && !z) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("foreign", Boolean.valueOf(m19596K));
            hashMap.put("topSpammer", Boolean.valueOf(z));
            this.f42417m.push("PhoneNumberBlocked", hashMap);
        }
    }

    /* renamed from: J */
    public final String m19597J(String... strArr) {
        String mo28180k;
        for (String str : strArr) {
            if (!h.j(str) && (mo28180k = this.f42409e.mo28180k(str)) != null) {
                return mo28180k;
            }
        }
        return null;
    }

    /* renamed from: K */
    public final boolean m19596K(String str) {
        boolean z;
        String mo28578f = this.f42411g.mo28578f();
        String networkCountryIso = this.f42412h.getNetworkCountryIso();
        String simCountryIso = this.f42412h.getSimCountryIso();
        int i = 0;
        while (true) {
            z = false;
            if (i < 3) {
                String str2 = new String[]{mo28578f, networkCountryIso, simCountryIso}[i];
                if (str2 != null && str2.equalsIgnoreCase(str)) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return !z;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: a */
    public boolean mo19595a() {
        boolean z;
        List<C14879c> list;
        AssertionUtil.notOnMainThread("don't call uploadFilters() on main thread, it is a blocking call");
        boolean z2 = false;
        Cursor query = this.f42405a.getContentResolver().query(FiltersContract.Filters.m35810a(), null, "(sync_state=? OR sync_state=?)", new String[]{String.valueOf(1), String.valueOf(2)}, null);
        try {
            if (query != null) {
                try {
                } catch (IOException | RuntimeException e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    z = true;
                }
                if (query.getCount() != 0) {
                    ArrayList arrayList = new ArrayList();
                    C8469a.m28504d(query, arrayList);
                    String str = "got " + arrayList + " filters needing sync";
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ContentValues contentValues = (ContentValues) it.next();
                        String asString = contentValues.getAsString("value");
                        String asString2 = contentValues.getAsString("tracking_type");
                        String str2 = asString2;
                        if (h.j(asString2)) {
                            str2 = "OTHER";
                        }
                        String str3 = asString;
                        if (str2.equals("IM_ID")) {
                            str3 = "*" + asString;
                        }
                        FiltersContract.Filters.EntityType fromValue = FiltersContract.Filters.EntityType.fromValue(contentValues.getAsInteger("entity_type").intValue());
                        String asString3 = contentValues.getAsString("history_event_id");
                        if (contentValues.getAsInteger("sync_state").intValue() == 1) {
                            C14879c c14879c = new C14879c();
                            c14879c.f42537a = contentValues.getAsString("server_id");
                            c14879c.f42538b = str3;
                            c14879c.f42539c = contentValues.getAsString("label");
                            c14879c.f42546j = m19605B(asString3);
                            Integer asInteger = contentValues.getAsInteger("rule");
                            if (asInteger == null) {
                                asInteger = -1;
                            }
                            int intValue = asInteger.intValue();
                            if (intValue == 0) {
                                c14879c.f42540d = "BLACKLIST";
                            } else if (intValue != 1) {
                                AssertionUtil.report("Unknown client filter rule " + asInteger);
                            } else {
                                c14879c.f42540d = "WHITELIST";
                            }
                            c14879c.f42541e = str2;
                            c14879c.f42542f = contentValues.getAsString("tracking_source");
                            if (fromValue != FiltersContract.Filters.EntityType.UNKNOWN) {
                                c14879c.f42543g = Integer.valueOf(fromValue.value);
                            }
                            c14879c.f42544h = contentValues.getAsLong("category_id");
                            c14879c.f42545i = contentValues.getAsInteger("spam_version");
                            arrayList2.add(c14879c);
                        } else {
                            String asString4 = contentValues.getAsString("server_id");
                            long longValue = contentValues.getAsLong("_id").longValue();
                            if (!h.j(asString4)) {
                                arrayList3.add(new C26553c(Long.valueOf(longValue), URLEncoder.encode(asString4, StringConstant.UTF8)));
                            } else {
                                m19579q(Collections.singletonList(Long.valueOf(longValue)));
                            }
                        }
                    }
                    AbstractC14877a m15642U = C17891a1.C17902k.m15642U();
                    if (!arrayList2.isEmpty()) {
                        C14880d c14880d = (C14880d) m15642U.m19497a(arrayList2).execute().b;
                        if (c14880d == null || (list = c14880d.f42547a) == null || list.isEmpty()) {
                            z2 = true;
                        } else {
                            Iterator it2 = arrayList.iterator();
                            z2 = false;
                            while (it2.hasNext()) {
                                ContentValues contentValues2 = (ContentValues) it2.next();
                                C14879c m19603D = m19603D(contentValues2, c14880d.f42547a);
                                if (m19603D != null) {
                                    contentValues2.put("sync_state", (Integer) 0);
                                    contentValues2.put("server_id", m19603D.f42537a);
                                    this.f42405a.getContentResolver().insert(FiltersContract.Filters.m35810a(), contentValues2);
                                } else {
                                    z2 = true;
                                }
                            }
                        }
                    }
                    StringBuilder sb = null;
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        C26553c c26553c = (C26553c) it3.next();
                        if (sb != null) {
                            sb.append(",");
                        } else {
                            sb = new StringBuilder();
                        }
                        sb.append(c26553c.f74396b.toString());
                    }
                    String sb2 = sb != null ? sb.toString() : "";
                    if (!h.j(sb2)) {
                        z = true;
                        if (m15642U.m19496b(sb2).execute().b()) {
                            ArrayList arrayList4 = new ArrayList(arrayList3.size());
                            Iterator it4 = arrayList3.iterator();
                            while (it4.hasNext()) {
                                arrayList4.add((Long) ((C26553c) it4.next()).f74395a);
                            }
                            m19579q(arrayList4);
                        }
                        query.close();
                        return z;
                    }
                    z = z2;
                    query.close();
                    return z;
                }
            }
            if (query == null) {
                return false;
            }
            query.close();
            return false;
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: b */
    public int mo19594b(List<k<String, Integer>> list, String str, String str2, String str3, String str4, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (k<String, Integer> kVar : list) {
            String str5 = (String) kVar.a;
            if (!h.j(str5)) {
                arrayList.add(m19581o(str5, str, str2 == null ? "" : str2, 1, str3, FiltersContract.Filters.EntityType.UNKNOWN, null, (Integer) kVar.b));
                mo19589g(str5, str, str4, str3, z);
            }
        }
        if (!arrayList.isEmpty()) {
            m19584l(arrayList, true);
            FilterUploadWorker.m35426n(this.f42405a);
        }
        this.f42418n.mo19540b();
        return arrayList.size();
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: c */
    public void mo19593c() {
        this.f42405a.getContentResolver().delete(FiltersContract.Filters.m35810a(), "rule=1", null);
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: d */
    public boolean mo19592d() {
        if (this.f42406b.mo19543y()) {
            C14881e c14881e = new C14881e();
            c14881e.f42548a = this.f42406b.mo19547u() ? 1 : 0;
            c14881e.f42549b = this.f42406b.mo19550r() ? 1 : 0;
            c14881e.f42550c = this.f42406b.mo19566b() ? 1 : 0;
            c14881e.f42551d = this.f42406b.mo19544x() ? 1 : 0;
            c14881e.f42552e = this.f42406b.mo19562f() ? 1 : 0;
            c14881e.f42554g = this.f42406b.mo19549s() ? 1 : 0;
            Integer mo19559i = this.f42406b.mo19559i();
            if (mo19559i != null) {
                c14881e.f42553f = mo19559i.intValue();
            }
            try {
                if (!C17891a1.C17902k.m15642U().m19494d(c14881e).execute().b()) {
                    return false;
                }
                this.f42406b.mo19565c(false);
                return false;
            } catch (IOException e) {
                return true;
            }
        }
        return false;
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: e */
    public FilterMatch mo19591e(String str) {
        return mo19590f(str, null, null, null, false, false);
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: f */
    public FilterMatch mo19590f(final String str, String str2, String str3, String str4, boolean z, boolean z2) {
        FilterMatch filterMatch;
        FilterMatch m19572x;
        FilterMatch m19571y;
        FilterMatch m19578r = m19578r(str, str2, z2);
        if (m19578r != null) {
            return m19578r;
        }
        g<Boolean> m3978P1 = C25225a.m3978P1(new a() { // from class: e.a.h0.b
            public final Object invoke() {
                return Boolean.valueOf(C14836k.this.m19601F(str));
            }
        });
        String str5 = str == null ? "" : str;
        if (str2 == null) {
            str2 = "";
        }
        String m28377b = C8572b0.m28377b(str4);
        String m28373f = m28377b == null ? str5 : C8572b0.m28373f(str5, m28377b);
        String m28373f2 = m28377b == null ? str2 : C8572b0.m28373f(str2, m28377b);
        boolean z3 = !h.e(str5, m28373f) || !h.e(str2, m28373f2);
        List<C14872a> m19599H = m19599H();
        FilterMatch m19571y2 = m19571y(m28373f, m28373f2, m19599H);
        if (m19571y2 != null) {
            return m19571y2;
        }
        if (z3 && (m19571y = m19571y(str5, str2, m19599H)) != null) {
            return m19571y;
        }
        if (z2 && m19574v(m3978P1)) {
            return FilterMatch.f10448m;
        }
        String m19597J = m19597J(m28373f, m28373f2, str5, str2);
        if (z2 && m19577s(m19597J, m3978P1)) {
            return FilterMatch.f10449n;
        }
        if (z2 && m19575u(m28373f, m3978P1)) {
            return FilterMatch.f10450o;
        }
        if (z2 && m19576t(m28373f, m3978P1)) {
            return FilterMatch.f10451p;
        }
        if (m19597J != null && (m19572x = m19572x(m19597J, m19599H)) != null) {
            return m19572x;
        }
        String[] strArr = {m28373f, m28373f2, str5, str2};
        if (z2) {
            ArrayList arrayList = (ArrayList) m19573w(z, Integer.MAX_VALUE, m19599H, strArr);
            if (arrayList.size() > 1) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    filterMatch = (FilterMatch) it.next();
                    FilterMatch m19583m = m19583m(filterMatch, true);
                    if (m19583m != null && m19583m.f10453b == FilterAction.FILTER_BLACKLISTED) {
                        break;
                    }
                }
            }
            filterMatch = m19583m(arrayList.isEmpty() ? null : (FilterMatch) arrayList.get(0), true);
        } else {
            ArrayList arrayList2 = (ArrayList) m19573w(z, 1, m19599H, strArr);
            filterMatch = arrayList2.isEmpty() ? null : (FilterMatch) arrayList2.get(0);
        }
        if (filterMatch != null) {
            return filterMatch;
        }
        ArrayList arrayList3 = (ArrayList) m19606A(str5, str2, null, z, 1, m19599H);
        FilterMatch filterMatch2 = arrayList3.isEmpty() ? null : (FilterMatch) arrayList3.get(0);
        return filterMatch2 != null ? filterMatch2 : FilterMatch.f10445j;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x022e  */
    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo19589g(java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 721
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p837h0.C14836k.mo19589g(java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):void");
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: h */
    public int mo19588h(List<k<k<String, String>, Integer>> list, String str, String str2, boolean z, FiltersContract.Filters.WildCardType wildCardType, FiltersContract.Filters.EntityType entityType, Long l) {
        ArrayList arrayList = new ArrayList();
        String str3 = str;
        for (k<k<String, String>, Integer> kVar : list) {
            k kVar2 = (k) kVar.a;
            String str4 = (String) kVar2.a;
            Integer num = (Integer) kVar.b;
            if (!h.j(str4)) {
                if ("PHONE_NUMBER".equals(str3)) {
                    m19598I(str4);
                }
                if ("OTHER".equals(str3) || h.j(str3)) {
                    if (this.f42409e.mo28184g(str4)) {
                        m19598I(str4);
                        str3 = "PHONE_NUMBER";
                    } else {
                        str3 = "OTHER";
                    }
                }
                String str5 = (String) kVar2.b;
                if (wildCardType == FiltersContract.Filters.WildCardType.NONE) {
                    if (str5 == null) {
                        str5 = "";
                    }
                    arrayList.add(m19581o(str4, str3, str5, 0, str2, entityType, l, num));
                } else {
                    if (str5 == null) {
                        str5 = "";
                    }
                    String formatPattern = wildCardType.formatPattern(str4);
                    Pattern.compile(formatPattern);
                    ContentValues m19581o = m19581o(formatPattern, "REG_EXP", str5, 0, str2, FiltersContract.Filters.EntityType.UNKNOWN, null, null);
                    m19581o.put("wildcard_type", Integer.valueOf(wildCardType.type));
                    arrayList.add(m19581o);
                }
                mo19589g(str4, str3, "block", str2, z);
            }
        }
        if (!arrayList.isEmpty()) {
            m19584l(arrayList, true);
            FilterUploadWorker.m35426n(this.f42405a);
        }
        this.f42418n.mo19540b();
        return arrayList.size();
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: i */
    public int mo19587i(List<k<String, Integer>> list, String str, String str2, String str3, boolean z, FiltersContract.Filters.WildCardType wildCardType, FiltersContract.Filters.EntityType entityType, Long l) {
        ArrayList arrayList = new ArrayList();
        for (k<String, Integer> kVar : list) {
            arrayList.add(new k(new k((String) kVar.a, str2), (Integer) kVar.b));
        }
        return mo19588h(arrayList, str, str3, z, wildCardType, entityType, l);
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: j */
    public Collection<FilterMatch> mo19586j(final String str, String str2, boolean z) {
        FilterMatch m19572x;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        FilterMatch m19578r = m19578r(str, str2, z);
        if (m19578r != null) {
            linkedHashSet.add(m19578r);
        }
        List<C14872a> m19599H = m19599H();
        linkedHashSet.addAll(m19570z(str, str2, Integer.MAX_VALUE, m19599H));
        Iterator it = ((ArrayList) m19573w(false, Integer.MAX_VALUE, m19599H, str, str2)).iterator();
        while (it.hasNext()) {
            linkedHashSet.add(m19583m((FilterMatch) it.next(), z));
        }
        String m19597J = m19597J(str2, str);
        if (m19597J != null && (m19572x = m19572x(m19597J, m19599H)) != null) {
            linkedHashSet.add(m19572x);
        }
        linkedHashSet.addAll(m19606A(str, str2, null, false, Integer.MAX_VALUE, m19599H));
        g<Boolean> m3978P1 = C25225a.m3978P1(new a() { // from class: e.a.h0.c
            public final Object invoke() {
                return Boolean.valueOf(C14836k.this.m19601F(str));
            }
        });
        if (z && m19574v(m3978P1)) {
            linkedHashSet.add(FilterMatch.f10448m);
        }
        if (z && m19577s(m19597J, m3978P1)) {
            linkedHashSet.add(FilterMatch.f10449n);
        }
        if (z && m19575u(str, m3978P1)) {
            linkedHashSet.add(FilterMatch.f10450o);
        }
        if (z && m19576t(str, m3978P1)) {
            linkedHashSet.add(FilterMatch.f10451p);
        }
        return linkedHashSet;
    }

    @Override // p193e.p194a.p837h0.AbstractC14835j
    /* renamed from: k */
    public boolean mo19585k() throws IOException {
        int i;
        List<C14879c> list;
        int i2 = -1;
        try {
            Cursor query = this.f42405a.getContentResolver().query(FiltersContract.Filters.m35810a().buildUpon().appendPath("count").build(), C8472b.f26215a, null, null, null, null);
            i = -1;
            if (query != null) {
                i = -1;
                if (query.moveToNext()) {
                    i = query.getInt(0);
                }
                i2 = i;
                query.close();
            }
        } catch (SQLiteException | OperationCanceledException e) {
            i = i2;
        }
        if (i > 0) {
            AssertionUtil.report("Filters are already present");
            return true;
        }
        AbstractC14877a m15642U = C17891a1.C17902k.m15642U();
        a0 execute = m15642U.m19495c().execute();
        if (!execute.b()) {
            AssertionUtil.reportWeirdnessButNeverCrash("Could not restore filters");
            return false;
        }
        C14880d c14880d = (C14880d) execute.b;
        if (c14880d != null && (list = c14880d.f42547a) != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (C14879c c14879c : c14880d.f42547a) {
                try {
                    arrayList.add(m19582n(c14879c));
                } catch (IllegalArgumentException e2) {
                    AssertionUtil.reportThrowableButNeverCrash(e2);
                    String str = "Bad values from backend, skip storing this filter:" + c14879c;
                }
            }
            m19584l(arrayList, false);
        }
        C14881e c14881e = (C14881e) m15642U.m19498S().execute().b;
        if (c14881e != null) {
            this.f42406b.mo19557k(c14881e.f42548a > 0);
            this.f42406b.mo19558j(c14881e.f42549b > 0);
            AbstractC14840m abstractC14840m = this.f42406b;
            boolean z = false;
            if (this.f42410f.m10962i().isEnabled()) {
                z = false;
                if (this.f42414j.mo16408H()) {
                    z = false;
                    if (c14881e.f42554g > 0) {
                        z = true;
                    }
                }
            }
            abstractC14840m.mo19567a(z);
        }
        this.f42406b.mo19546v(System.currentTimeMillis());
        return true;
    }

    /* renamed from: l */
    public final void m19584l(Collection<ContentValues> collection, boolean z) {
        if (z) {
            for (ContentValues contentValues : collection) {
                contentValues.put("sync_state", (Integer) 1);
            }
        }
        for (ContentValues contentValues2 : collection) {
            contentValues2.put("history_event_id", m19604C(this.f42415k, contentValues2));
        }
        int bulkInsert = AbstractApplicationC8442a.m28551L().getContentResolver().bulkInsert(FiltersContract.Filters.m35810a(), (ContentValues[]) collection.toArray(new ContentValues[collection.size()]));
        boolean z2 = bulkInsert == collection.size();
        StringBuilder m8728C = C22128a.m8728C("Unexpected # of filters added, got ");
        m8728C.append(collection.size());
        m8728C.append(", added ");
        m8728C.append(bulkInsert);
        AssertionUtil.OnlyInDebug.isTrue(z2, m8728C.toString());
    }

    /* renamed from: m */
    public final FilterMatch m19583m(FilterMatch filterMatch, boolean z) {
        return (filterMatch == null || !z || filterMatch.f10453b != FilterAction.FILTER_BLACKLISTED || filterMatch.f10454c != ActionSource.TOP_SPAMMER || this.f42406b.mo19547u()) ? filterMatch : new FilterMatch(filterMatch.f10452a, FilterAction.FILTER_DISABLED, filterMatch.f10454c, filterMatch.f10455d, filterMatch.f10456e, filterMatch.f10457f, filterMatch.f10458g, filterMatch.f10459h, filterMatch.f10460i);
    }

    /* renamed from: n */
    public final ContentValues m19582n(C14879c c14879c) throws IllegalArgumentException {
        int i;
        String str;
        if (!h.j(c14879c.f42538b)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("server_id", c14879c.f42537a);
            boolean z = true;
            contentValues.put("value", (!"IM_ID".equals(c14879c.f42541e) || (str = c14879c.f42538b) == null || !str.startsWith("*")) ? c14879c.f42538b : c14879c.f42538b.substring(1));
            contentValues.put("label", c14879c.f42539c);
            if ("BLACKLIST".equals(c14879c.f42540d)) {
                i = 0;
            } else if (!"WHITELIST".equals(c14879c.f42540d)) {
                StringBuilder m8728C = C22128a.m8728C("Unknown backend filter rule ");
                m8728C.append(c14879c.f42540d);
                throw new IllegalArgumentException(m8728C.toString());
            } else {
                i = 1;
            }
            contentValues.put("rule", Integer.valueOf(i));
            contentValues.put("wildcard_type", Integer.valueOf(FiltersContract.Filters.WildCardType.valueOfPattern(c14879c.f42538b).getType()));
            contentValues.put("sync_state", (Integer) 0);
            contentValues.put("tracking_source", c14879c.f42542f);
            contentValues.put("tracking_type", c14879c.f42541e);
            AssertionUtil.isTrue(!h.j(contentValues.getAsString("server_id")), new String[0]);
            AssertionUtil.isTrue(!h.j(contentValues.getAsString("value")), new String[0]);
            if (contentValues.getAsLong("wildcard_type").longValue() < 0) {
                z = false;
            }
            AssertionUtil.isTrue(z, new String[0]);
            return contentValues;
        }
        throw new IllegalArgumentException("Filter value is empty");
    }

    /* renamed from: o */
    public final ContentValues m19581o(String str, String str2, String str3, int i, String str4, FiltersContract.Filters.EntityType entityType, Long l, Integer num) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str);
        contentValues.put("label", str3);
        contentValues.put("rule", Integer.valueOf(i));
        contentValues.put("wildcard_type", Integer.valueOf(FiltersContract.Filters.WildCardType.NONE.type));
        contentValues.put("sync_state", (Integer) 1);
        contentValues.put("tracking_type", str2);
        contentValues.put("tracking_source", str4);
        contentValues.put("entity_type", Integer.valueOf(entityType.value));
        contentValues.put("category_id", l);
        contentValues.put("spam_version", num);
        return contentValues;
    }

    /* renamed from: p */
    public final List<FilterMatch> m19580p(List<FilterMatch> list, C14837a c14837a, int i) {
        Cursor query = this.f42405a.getContentResolver().query(C17891a1.C17902k.m15660M(), null, c14837a.f42419a, c14837a.f42420b, null);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("label");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("count");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("spam_categories");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("spam_version");
            while (query.moveToNext() && list.size() < i) {
                list.add(new FilterMatch(query.getLong(columnIndexOrThrow), FilterAction.FILTER_BLACKLISTED, ActionSource.TOP_SPAMMER, query.getString(columnIndexOrThrow2), 0, query.getInt(columnIndexOrThrow3), FiltersContract.Filters.WildCardType.NONE, SpamData.Companion.m35459a(query.getString(columnIndexOrThrow4)), query.isNull(columnIndexOrThrow5) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow5))));
            }
            query.close();
            return list;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: q */
    public final void m19579q(List<Long> list) {
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        sb.append("_id IN (?");
        arrayList.add(String.valueOf(list.get(0)));
        for (int i = 1; i < list.size(); i++) {
            sb.append(",?");
            arrayList.add(String.valueOf(list.get(i)));
        }
        sb.append(")");
        AbstractApplicationC8442a.m28551L().getContentResolver().delete(FiltersContract.Filters.m35810a(), sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: r */
    public final FilterMatch m19578r(String str, String str2, boolean z) {
        if (!z || !C8574c0.m28353f(str) || !C8574c0.m28353f(str2)) {
            return (!h.j(str) || !h.j(str2)) ? null : FilterMatch.f10445j;
        }
        return this.f42406b.mo19550r() ? FilterMatch.f10446k : FilterMatch.f10447l;
    }

    /* renamed from: s */
    public final boolean m19577s(String str, g<Boolean> gVar) {
        if (!this.f42406b.mo19544x() || ((Boolean) ((n) gVar).getValue()).booleanValue()) {
            return false;
        }
        return m19596K(str);
    }

    /* renamed from: t */
    public final boolean m19576t(String str, g<Boolean> gVar) {
        boolean z = true;
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.startsWith("+")) {
                str2 = str.substring(1);
            }
        }
        if (str2 == null || !this.f42410f.m10962i().isEnabled() || !this.f42406b.mo19549s() || !f42404o.matcher(str2).matches() || ((Boolean) ((n) gVar).getValue()).booleanValue()) {
            z = false;
        }
        return z;
    }

    /* renamed from: u */
    public final boolean m19575u(String str, g<Boolean> gVar) {
        String mo28570n = this.f42411g.mo28570n();
        boolean mo19562f = this.f42406b.mo19562f();
        Integer mo19559i = this.f42406b.mo19559i();
        if (mo28570n == null || str == null || mo19559i == null || !mo19562f || ((Boolean) ((n) gVar).getValue()).booleanValue()) {
            return false;
        }
        String substring = mo28570n.substring(0, mo19559i.intValue());
        if (substring.length() >= 3) {
            return str.startsWith(substring);
        }
        AssertionUtil.reportWeirdnessButNeverCrash("Invalid neighbour spoofing filter (too short)");
        return false;
    }

    /* renamed from: v */
    public final boolean m19574v(g<Boolean> gVar) {
        if (this.f42406b.mo19566b()) {
            return !((Boolean) ((n) gVar).getValue()).booleanValue();
        }
        return false;
    }

    /* renamed from: w */
    public final List<FilterMatch> m19573w(boolean z, int i, List<C14872a> list, String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (C14872a c14872a : list) {
            boolean z2 = c14872a.f42500b == 0;
            FiltersContract.Filters.WildCardType wildCardType = c14872a.f42505g;
            FiltersContract.Filters.WildCardType wildCardType2 = FiltersContract.Filters.WildCardType.NONE;
            boolean z3 = wildCardType == wildCardType2;
            boolean z4 = true;
            if (!z) {
                z4 = c14872a.f42501c != 2;
            }
            if (z2 && z3 && z4 && m19602E(c14872a.f42503e, strArr)) {
                arrayList.add(new FilterMatch(c14872a.f42499a, FilterAction.FILTER_BLACKLISTED, ActionSource.BLACKLISTED_NUMBER, c14872a.f42502d, c14872a.f42501c, 0, wildCardType2, C19291g.m13610L1(c14872a.f42506h), null));
                if (arrayList.size() == i) {
                    return arrayList;
                }
            }
        }
        C14837a m19569a = C14837a.m19569a(strArr);
        if (m19569a == null) {
            return arrayList;
        }
        m19580p(arrayList, m19569a, i);
        return arrayList;
    }

    /* renamed from: x */
    public final FilterMatch m19572x(String str, List<C14872a> list) {
        for (C14872a c14872a : list) {
            boolean z = c14872a.f42500b == 0;
            boolean equals = "COUNTRY_CODE".equals(c14872a.f42504f);
            if (z && equals && m19602E(c14872a.f42503e, str)) {
                return new FilterMatch(c14872a.f42499a, FilterAction.FILTER_BLACKLISTED, ActionSource.BLACKLISTED_COUNTRY, c14872a.f42503e, c14872a.f42501c, 0, FiltersContract.Filters.WildCardType.NONE, C19291g.m13610L1(c14872a.f42506h), null);
            }
        }
        return null;
    }

    /* renamed from: y */
    public final FilterMatch m19571y(String str, String str2, List<C14872a> list) {
        ArrayList arrayList = (ArrayList) m19570z(str, str2, 1, list);
        return arrayList.isEmpty() ? null : (FilterMatch) arrayList.get(0);
    }

    /* renamed from: z */
    public final List<FilterMatch> m19570z(String str, String str2, int i, List<C14872a> list) {
        ArrayList arrayList = new ArrayList();
        for (C14872a c14872a : list) {
            boolean z = c14872a.f42500b == 1;
            FiltersContract.Filters.WildCardType wildCardType = c14872a.f42505g;
            FiltersContract.Filters.WildCardType wildCardType2 = FiltersContract.Filters.WildCardType.NONE;
            boolean z2 = wildCardType == wildCardType2;
            if (z && z2 && m19602E(c14872a.f42503e, str, str2)) {
                arrayList.add(new FilterMatch(c14872a.f42499a, FilterAction.ALLOW_WHITELISTED, ActionSource.CUSTOM_WHITELIST, c14872a.f42502d, c14872a.f42501c, 0, wildCardType2, C19291g.m13610L1(c14872a.f42506h), null));
                if (arrayList.size() == i) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }
}
