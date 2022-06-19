package p193e.p194a.p437c.p552i.p562j.p563c;

import com.truecaller.insights.core.senderinfo.rowsenders.RowImportantSenderConfig;
import com.truecaller.insights.core.senderinfo.rowsenders.RowSendersList;
import e.m.e.f0.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.core.senderinfo.rowsenders.RowImportantSendersManagerImpl$prepareSendersList$1", f = "RowImportantSendersManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.i.j.c.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/j/c/c.class */
public final class C10372c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C10370b f30847e;

    /* renamed from: f */
    public final /* synthetic */ String f30848f;

    /* renamed from: e.a.c.i.j.c.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/j/c/c$a.class */
    public static final class C10373a extends a<RowImportantSenderConfig> {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10372c(C10370b c10370b, String str, d dVar) {
        super(2, dVar);
        this.f30847e = c10370b;
        this.f30848f = str;
    }

    /* renamed from: i */
    public final d<s> m26272i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10372c(this.f30847e, this.f30848f, dVar);
    }

    /* renamed from: k */
    public final Object m26271k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C10372c(this.f30847e, this.f30848f, dVar).m26270s(s.a);
    }

    /* renamed from: s */
    public final Object m26270s(Object obj) {
        s sVar = s.a;
        C25225a.m3932a3(obj);
        RowImportantSenderConfig rowImportantSenderConfig = (RowImportantSenderConfig) this.f30847e.f30841a.g(this.f30848f, new C10373a().getType());
        if ((rowImportantSenderConfig != null ? rowImportantSenderConfig.getImportantSenders() : null) == null) {
            return sVar;
        }
        Iterator<T> it = rowImportantSenderConfig.getImportantSenders().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            RowSendersList rowSendersList = (RowSendersList) it.next();
            if (r.n(rowSendersList.getCountryCode(), this.f30847e.f30842b, true)) {
                Set<String> set = this.f30847e.f30844d;
                List<String> senders = rowSendersList.getSenders();
                ArrayList arrayList = new ArrayList(C25225a.m4004J(senders, 10));
                for (String str : senders) {
                    Locale locale = Locale.ENGLISH;
                    l.d(locale, "Locale.ENGLISH");
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = str.toLowerCase(locale);
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    arrayList.add(lowerCase);
                }
                set.addAll(arrayList);
            }
        }
        return sVar;
    }
}
