package p131c.p161d.p266c.p267a;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.charset.Charset;
/* renamed from: c.d.c.a.c */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/c.class */
public final class C4916c {

    /* renamed from: a */
    public static final Charset f17555a = Charset.forName("US-ASCII");

    /* renamed from: b */
    public static final Charset f17556b = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    static {
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("UTF-16");
    }
}
