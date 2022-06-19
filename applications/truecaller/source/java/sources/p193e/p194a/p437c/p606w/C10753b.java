package p193e.p194a.p437c.p606w;

import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.models.pdo.SmsBackup;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9893j0;
import s1.k;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.c.w.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/b.class */
public final class C10753b implements AbstractC10750a {

    /* renamed from: a */
    public final AbstractC9893j0 f31941a;

    /* renamed from: b */
    public final AbstractC9800d0 f31942b;

    @Inject
    public C10753b(AbstractC9893j0 abstractC9893j0, AbstractC9800d0 abstractC9800d0) {
        l.e(abstractC9893j0, "backupDao");
        l.e(abstractC9800d0, "pdoDao");
        this.f31941a = abstractC9893j0;
        this.f31942b = abstractC9800d0;
    }

    @Override // p193e.p194a.p437c.p606w.AbstractC10750a
    /* renamed from: a */
    public Object mo25666a(Date date, d<? super List<? extends SmsBackup>> dVar) {
        return this.f31941a.mo27033p(date.getTime(), dVar);
    }

    @Override // p193e.p194a.p437c.p606w.AbstractC10750a
    /* renamed from: b */
    public Object mo25665b(Date date, Date date2, d<? super List<? extends ParsedDataObject>> dVar) {
        List<ParsedDataObject> mo27096o = this.f31942b.mo27096o();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(mo27096o, 10));
        for (ParsedDataObject parsedDataObject : mo27096o) {
            arrayList.add(new k(parsedDataObject, parsedDataObject.getMsgDate()));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (Boolean.valueOf(((Date) ((k) next).b).after(date)).booleanValue()) {
                arrayList2.add(next);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Object next2 = it2.next();
            if (Boolean.valueOf(((Date) ((k) next2).b).before(date2)).booleanValue()) {
                arrayList3.add(next2);
            }
        }
        ArrayList arrayList4 = new ArrayList(C25225a.m4004J(arrayList3, 10));
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add((ParsedDataObject) ((k) it3.next()).a);
        }
        return arrayList4;
    }
}
