package p193e.p194a.p935j0;

import com.truecaller.data.entity.Contact;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.j0.c */
/* loaded from: classes13-dex2jar.jar:e/a/j0/c.class */
public final class C15516c implements AbstractC15515b {

    /* renamed from: a */
    public final AbstractC15517d f43959a;

    /* renamed from: b */
    public final long f43960b;

    /* renamed from: c */
    public final long f43961c;

    public C15516c(AbstractC15517d abstractC15517d, long j, long j2) {
        l.e(abstractC15517d, "callingStatsRepository");
        this.f43959a = abstractC15517d;
        this.f43960b = j;
        this.f43961c = j2;
    }

    @Override // p193e.p194a.p935j0.AbstractC15515b
    /* renamed from: a */
    public Integer mo18725a() {
        return this.f43959a.mo18720a(this.f43960b, this.f43961c);
    }

    @Override // p193e.p194a.p935j0.AbstractC15515b
    /* renamed from: b */
    public Integer mo18724b() {
        Object obj;
        List<Long> mo18719b = this.f43959a.mo18719b(this.f43960b, this.f43961c);
        Integer num = null;
        if (mo18719b != null) {
            if (mo18719b.isEmpty()) {
                num = null;
            } else {
                Map e0 = i.e0(new k[]{new k(2131890432, 0), new k(2131890430, 0), new k(2131890431, 0), new k(2131890433, 0)});
                Calendar calendar = Calendar.getInstance(Locale.getDefault());
                for (Number number : mo18719b) {
                    long longValue = number.longValue();
                    l.d(calendar, "calendar");
                    calendar.setTimeInMillis(longValue);
                    int i = calendar.get(11);
                    if (3 <= i && 10 >= i) {
                        e0.put(2131890432, Integer.valueOf(m18721e((Integer) ((LinkedHashMap) e0).get(2131890432))));
                    } else if (11 <= i && 14 >= i) {
                        e0.put(2131890430, Integer.valueOf(m18721e((Integer) ((LinkedHashMap) e0).get(2131890430))));
                    } else if (15 <= i && 22 >= i) {
                        e0.put(2131890431, Integer.valueOf(m18721e((Integer) ((LinkedHashMap) e0).get(2131890431))));
                    } else {
                        e0.put(2131890433, Integer.valueOf(m18721e((Integer) ((LinkedHashMap) e0).get(2131890433))));
                    }
                }
                Iterator it = ((LinkedHashMap) e0).entrySet().iterator();
                if (!it.hasNext()) {
                    obj = null;
                } else {
                    obj = it.next();
                    if (it.hasNext()) {
                        int intValue = ((Number) ((Map.Entry) obj).getValue()).intValue();
                        Object obj2 = obj;
                        do {
                            Object next = it.next();
                            int intValue2 = ((Number) ((Map.Entry) next).getValue()).intValue();
                            obj = obj2;
                            int i2 = intValue;
                            if (intValue < intValue2) {
                                obj = next;
                                i2 = intValue2;
                            }
                            obj2 = obj;
                            intValue = i2;
                        } while (it.hasNext());
                    }
                }
                Map.Entry entry = (Map.Entry) obj;
                num = null;
                if (entry != null) {
                    num = (Integer) entry.getKey();
                }
            }
        }
        return num;
    }

    @Override // p193e.p194a.p935j0.AbstractC15515b
    /* renamed from: c */
    public Contact mo18723c() {
        return this.f43959a.mo18718c(this.f43960b, this.f43961c);
    }

    @Override // p193e.p194a.p935j0.AbstractC15515b
    /* renamed from: d */
    public Integer mo18722d() {
        return this.f43959a.mo18717d(this.f43960b, this.f43961c);
    }

    /* renamed from: e */
    public final int m18721e(Integer num) {
        return num != null ? num.intValue() + 1 : 0;
    }
}
