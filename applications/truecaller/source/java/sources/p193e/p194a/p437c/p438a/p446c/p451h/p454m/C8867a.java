package p193e.p194a.p437c.p438a.p446c.p451h.p454m;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.utils.DateFormat;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p438a.p493l.C9245c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.AbstractC10513j;
import p193e.p194a.p437c.p579q.C10496c;
import p193e.p194a.p437c.p579q.C10516k;
import p193e.p194a.p437c.p580r.AbstractC10518b;
import p193e.p194a.p437c.p580r.C10527c;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.f0.r;
import s1.k;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.n;
/* renamed from: e.a.c.a.c.h.m.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/m/a.class */
public final class C8867a {
    /* renamed from: a */
    public static final String m27998a(b bVar) {
        String str;
        l.e(bVar, "msgDateTime");
        b bVar2 = new b();
        int u = bVar.u();
        l.d(bVar2, "currentDate");
        if (u == bVar2.u()) {
            str = DateFormat.MMMM.formatter().f(bVar);
            l.d(str, "DateFormat.MMMM.formatter().print(msgDateTime)");
        } else {
            str = DateFormat.MMMM_yyyy.formatter().f(bVar);
            l.d(str, "DateFormat.MMMM_yyyy.for…tter().print(msgDateTime)");
        }
        return str;
    }

    /* renamed from: b */
    public static final k<String, Integer> m27997b(AbstractC10513j.C10514a c10514a) {
        k<String, Integer> kVar;
        AbstractC10518b.C10520b c10520b = c10514a.f31267h;
        if (!l.a(c10520b.f31321o, "PrepaidExpiry") || !c10514a.m25830a()) {
            kVar = l.a(c10520b.f31321o, "PrepaidExpiry") ? new k<>("Recharged", Integer.valueOf(C4078R.attr.tcx_alertBackgroundGreen)) : c10514a.m25830a() ? new k<>("", (Object) null) : new k<>("Paid", Integer.valueOf(C4078R.attr.tcx_alertBackgroundGreen));
        } else {
            kVar = new k<>(r.p(c10520b.f31308b) ^ true ? c10520b.f31308b : "Expiring", Integer.valueOf(C4078R.attr.tcx_alertBackgroundOrange));
        }
        return kVar;
    }

    /* renamed from: c */
    public static final k<String, Integer> m27996c(AbstractC10513j.C10515b c10515b) {
        String str = c10515b.f31277h.f31370q.size() == 1 ? c10515b.f31277h.f31373t : null;
        if (str == null) {
            str = "";
        }
        return new k<>(str, c10515b.f31277h.f31376w);
    }

    /* renamed from: d */
    public static final AbstractC9235b.C9237b m27995d(C10496c c10496c) {
        l.e(c10496c, "$this$toFinanceTransactions");
        AbstractC10518b.C10519a c10519a = c10496c.f31205e;
        String str = c10519a.f31295d;
        String str2 = c10519a.f31297f.length() > 0 ? c10496c.f31205e.f31297f : c10496c.f31205e.f31296e;
        if (!(str.length() == 0)) {
            str2 = C22128a.m8725C2(str, " · ", str2);
        }
        long j = c10496c.f31201a;
        long j2 = c10496c.f31202b;
        AbstractC10518b.C10519a c10519a2 = c10496c.f31205e;
        String str3 = c10519a2.f31293b;
        int i = c10519a2.f31294c;
        String str4 = c10496c.f31205e.f31299h + c10496c.f31205e.f31300i;
        AbstractC10518b.C10519a c10519a3 = c10496c.f31205e;
        return new AbstractC9235b.C9237b(j, str3, str2, i, c10496c.f31203c, c10519a3.f31301j, str4, c10519a3.f31298g, j2, c10496c.f31206f, c10496c.f31207g, c10496c.f31208h);
    }

