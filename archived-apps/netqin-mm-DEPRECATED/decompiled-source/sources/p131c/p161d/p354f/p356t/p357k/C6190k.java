package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.k */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/k.class */
public final class C6190k extends AbstractC6129q<Time> {

    /* renamed from: b */
    public static final AbstractC6131r f19729b = new C6191a();

    /* renamed from: a */
    public final DateFormat f19730a = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: c.d.f.t.k.k$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/k$a.class */
    public class C6191a implements AbstractC6131r {
        @Override // p131c.p161d.p354f.AbstractC6131r
        public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
            return aVar.m21836a() == Time.class ? new C6190k() : null;
        }
    }

    /* renamed from: a */
    public void write(C6242b bVar, Time time) throws IOException {
        synchronized (this) {
            bVar.mo21778d(time == null ? null : this.f19730a.format((Date) time));
        }
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public Time read(C6240a aVar) throws IOException {
        synchronized (this) {
            if (aVar.mo21802u() == JsonToken.NULL) {
                aVar.mo21805r();
                return null;
            }
            try {
                return new Time(this.f19730a.parse(aVar.mo21804s()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }
}
