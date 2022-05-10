package p131c.p161d.p266c.p270d;

import com.google.common.hash.Funnel;
import java.nio.charset.Charset;
/* renamed from: c.d.c.d.c */
/* loaded from: classes2-dex2jar.jar:c/d/c/d/c.class */
public abstract class AbstractC5044c implements AbstractC5047f {
    /* renamed from: a */
    public abstract AbstractC5047f mo7932a(char c);

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public AbstractC5047f mo24602a(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            mo7932a(charSequence.charAt(i));
        }
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public AbstractC5047f mo7928a(CharSequence charSequence, Charset charset) {
        return mo24601a(charSequence.toString().getBytes(charset));
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f
    /* renamed from: a */
    public <T> AbstractC5047f mo24603a(T t, Funnel<? super T> funnel) {
        funnel.funnel(t, this);
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public AbstractC5047f mo24601a(byte[] bArr) {
        return mo7926a(bArr, 0, bArr.length);
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f
    /* renamed from: a */
    public abstract AbstractC5047f mo7926a(byte[] bArr, int i, int i2);
}
