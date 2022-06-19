package p193e.p194a.p717f.p718a.p721b.p724v;

import com.truecaller.incallui.C4013R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p717f.p718a.p721b.p724v.AbstractC13617e;
import p193e.p194a.p717f.p733y.AbstractC13792v;
import p193e.p194a.p717f.p734z.p736n0.C13843a;
import q3.a.w2.r;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.v.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/d.class */
public final class C13616d extends AbstractC20576b<AbstractC13615c> implements AbstractC20580e {

    /* renamed from: b */
    public final AbstractC13792v f39465b;

    /* renamed from: c */
    public final AbstractC19223c0 f39466c;

    @Inject
    public C13616d(AbstractC13792v abstractC13792v, AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC13792v, "ongoingCallHelper");
        l.e(abstractC19223c0, "resourceProvider");
        this.f39465b = abstractC13792v;
        this.f39466c = abstractC19223c0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.f.a.b.v.c] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object, e.a.f.a.b.v.e$c] */
    /* JADX WARN: Type inference failed for: r0v56, types: [e.a.f.a.b.v.e$a] */
    /* JADX WARN: Type inference failed for: r0v60, types: [e.a.f.a.b.v.e$a] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        C13843a c13843a;
        Object obj2;
        ?? r0 = (AbstractC13615c) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r<C13843a> mo21061s = this.f39465b.mo21061s();
        if (mo21061s == null || (c13843a = (C13843a) mo21061s.c()) == null) {
            r0.close();
            return;
        }
        String mo13768b = this.f39466c.mo13768b(C4013R.string.incallui_button_phone, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…ng.incallui_button_phone)");
        AbstractC13617e.C13619b c13619b = new AbstractC13617e.C13619b(mo13768b);
        String mo13768b2 = this.f39466c.mo13768b(C4013R.string.incallui_button_speaker, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri….incallui_button_speaker)");
        ?? c13620c = new AbstractC13617e.C13620c(mo13768b2);
        List<C19263a> list = c13843a.f40170b;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C19263a c19263a : list) {
            arrayList.add(new AbstractC13617e.C13618a(c19263a.f53645a, c19263a.f53646b));
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(arrayList);
        arrayList2.add(c13620c);
        arrayList2.add(c13619b);
        int ordinal = c13843a.f40169a.ordinal();
        AbstractC13617e.C13619b c13619b2 = c13619b;
        if (ordinal != 0) {
            if (ordinal != 1) {
                c13619b2 = c13619b;
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        throw new i();
                    }
                    c13619b2 = c13620c;
                }
            } else {
                Iterator it = arrayList.iterator();
                while (true) {
                    obj2 = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    String str = ((AbstractC13617e.C13618a) next).f39470d;
                    C19263a c19263a2 = c13843a.f40171c;
                    String str2 = null;
                    if (c19263a2 != null) {
                        str2 = c19263a2.f53646b;
                    }
                    if (l.a(str, str2)) {
                        obj2 = next;
                        break;
                    }
                }
                c13619b2 = (AbstractC13617e.C13618a) obj2;
                if (c13619b2 == null) {
                    c13619b2 = (AbstractC13617e.C13618a) s1.u.i.B(arrayList);
                }
            }
        }
        AbstractC13615c abstractC13615c = (AbstractC13615c) this.f57683a;
        if (abstractC13615c == null) {
            return;
        }
        abstractC13615c.mo21485zj(arrayList2, c13619b2);
    }
}
