package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: c.d.h.n0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/n0.class */
public interface AbstractC6354n0 extends AbstractC6357o0 {

    /* renamed from: c.d.h.n0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/n0$a.class */
    public interface AbstractC6355a extends AbstractC6357o0, Cloneable {
        /* renamed from: B */
        AbstractC6354n0 mo6938B();

        /* renamed from: a */
        AbstractC6355a mo21178a(AbstractC6354n0 n0Var);

        /* renamed from: a */
        AbstractC6355a mo21177a(byte[] bArr) throws InvalidProtocolBufferException;

        /* renamed from: a */
        AbstractC6354n0 mo6937a();
    }

    /* renamed from: a */
    void mo6957a(CodedOutputStream codedOutputStream) throws IOException;

    /* renamed from: a */
    void mo21181a(OutputStream outputStream) throws IOException;

    /* renamed from: c */
    byte[] mo21180c();

    /* renamed from: h */
    AbstractC6355a mo6926h();

    /* renamed from: l */
    ByteString mo21179l();

    /* renamed from: o */
    int mo6944o();

    /* renamed from: q */
    AbstractC6355a mo6925q();

    /* renamed from: r */
    AbstractC6376v0<? extends AbstractC6354n0> mo6943r();
}
