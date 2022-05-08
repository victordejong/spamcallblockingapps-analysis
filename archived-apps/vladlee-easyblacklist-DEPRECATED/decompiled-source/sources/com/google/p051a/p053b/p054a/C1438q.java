package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* renamed from: com.google.a.b.a.q */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/q.class */
public final class C1438q extends AbstractC1378ae<Date> {

    /* renamed from: a */
    public static final AbstractC1380ag f5547a = new C1439r();

    /* renamed from: b */
    private final DateFormat f5548b = new SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo6174a(C1498d dVar, Date date) {
        synchronized (this) {
            dVar.mo6204b(date == null ? null : this.f5548b.format((java.util.Date) date));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public Date mo6175a(C1495a aVar) {
        synchronized (this) {
            if (aVar.mo6236f() == EnumC1497c.NULL) {
                aVar.mo6232j();
                return null;
            }
            try {
                return new Date(this.f5548b.parse(aVar.mo6234h()).getTime());
            } catch (ParseException e) {
                throw new C1374aa(e);
            }
        }
    }
}
