package com.google.gson.a.a;

import com.google.gson.b.a;
import com.google.gson.c.b;
import com.google.gson.f;
import com.google.gson.u;
import com.google.gson.x;
import com.google.gson.y;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/c.class */
public final class c extends x<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f4444a = new y() { // from class: com.google.gson.a.a.c.1
        @Override // com.google.gson.y
        public final <T> x<T> a(f fVar, a<T> aVar) {
            return aVar.f4531a == Date.class ? new c() : null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f4445b = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat c = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat d;

    public c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.d = simpleDateFormat;
    }

    private Date a(String str) {
        Date parse;
        synchronized (this) {
            try {
                parse = this.c.parse(str);
            } catch (ParseException e) {
                try {
                    parse = this.f4445b.parse(str);
                } catch (ParseException e2) {
                    try {
                        parse = this.d.parse(str);
                    } catch (ParseException e3) {
                        throw new u(str, e3);
                    }
                }
            }
        }
        return parse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.google.gson.c.c cVar, Date date) {
        synchronized (this) {
            if (date == null) {
                cVar.e();
            } else {
                cVar.b(this.f4445b.format(date));
            }
        }
    }

    @Override // com.google.gson.x
    public final /* synthetic */ Date a(com.google.gson.c.a aVar) {
        Date a2;
        if (aVar.f() == b.NULL) {
            aVar.k();
            a2 = null;
        } else {
            a2 = a(aVar.i());
        }
        return a2;
    }
}
