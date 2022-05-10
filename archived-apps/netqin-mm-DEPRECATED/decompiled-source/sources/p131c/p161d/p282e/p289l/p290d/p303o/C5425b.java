package p131c.p161d.p282e.p289l.p290d.p303o;

import com.android.volley.Request;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.nio.charset.Charset;
import p131c.p161d.p170b.p173b.AbstractC2495d;
/* renamed from: c.d.e.l.d.o.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/o/b.class */
public final /* synthetic */ class C5425b implements AbstractC2495d {

    /* renamed from: a */
    public static final C5425b f18369a = new C5425b();

    /* renamed from: a */
    public static AbstractC2495d m23815a() {
        return f18369a;
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2495d
    public Object apply(Object obj) {
        byte[] bytes;
        bytes = C5426c.f18370b.m23962a((CrashlyticsReport) obj).getBytes(Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
        return bytes;
    }
}
