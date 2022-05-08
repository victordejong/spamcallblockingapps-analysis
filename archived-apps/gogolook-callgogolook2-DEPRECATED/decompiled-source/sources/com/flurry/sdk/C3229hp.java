package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.hp */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hp.class */
public class C3229hp {

    /* renamed from: a */
    public int f5392a;

    /* renamed from: b */
    public long f5393b;

    /* renamed from: c */
    public long f5394c;

    /* renamed from: d */
    public boolean f5395d;

    /* renamed from: g */
    public String f5398g;

    /* renamed from: h */
    public int f5399h;

    /* renamed from: i */
    public long f5400i;

    /* renamed from: j */
    public boolean f5401j;

    /* renamed from: l */
    public C3225ho f5403l;

    /* renamed from: k */
    public long f5402k = 0;

    /* renamed from: e */
    public int f5396e = 0;

    /* renamed from: f */
    public EnumC3233hq f5397f = EnumC3233hq.PENDING_COMPLETION;

    /* renamed from: com.flurry.sdk.hp$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hp$a.class */
    public static final class C3230a implements AbstractC3417kl<C3229hp> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3229hp mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.hp.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            int readInt = dataInputStream.readInt();
            long readLong = dataInputStream.readLong();
            long readLong2 = dataInputStream.readLong();
            boolean readBoolean = dataInputStream.readBoolean();
            int readInt2 = dataInputStream.readInt();
            EnumC3233hq a = EnumC3233hq.m32850a(dataInputStream.readInt());
            String readUTF = dataInputStream.readUTF();
            int readInt3 = dataInputStream.readInt();
            long readLong3 = dataInputStream.readLong();
            boolean readBoolean2 = dataInputStream.readBoolean();
            long readLong4 = dataInputStream.readLong();
            C3229hp hpVar = new C3229hp(null, readLong, readLong2, readInt);
            hpVar.f5395d = readBoolean;
            hpVar.f5396e = readInt2;
            hpVar.f5397f = a;
            hpVar.f5398g = readUTF;
            hpVar.f5399h = readInt3;
            hpVar.f5400i = readLong3;
            hpVar.f5401j = readBoolean2;
            hpVar.f5402k = readLong4;
            return hpVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3229hp hpVar) throws IOException {
            C3229hp hpVar2 = hpVar;
            if (outputStream != null && hpVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.hp.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeInt(hpVar2.f5392a);
                dataOutputStream.writeLong(hpVar2.f5393b);
                dataOutputStream.writeLong(hpVar2.f5394c);
                dataOutputStream.writeBoolean(hpVar2.f5395d);
                dataOutputStream.writeInt(hpVar2.f5396e);
                dataOutputStream.writeInt(hpVar2.f5397f.f5409e);
                String str = hpVar2.f5398g;
                if (str != null) {
                    dataOutputStream.writeUTF(str);
                } else {
                    dataOutputStream.writeUTF("");
                }
                dataOutputStream.writeInt(hpVar2.f5399h);
                dataOutputStream.writeLong(hpVar2.f5400i);
                dataOutputStream.writeBoolean(hpVar2.f5401j);
                dataOutputStream.writeLong(hpVar2.f5402k);
                dataOutputStream.flush();
            }
        }
    }

    public C3229hp(C3225ho hoVar, long j, long j2, int i) {
        this.f5403l = hoVar;
        this.f5393b = j;
        this.f5394c = j2;
        this.f5392a = i;
    }

    /* renamed from: a */
    public final void m32851a() {
        this.f5403l.f5383f.add(this);
        if (this.f5395d) {
            this.f5403l.f5390m = true;
        }
    }
}
