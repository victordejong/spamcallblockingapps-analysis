package p131c.p161d.p266c.p270d;

import com.google.common.hash.Funnel;
import com.google.common.hash.HashCode;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.d.b */
/* loaded from: classes2-dex2jar.jar:c/d/c/d/b.class */
public abstract class AbstractC5043b implements AbstractC5046e {
    public HashCode hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).mo7927a(byteBuffer).mo7934a();
    }

    public HashCode hashBytes(byte[] bArr) {
        return hashBytes(bArr, 0, bArr.length);
    }

    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        C4933n.m24778b(i, i + i2, bArr.length);
        return newHasher(i2).mo7926a(bArr, i, i2).mo7934a();
    }

    public HashCode hashInt(int i) {
        return newHasher(4).mo7931a(i).mo7934a();
    }

    public HashCode hashLong(long j) {
        return newHasher(8).mo7929a(j).mo7934a();
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5046e
    public <T> HashCode hashObject(T t, Funnel<? super T> funnel) {
        AbstractC5047f newHasher = newHasher();
        newHasher.mo24603a((AbstractC5047f) t, (Funnel<? super AbstractC5047f>) funnel);
        return newHasher.mo7934a();
    }

    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return newHasher().mo7928a(charSequence, charset).mo7934a();
    }

    public HashCode hashUnencodedChars(CharSequence charSequence) {
        AbstractC5047f newHasher = newHasher(charSequence.length() * 2);
        newHasher.mo24602a(charSequence);
        return newHasher.mo7934a();
    }

    public AbstractC5047f newHasher(int i) {
        C4933n.m24787a(i >= 0, "expectedInputSize must be >= 0 but was %s", i);
        return newHasher();
    }
}
