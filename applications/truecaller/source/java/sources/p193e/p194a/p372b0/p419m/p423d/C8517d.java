package p193e.p194a.p372b0.p419m.p423d;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.payments.senderinfo.SenderInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.u1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.g;
import s1.k;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.m.d.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/m/d/d.class */
public final class C8517d implements AbstractC8514a {

    /* renamed from: a */
    public final g f26306a = C25225a.m3978P1(new C8518a());

    /* renamed from: b */
    public final y f26307b;

    /* renamed from: c */
    public final i0 f26308c;

    /* renamed from: d */
    public n0<? extends HashMap<String, List<SenderInfo>>> f26309d;

    /* renamed from: e */
    public final f f26310e;

    /* renamed from: f */
    public final AbstractC8519e f26311f;

    /* renamed from: e.a.b0.m.d.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/m/d/d$a.class */
    public static final class C8518a extends m implements a<HashMap<String, List<? extends SenderInfo>>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8518a() {
            super(0);
            C8517d.this = r4;
        }

        public Object invoke() {
            C8517d c8517d = C8517d.this;
            Objects.requireNonNull(c8517d);
            return (HashMap) d.c3((f) null, new C8515b(c8517d, null), 1, (Object) null);
        }
    }

    @Inject
    public C8517d(Context context, @Named("IO") f fVar, AbstractC8519e abstractC8519e) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "coroutineContext");
        l.e(abstractC8519e, "senderInfoReader");
        this.f26310e = fVar;
        this.f26311f = abstractC8519e;
        u1 n = d.n((p1) null, 1);
        this.f26307b = n;
        i0 h = d.h(f.a.a.d(n, fVar));
        this.f26308c = h;
        this.f26309d = d.H(h, (f) null, (j0) null, new C8516c(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p372b0.p419m.p423d.AbstractC8514a
    /* renamed from: a */
    public String mo28421a(SenderInfo senderInfo) {
        String str;
        String category = senderInfo != null ? senderInfo.getCategory() : null;
        if (category != null && category.hashCode() == -318370833 && category.equals("prepaid")) {
            str = "postpaid";
        } else {
            str = null;
            if (senderInfo != null) {
                str = senderInfo.getCategory();
            }
        }
        return str;
    }

    @Override // p193e.p194a.p372b0.p419m.p423d.AbstractC8514a
    /* renamed from: b */
    public SenderInfo mo28420b(String str) {
        l.e(str, "senderId");
        List<SenderInfo> list = m28416f().get(str);
        return list != null ? (SenderInfo) i.Q(list) : null;
    }

    @Override // p193e.p194a.p372b0.p419m.p423d.AbstractC8514a
    /* renamed from: c */
    public String mo28419c(String str, String str2) {
        l.e(str, "senderId");
        l.e(str2, "type");
        boolean a = l.a(str2, "CreditCard");
        String str3 = null;
        if (a) {
            k<String, SenderInfo> mo28418d = mo28418d(str);
            str3 = null;
            if (mo28418d != null) {
                SenderInfo senderInfo = (SenderInfo) mo28418d.b;
                str3 = null;
                if (senderInfo != null) {
                    str3 = senderInfo.getCreditCardPaymentUrl();
                }
            }
        }
        return str3;
    }

    @Override // p193e.p194a.p372b0.p419m.p423d.AbstractC8514a
    /* renamed from: d */
    public k<String, SenderInfo> mo28418d(String str) {
        k<String, SenderInfo> kVar;
        l.e(str, AnalyticsConstants.KEY);
        List<SenderInfo> list = m28416f().get(str);
        if (list != null) {
            kVar = new k<>(str, i.Q(list));
        } else {
            HashMap<String, List<SenderInfo>> m28416f = m28416f();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, List<SenderInfo>> entry : m28416f.entrySet()) {
                if (l.a(((SenderInfo) i.Q(entry.getValue())).getSymbol(), str)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            List S0 = i.S0(linkedHashMap.keySet());
            SenderInfo senderInfo = null;
            if (!S0.isEmpty()) {
                Object obj = S0.get(0);
                List list2 = (List) linkedHashMap.get(S0.get(0));
                if (list2 != null) {
                    senderInfo = (SenderInfo) i.Q(list2);
                }
                kVar = new k<>(obj, senderInfo);
            } else {
                kVar = null;
            }
        }
        return kVar;
    }

    @Override // p193e.p194a.p372b0.p419m.p423d.AbstractC8514a
    /* renamed from: e */
    public SenderInfo mo28417e(String str) {
        Object obj;
        l.e(str, "symbol");
        HashMap<String, List<SenderInfo>> m28416f = m28416f();
        ArrayList arrayList = new ArrayList(m28416f.size());
        for (Map.Entry<String, List<SenderInfo>> entry : m28416f.entrySet()) {
            arrayList.add(entry.getValue());
        }
        Iterator it = C25225a.m3825w0(arrayList).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            if (r.n(((SenderInfo) next).getSymbol(), str, true)) {
                obj = next;
                break;
            }
        }
        return (SenderInfo) obj;
    }

    /* renamed from: f */
    public final HashMap<String, List<SenderInfo>> m28416f() {
        return (HashMap) this.f26306a.getValue();
    }
}
