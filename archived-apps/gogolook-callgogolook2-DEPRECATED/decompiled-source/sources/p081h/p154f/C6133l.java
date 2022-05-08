package p081h.p154f;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.facebook.FacebookRequestError;
/* renamed from: h.f.l */
/* loaded from: classes-dex2jar.jar:h/f/l.class */
public class C6133l extends C6131k {

    /* renamed from: a */
    public final C6148s f15242a;

    public C6133l(C6148s sVar, String str) {
        super(str);
        this.f15242a = sVar;
    }

    @Override // p081h.p154f.C6131k, java.lang.Throwable
    public final String toString() {
        C6148s sVar = this.f15242a;
        FacebookRequestError a = sVar != null ? sVar.m23705a() : null;
        StringBuilder sb = new StringBuilder();
        sb.append("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
            sb.append(" ");
        }
        if (a != null) {
            sb.append("httpResponseCode: ");
            sb.append(a.m35469s());
            sb.append(", facebookErrorCode: ");
            sb.append(a.m35475a());
            sb.append(", facebookErrorType: ");
            sb.append(a.m35472c());
            sb.append(", message: ");
            sb.append(a.m35473b());
            sb.append(CssParser.BLOCK_END);
        }
        return sb.toString();
    }
}
