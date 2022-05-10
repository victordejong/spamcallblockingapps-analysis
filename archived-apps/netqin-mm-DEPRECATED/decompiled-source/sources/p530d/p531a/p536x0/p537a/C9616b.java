package p530d.p531a.p536x0.p537a;

import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.MethodDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p367h.AbstractC6327j;
import p131c.p161d.p367h.AbstractC6354n0;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6358p;
/* renamed from: d.a.x0.a.b */
/* loaded from: classes2-dex2jar.jar:d/a/x0/a/b.class */
public final class C9616b {

    /* renamed from: a */
    public static volatile C6358p f36692a = C6358p.m21173a();

    /* renamed from: d.a.x0.a.b$a */
    /* loaded from: classes2-dex2jar.jar:d/a/x0/a/b$a.class */
    public static final class C9617a<T extends AbstractC6354n0> implements MethodDescriptor.AbstractC10302d<T> {

        /* renamed from: c */
        public static final ThreadLocal<Reference<byte[]>> f36693c = new ThreadLocal<>();

        /* renamed from: a */
        public final AbstractC6376v0<T> f36694a;

        /* renamed from: b */
        public final T f36695b;

        public C9617a(T t) {
            this.f36695b = t;
            this.f36694a = (AbstractC6376v0<T>) t.mo6943r();
        }

        /* renamed from: a */
        public final T m2174a(AbstractC6327j jVar) throws InvalidProtocolBufferException {
            T a = this.f36694a.mo21030a(jVar, C9616b.f36692a);
            try {
                jVar.mo21419a(0);
                return a;
            } catch (InvalidProtocolBufferException e) {
                e.setUnfinishedMessage(a);
                throw e;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x005c, code lost:
            if (r0.length < r0) goto L_0x005f;
         */
        @Override // io.grpc.MethodDescriptor.AbstractC10301c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public T mo619a(java.io.InputStream r6) {
            /*
                Method dump skipped, instructions count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p536x0.p537a.C9616b.C9617a.mo619a(java.io.InputStream):c.d.h.n0");
        }

        /* renamed from: a */
        public InputStream m2173a(T t) {
            return new C9615a(t, this.f36694a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.grpc.MethodDescriptor.AbstractC10301c
        /* renamed from: a */
        public /* bridge */ /* synthetic */ InputStream mo618a(Object obj) {
            return m2173a((C9617a<T>) ((AbstractC6354n0) obj));
        }
    }

    /* renamed from: a */
    public static long m2175a(InputStream inputStream, OutputStream outputStream) throws IOException {
        C4933n.m24794a(inputStream, "inputStream cannot be null!");
        C4933n.m24794a(outputStream, "outputStream cannot be null!");
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC6354n0> MethodDescriptor.AbstractC10301c<T> m2176a(T t) {
        return new C9617a(t);
    }
}
