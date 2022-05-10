package p131c.p161d.p266c.p270d;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.d.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/d/a.class */
public abstract class AbstractC5042a extends AbstractC5044c {

    /* renamed from: a */
    public final ByteBuffer f17644a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    @Override // p131c.p161d.p266c.p270d.AbstractC5044c
    /* renamed from: a */
    public AbstractC5047f mo7932a(char c) {
        this.f17644a.putChar(c);
        m24608b(2);
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public AbstractC5047f mo7931a(int i) {
        this.f17644a.putInt(i);
        m24608b(4);
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f, p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public AbstractC5047f mo7929a(long j) {
        this.f17644a.putLong(j);
        m24608b(8);
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5047f
    /* renamed from: a */
    public AbstractC5047f mo7927a(ByteBuffer byteBuffer) {
        mo7940b(byteBuffer);
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5044c, p131c.p161d.p266c.p270d.AbstractC5051j
    /* renamed from: a */
    public AbstractC5047f mo24601a(byte[] bArr) {
        C4933n.m24795a(bArr);
        m24607b(bArr);
        return this;
    }

    @Override // p131c.p161d.p266c.p270d.AbstractC5044c, p131c.p161d.p266c.p270d.AbstractC5047f
    /* renamed from: a */
    public AbstractC5047f mo7926a(byte[] bArr, int i, int i2) {
        C4933n.m24778b(i, i + i2, bArr.length);
        mo7939b(bArr, i, i2);
        return this;
    }

    /* renamed from: a */
    public abstract void mo7942a(byte b);

    /* renamed from: b */
    public final AbstractC5047f m24608b(int i) {
        try {
            mo7939b(this.f17644a.array(), 0, i);
            return this;
        } finally {
            this.f17644a.clear();
        }
    }

    /* renamed from: b */
    public void mo7940b(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            mo7939b(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            byteBuffer.position(byteBuffer.limit());
            return;
        }
        for (int remaining = byteBuffer.remaining(); remaining > 0; remaining--) {
            mo7942a(byteBuffer.get());
        }
    }

    /* renamed from: b */
    public void m24607b(byte[] bArr) {
        mo7939b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public abstract void mo7939b(byte[] bArr, int i, int i2);
}