    /* renamed from: e */
    public static final AbstractC9235b.C9242g m27994e(AbstractC10513j abstractC10513j) {
        AbstractC9235b.C9242g c9242g;
        l.e(abstractC10513j, "$this$toUpcomingReminder");
        if (abstractC10513j instanceof AbstractC10513j.C10514a) {
            AbstractC10513j.C10514a c10514a = (AbstractC10513j.C10514a) abstractC10513j;
            long j = c10514a.f31260a;
            long j2 = c10514a.f31261b;
            C10527c c10527c = (C10527c) i.B(c10514a.f31267h.f31320n);
            C10527c c10527c2 = (C10527c) C10480a.m25864z2(c10514a.f31267h.f31320n);
            AbstractC10518b.C10520b c10520b = c10514a.f31267h;
            String str = c10520b.f31317k;
            String str2 = l.a(c10520b.f31321o, "PrepaidExpiry") ^ true ? c10514a.f31267h.f31308b : "";
            int i = c10514a.f31267h.f31309c;
            C9245c m25912p3 = C10480a.m25912p3(c10514a.f31265f);
            C9245c m25912p32 = C10480a.m25912p3(c10514a.f31264e);
            List<AbstractC10567a> list = c10514a.f31266g;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (AbstractC10567a abstractC10567a : list) {
                arrayList.add(C10480a.m25912p3(abstractC10567a));
            }
            String str3 = c10514a.f31262c;
            String str4 = (String) m27997b(c10514a).a;
            Integer num = (Integer) m27997b(c10514a).b;
            AbstractC10518b.C10520b c10520b2 = c10514a.f31267h;
            String str5 = c10520b2.f31313g;
            String m15564w = C17891a1.C17902k.m15564w(c10520b2, ((C10527c) i.B(c10520b2.f31320n)).f31410a);
            int i2 = c10514a.f31268i;
            boolean z = c10514a.f31269j;
            boolean m25830a = c10514a.m25830a();
            AbstractC10616p.C10618b c10618b = AbstractC10616p.C10618b.f31656b;
            n S1 = c10514a.f31267h.f31322p.S1();
            l.d(S1, "data.billUiSchema.billDateTime.toInstant()");
            c9242g = new AbstractC9235b.C9242g(j, c10527c, c10527c2, null, str, str3, str2, str4, m25912p32, m25912p3, arrayList, i, j2, str5, num, m15564w, i2, z, c10618b, S1.a, !m25830a, false, 2097160);
        } else if (!(abstractC10513j instanceof AbstractC10513j.C10515b)) {
            throw new s1.i();
        } else {
            AbstractC10513j.C10515b c10515b = (AbstractC10513j.C10515b) abstractC10513j;
            k<String, Integer> m27996c = m27996c(c10515b);
            long j3 = c10515b.f31270a;
            long j4 = c10515b.f31271b;
            AbstractC10518b.C10524f c10524f = c10515b.f31277h;
            String str6 = c10524f.f31354a;
            String str7 = c10524f.f31359f;
            String str8 = c10524f.f31358e;
            C9245c m25912p33 = C10480a.m25912p3(c10515b.f31274e);
            C9245c m25912p34 = C10480a.m25912p3(c10515b.f31275f);
            String str9 = c10515b.f31272c;
            String str10 = (String) m27996c.a;
            Integer num2 = (Integer) m27996c.b;
            String m15696A = C17891a1.C17902k.m15696A(c10515b.f31277h.f31378y, null, 1);
            List<AbstractC10567a> list2 = c10515b.f31276g;
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list2, 10));
            for (AbstractC10567a abstractC10567a2 : list2) {
                arrayList2.add(C10480a.m25912p3(abstractC10567a2));
            }
            C10527c c10527c3 = (C10527c) i.B(c10515b.f31277h.f31370q);
            C10527c c10527c4 = (C10527c) C10480a.m25864z2(c10515b.f31277h.f31370q);
            int i3 = C4078R.attr.tcx_textPrimary;
            int i4 = c10515b.f31278i;
            boolean z2 = c10515b.f31279j;
            AbstractC10616p.C10624h c10624h = new AbstractC10616p.C10624h(C17891a1.C17902k.m15696A(c10515b.f31277h.f31378y, null, 1));
            n S12 = c10515b.f31277h.f31377x.S1();
            l.d(S12, "data.uiSchema.travelDateTime.toInstant()");
            c9242g = new AbstractC9235b.C9242g(j3, c10527c3, c10527c4, str6, str7, str9, str8, str10, m25912p33, m25912p34, arrayList2, i3, j4, null, num2, m15696A, i4, z2, c10624h, S12.a, false, false, 3153920);
        }
        return c9242g;
    }

    /* renamed from: f */
    public static final AbstractC9235b.C9243h m27993f(C10516k c10516k, boolean z) {
        l.e(c10516k, "$this$toUpdateItem");
        String str = (z || l.a(c10516k.f31288i, "Today")) ? c10516k.f31289j : c10516k.f31288i;
        return new AbstractC9235b.C9243h(c10516k.f31282c, c10516k.f31281b, z ? r.t(c10516k.f31287h, StringConstant.NEW_LINE, StringConstant.SPACE, false, 4) : c10516k.f31287h, c10516k.f31288i, str, c10516k.f31280a, c10516k.f31284e, c10516k.f31285f, c10516k.f31286g, c10516k.f31283d, z ? 3 : 1);
    }
}
