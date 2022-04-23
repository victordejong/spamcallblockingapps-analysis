package p000a.p001a.p002a.p003a.p004a.p010e;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.e.f */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/f.class */
public final class C0099f extends C0093e.AbstractC0094a<C0093e> {

    /* renamed from: a */
    final /* synthetic */ InputStream f192a;

    /* renamed from: b */
    final /* synthetic */ OutputStream f193b;

    /* renamed from: c */
    final /* synthetic */ C0093e f194c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0099f(C0093e eVar, Closeable closeable, boolean z, InputStream inputStream, OutputStream outputStream) {
        super(closeable, z);
        this.f194c = eVar;
        this.f192a = inputStream;
        this.f193b = outputStream;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p010e.C0093e.AbstractCallableC0097d
    /* renamed from: a */
    public final /* synthetic */ Object mo10204a() {
        int i;
        i = this.f194c.f185j;
        byte[] bArr = new byte[i];
        while (true) {
            int read = this.f192a.read(bArr);
            if (read == -1) {
                return this.f194c;
            }
            this.f193b.write(bArr, 0, read);
        }
    }
}
