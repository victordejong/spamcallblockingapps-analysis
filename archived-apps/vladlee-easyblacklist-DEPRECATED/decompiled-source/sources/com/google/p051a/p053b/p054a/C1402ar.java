package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.util.Calendar;
import java.util.GregorianCalendar;
/* renamed from: com.google.a.b.a.ar */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ar.class */
final class C1402ar extends AbstractC1378ae<Calendar> {
    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Calendar mo6175a(C1495a aVar) {
        if (aVar.mo6236f() == EnumC1497c.NULL) {
            aVar.mo6232j();
            return null;
        }
        aVar.mo6240c();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (aVar.mo6236f() != EnumC1497c.END_OBJECT) {
            String g = aVar.mo6235g();
            int m = aVar.mo6229m();
            if ("year".equals(g)) {
                i = m;
            } else if ("month".equals(g)) {
                i6 = m;
            } else if ("dayOfMonth".equals(g)) {
                i2 = m;
            } else if ("hourOfDay".equals(g)) {
                i3 = m;
            } else if ("minute".equals(g)) {
                i4 = m;
            } else if ("second".equals(g)) {
                i5 = m;
            }
        }
        aVar.mo6238d();
        return new GregorianCalendar(i, i6, i2, i3, i4, i5);
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ void mo6174a(C1498d dVar, Calendar calendar) {
        Calendar calendar2 = calendar;
        if (calendar2 == null) {
            dVar.mo6195f();
            return;
        }
        dVar.mo6199d();
        dVar.mo6208a("year");
        dVar.mo6211a(calendar2.get(1));
        dVar.mo6208a("month");
        dVar.mo6211a(calendar2.get(2));
        dVar.mo6208a("dayOfMonth");
        dVar.mo6211a(calendar2.get(5));
        dVar.mo6208a("hourOfDay");
        dVar.mo6211a(calendar2.get(11));
        dVar.mo6208a("minute");
        dVar.mo6211a(calendar2.get(12));
        dVar.mo6208a("second");
        dVar.mo6211a(calendar2.get(13));
        dVar.mo6196e();
    }
}
