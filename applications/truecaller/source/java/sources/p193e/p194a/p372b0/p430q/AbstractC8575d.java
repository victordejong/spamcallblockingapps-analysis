package p193e.p194a.p372b0.p430q;

import com.tenor.android.core.constant.StringConstant;
import e.f.a.n.q.d.f;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import s1.z.c.l;
/* renamed from: e.a.b0.q.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/d.class */
public abstract class AbstractC8575d extends f {

    /* renamed from: b */
    public final byte[] f26393b;

    /* renamed from: c */
    public final String f26394c;

    public AbstractC8575d(String str) {
        l.e(str, "id");
        this.f26394c = str;
        Charset forName = Charset.forName(StringConstant.UTF8);
        l.d(forName, "Charset.forName(\"UTF-8\")");
        byte[] bytes = str.getBytes(forName);
        l.d(bytes, "(this as java.lang.String).getBytes(charset)");
        this.f26393b = bytes;
    }

    /* renamed from: b */
    public void mo28246b(MessageDigest messageDigest) {
        l.e(messageDigest, "messageDigest");
        messageDigest.update(this.f26393b);
        messageDigest.update(ByteBuffer.allocate(4).putInt(hashCode()).array());
    }
}
