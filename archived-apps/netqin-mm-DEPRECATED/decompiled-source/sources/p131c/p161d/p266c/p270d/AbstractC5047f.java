package p131c.p161d.p266c.p270d;

import com.google.common.hash.Funnel;
import com.google.common.hash.HashCode;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: c.d.c.d.f */
/* loaded from: classes2-dex2jar.jar:c/d/c/d/f.class */
public interface AbstractC5047f extends AbstractC5051j {
    @Override // p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    AbstractC5047f mo7931a(int i);

    @Override // p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    AbstractC5047f mo7929a(long j);

    @Override // p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    AbstractC5047f mo24602a(CharSequence charSequence);

    @Override // p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    AbstractC5047f mo7928a(CharSequence charSequence, Charset charset);

    /* renamed from: a */
    <T> AbstractC5047f mo24603a(T t, Funnel<? super T> funnel);

    /* renamed from: a */
    AbstractC5047f mo7927a(ByteBuffer byteBuffer);

    /* renamed from: a */
    AbstractC5047f mo7926a(byte[] bArr, int i, int i2);

    /* renamed from: a */
    HashCode mo7934a();
}
