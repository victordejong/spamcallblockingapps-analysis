package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1374aa;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: com.google.a.b.a.s */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/s.class */
public final class C1440s extends AbstractC1378ae<Time> {

    /* renamed from: a */
    public static final AbstractC1380ag f5549a = new C1441t();

    /* renamed from: b */
    private final DateFormat f5550b = new SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo6174a(C1498d dVar, Time time) {
        synchronized (this) {
            dVar.mo6204b(time == null ? null : this.f5550b.format((Date) time));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public Time mo6175a(C1495a aVar) {
        synchronized (this) {
            if (aVar.mo6236f() == EnumC1497c.NULL) {
                aVar.mo6232j();
                return null;
            }
            try {
                return new Time(this.f5550b.parse(aVar.mo6234h()).getTime());
            } catch (ParseException e) {
                throw new C1374aa(e);
            }
        }
    }
}
