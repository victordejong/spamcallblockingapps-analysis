package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.hu */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hu.class */
public final class C3249hu {

    /* renamed from: a */
    public byte[] f5442a;

    /* renamed from: com.flurry.sdk.hu$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hu$a.class */
    public static final class C3250a implements AbstractC3417kl<C3249hu> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3249hu mo32526a(InputStream inputStream) throws IOException {
            DataInputStream dataInputStream;
            int readShort;
            if (inputStream == null || (readShort = (dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.hu.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            }).readShort()) == 0) {
                return null;
            }
            C3249hu huVar = new C3249hu();
            huVar.f5442a = new byte[readShort];
            dataInputStream.readFully(huVar.f5442a);
            dataInputStream.readUnsignedShort();
            return huVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3249hu huVar) throws IOException {
            C3249hu huVar2 = huVar;
            if (outputStream != null && huVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.hu.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeShort(huVar2.f5442a.length);
                dataOutputStream.write(huVar2.f5442a);
                dataOutputStream.writeShort(0);
                dataOutputStream.flush();
            }
        }
    }

    public C3249hu() {
    }

    public C3249hu(byte[] bArr) {
        this.f5442a = bArr;
    }
}
