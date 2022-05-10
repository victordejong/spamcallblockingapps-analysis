package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.j */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/j.class */
public final class C6188j extends AbstractC6129q<Date> {

    /* renamed from: b */
    public static final AbstractC6131r f19727b = new C6189a();

    /* renamed from: a */
    public final DateFormat f19728a = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: c.d.f.t.k.j$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/j$a.class */
    public class C6189a implements AbstractC6131r {
        @Override // p131c.p161d.p354f.AbstractC6131r
        public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
            return aVar.m21836a() == Date.class ? new C6188j() : null;
        }
    }

    /* renamed from: a */
    public void write(C6242b bVar, Date date) throws IOException {
        synchronized (this) {
            bVar.mo21778d(date == null ? null : this.f19728a.format((java.util.Date) date));
        }
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public Date read(C6240a aVar) throws IOException {
        synchronized (this) {
            if (aVar.mo21802u() == JsonToken.NULL) {
                aVar.mo21805r();
                return null;
            }
            try {
                return new Date(this.f19728a.parse(aVar.mo21804s()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }
}
