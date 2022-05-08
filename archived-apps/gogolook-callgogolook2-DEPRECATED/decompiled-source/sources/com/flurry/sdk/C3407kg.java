package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.kg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kg.class */
public final class C3407kg {

    /* renamed from: a */
    public String f5843a;

    /* renamed from: com.flurry.sdk.kg$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kg$a.class */
    public static final class C3408a implements AbstractC3417kl<C3407kg> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3407kg mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.kg.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C3407kg kgVar = new C3407kg((byte) 0);
            kgVar.f5843a = dataInputStream.readUTF();
            return kgVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3407kg kgVar) throws IOException {
            C3407kg kgVar2 = kgVar;
            if (outputStream != null && kgVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.kg.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeUTF(kgVar2.f5843a);
                dataOutputStream.flush();
            }
        }
    }

    public C3407kg() {
    }

    public /* synthetic */ C3407kg(byte b) {
        this();
    }

    public C3407kg(String str) {
        this.f5843a = str;
    }
}
