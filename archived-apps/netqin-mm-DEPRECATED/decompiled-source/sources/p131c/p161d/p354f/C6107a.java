package p131c.p161d.p354f;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import p131c.p161d.p354f.p356t.C6155d;
import p131c.p161d.p354f.p356t.C6158g;
import p131c.p161d.p354f.p356t.p357k.p358o.C6235a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.a */
/* loaded from: classes2-dex2jar.jar:c/d/f/a.class */
public final class C6107a extends AbstractC6129q<Date> {

    /* renamed from: a */
    public final Class<? extends Date> f19611a;

    /* renamed from: b */
    public final List<DateFormat> f19612b = new ArrayList();

    public C6107a(Class<? extends Date> cls, int i, int i2) {
        m22002a(cls);
        this.f19611a = cls;
        this.f19612b.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f19612b.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (C6155d.m21919c()) {
            this.f19612b.add(C6158g.m21915a(i, i2));
        }
    }

    public C6107a(Class<? extends Date> cls, String str) {
        m22002a(cls);
        this.f19611a = cls;
        this.f19612b.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f19612b.add(new SimpleDateFormat(str));
        }
    }

    /* renamed from: a */
    public static Class<? extends Date> m22002a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    /* renamed from: a */
    public final Date m22001a(String str) {
        synchronized (this.f19612b) {
            for (DateFormat dateFormat : this.f19612b) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return C6235a.m21842a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new JsonSyntaxException(str, e2);
            }
        }
    }

    /* renamed from: a */
    public void write(C6242b bVar, Date date) throws IOException {
        if (date == null) {
            bVar.mo21770k();
            return;
        }
        synchronized (this.f19612b) {
            bVar.mo21778d(this.f19612b.get(0).format(date));
        }
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public Date read(C6240a aVar) throws IOException {
        if (aVar.mo21802u() == JsonToken.NULL) {
            aVar.mo21805r();
            return null;
        }
        Date a = m22001a(aVar.mo21804s());
        Class<? extends Date> cls = this.f19611a;
        if (cls == Date.class) {
            return a;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(a.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(a.getTime());
        }
        throw new AssertionError();
    }

    public String toString() {
        DateFormat dateFormat = this.f19612b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
