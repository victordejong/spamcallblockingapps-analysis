package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1374aa;
import com.google.p051a.p053b.p054a.p055a.C1384a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import com.google.p051a.p059e.C1501a;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* renamed from: com.google.a.b.a.d */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/d.class */
public final class C1422d extends AbstractC1378ae<Date> {

    /* renamed from: a */
    public static final AbstractC1380ag f5507a = new C1423e();

    /* renamed from: b */
    private final List<DateFormat> f5508b = new ArrayList();

    public C1422d() {
        this.f5508b.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f5508b.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (C1501a.m6186b()) {
            this.f5508b.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", Locale.US));
        }
    }

    /* renamed from: a */
    private Date m6336a(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f5508b) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return C1384a.m6348a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new C1374aa(str, e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo6174a(C1498d dVar, Date date) {
        synchronized (this) {
            if (date == null) {
                dVar.mo6195f();
            } else {
                dVar.mo6204b(this.f5508b.get(0).format(date));
            }
        }
    }

    @Override // com.google.p051a.AbstractC1378ae
    /* renamed from: a */
    public final /* synthetic */ Date mo6175a(C1495a aVar) {
        if (aVar.mo6236f() != EnumC1497c.NULL) {
            return m6336a(aVar.mo6234h());
        }
        aVar.mo6232j();
        return null;
    }
}
