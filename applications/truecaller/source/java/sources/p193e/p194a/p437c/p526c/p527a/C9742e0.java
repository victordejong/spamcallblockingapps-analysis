package p193e.p194a.p437c.p526c.p527a;

import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.source.SmartSMSFeatureStatus;
import com.truecaller.insights.source.SourceType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p580r.p588i.C10566a;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.c.a.e0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/a/e0.class */
public final class C9742e0 extends AbstractC25649a {
    public C9742e0() {
        super(38, 39);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        Object obj;
        l.e(abstractC26147b, "database");
        Cursor mo2667U1 = abstractC26147b.mo2667U1("SELECT * FROM sender_info");
        try {
            ArrayList arrayList = new ArrayList();
            if (mo2667U1 != null) {
                while (mo2667U1.moveToNext()) {
                    long j = mo2667U1.getLong(mo2667U1.getColumnIndex("id"));
                    String string = mo2667U1.getString(mo2667U1.getColumnIndex(AnalyticsConstants.SENDER));
                    l.d(string, "getString(getColumnIndex…able.COLUMN_NAME_SENDER))");
                    String string2 = mo2667U1.getString(mo2667U1.getColumnIndex("sender_name"));
                    String string3 = mo2667U1.getString(mo2667U1.getColumnIndex("sender_type"));
                    String string4 = mo2667U1.getString(mo2667U1.getColumnIndex("smart_features_status"));
                    SmartSMSFeatureStatus valueOf = string4 != null ? SmartSMSFeatureStatus.valueOf(string4) : null;
                    String string5 = mo2667U1.getString(mo2667U1.getColumnIndex("grammars_enabled"));
                    l.d(string5, "getString(getColumnIndex…N_NAME_GRAMMARS_ENABLED))");
                    List U = v.U(string5, new String[]{","}, false, 0, 6);
                    String string6 = mo2667U1.getString(mo2667U1.getColumnIndex("source_type"));
                    l.d(string6, "it");
                    arrayList.add(new C10566a(j, string, string2, string3, valueOf, U, SourceType.valueOf(string6), null));
                }
            }
            C25225a.m4016G(mo2667U1, null);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (true) {
                boolean z = true;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((C10566a) next).f31499g != SourceType.USER) {
                    z = false;
                }
                if (z) {
                    arrayList2.add(next);
                } else {
                    arrayList3.add(next);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj2 : arrayList2) {
                String str = ((C10566a) obj2).f31494b;
                Locale locale = Locale.ROOT;
                l.d(locale, "Locale.ROOT");
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                String upperCase = str.toUpperCase(locale);
                l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
                Object obj3 = linkedHashMap.get(upperCase);
                ArrayList arrayList4 = obj3;
                if (obj3 == null) {
                    arrayList4 = C22128a.m8673R(linkedHashMap, upperCase);
                }
                ((List) arrayList4).add(obj2);
            }
            ArrayList arrayList5 = new ArrayList(linkedHashMap.size());
            Iterator it2 = linkedHashMap.entrySet().iterator();
            while (true) {
                Object obj4 = null;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it2.next();
                Iterator it3 = ((Iterable) entry.getValue()).iterator();
                if (it3.hasNext()) {
                    obj4 = it3.next();
                    if (it3.hasNext()) {
                        char c = ((C10566a) obj4).f31493a;
                        Object obj5 = obj4;
                        do {
                            Object next2 = it3.next();
                            ?? r0 = ((C10566a) next2).f31493a;
                            obj4 = obj5;
                            char c2 = c;
                            if (c < r0) {
                                obj4 = next2;
                                c2 = r0;
                            }
                            obj5 = obj4;
                            c = c2;
                        } while (it3.hasNext());
                    }
                }
                C10566a c10566a = (C10566a) obj4;
                arrayList5.add(c10566a != null ? C10566a.m25782a(c10566a, 0L, (String) entry.getKey(), null, null, null, null, null, null, 253) : null);
            }
            List z2 = i.z(arrayList5);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj6 : arrayList3) {
                String str2 = ((C10566a) obj6).f31494b;
                Locale locale2 = Locale.ROOT;
                l.d(locale2, "Locale.ROOT");
                Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
                String upperCase2 = str2.toUpperCase(locale2);
                l.d(upperCase2, "(this as java.lang.String).toUpperCase(locale)");
                Object obj7 = linkedHashMap2.get(upperCase2);
                ArrayList arrayList6 = obj7;
                if (obj7 == null) {
                    arrayList6 = C22128a.m8673R(linkedHashMap2, upperCase2);
                }
                ((List) arrayList6).add(obj6);
            }
            ArrayList arrayList7 = new ArrayList(linkedHashMap2.size());
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                Iterator it4 = ((Iterable) entry2.getValue()).iterator();
                if (!it4.hasNext()) {
                    obj = null;
                } else {
                    obj = it4.next();
                    if (it4.hasNext()) {
                        char c3 = ((C10566a) obj).f31493a;
                        Object obj8 = obj;
                        do {
                            Object next3 = it4.next();
                            ?? r02 = ((C10566a) next3).f31493a;
                            obj = obj8;
                            char c4 = c3;
                            if (c3 < r02) {
                                obj = next3;
                                c4 = r02;
                            }
                            obj8 = obj;
                            c3 = c4;
                        } while (it4.hasNext());
                    }
                }
                C10566a c10566a2 = (C10566a) obj;
                arrayList7.add(c10566a2 != null ? C10566a.m25782a(c10566a2, 0L, (String) entry2.getKey(), null, null, null, null, null, null, 253) : null);
            }
            List<C10566a> l0 = i.l0(z2, i.z(arrayList7));
            abstractC26147b.mo2668S0("DELETE FROM sender_info");
            for (C10566a c10566a3 : l0) {
                long j2 = c10566a3.f31493a;
                String str3 = c10566a3.f31494b;
                String str4 = c10566a3.f31495c;
                String str5 = c10566a3.f31496d;
                SmartSMSFeatureStatus smartSMSFeatureStatus = c10566a3.f31497e;
                abstractC26147b.mo2662c1("INSERT INTO sender_info (\n                    id,\n                    sender,\n                    sender_name,\n                    sender_type,\n                    smart_features_status,\n                    grammars_enabled,\n                    source_type\n                    )\n                    VALUES (\n                    ?,\n                    ?,\n                    ?,\n                    ?,\n                    ?,\n                    ?,\n                    ?\n                    )", new Object[]{Long.valueOf(j2), str3, str4, str5, smartSMSFeatureStatus != null ? smartSMSFeatureStatus.name() : null, i.O(c10566a3.f31498f, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), c10566a3.f31499g.name()});
            }
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }
}
