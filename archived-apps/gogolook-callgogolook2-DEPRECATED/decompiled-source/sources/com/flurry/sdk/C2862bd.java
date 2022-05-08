package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.C2857bb;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.bd */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bd.class */
public final class C2862bd {

    /* renamed from: e */
    public static int f4158e = 1;

    /* renamed from: a */
    public int f4159a;

    /* renamed from: b */
    public long f4160b;

    /* renamed from: c */
    public String f4161c;

    /* renamed from: d */
    public List<C2857bb> f4162d;

    /* renamed from: com.flurry.sdk.bd$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bd$a.class */
    public static final class C2863a implements AbstractC3417kl<C2862bd> {

        /* renamed from: a */
        public final C2857bb.C2858a f4163a;

        public C2863a(C2857bb.C2858a aVar) {
            this.f4163a = aVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C2862bd mo32526a(InputStream inputStream) throws IOException {
            String readUTF = null;
            if (inputStream == null || this.f4163a == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.bd.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2862bd bdVar = new C2862bd((byte) 0);
            bdVar.f4159a = dataInputStream.readInt();
            bdVar.f4160b = dataInputStream.readLong();
            readUTF = dataInputStream.readUTF();
            if (readUTF.equals("")) {
            }
            bdVar.f4161c = readUTF;
            bdVar.f4162d = new ArrayList();
            short readShort = dataInputStream.readShort();
            for (short s = 0; s < readShort; s = (short) (s + 1)) {
                bdVar.f4162d.add(this.f4163a.mo32526a(dataInputStream));
            }
            return bdVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C2862bd bdVar) throws IOException {
            C2862bd bdVar2 = bdVar;
            if (!(outputStream == null || bdVar2 == null || this.f4163a == null)) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.bd.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeInt(bdVar2.f4159a);
                dataOutputStream.writeLong(bdVar2.f4160b);
                dataOutputStream.writeUTF(bdVar2.f4161c == null ? "" : bdVar2.f4161c);
                dataOutputStream.writeShort(bdVar2.f4162d.size());
                for (C2857bb bbVar : bdVar2.f4162d) {
                    this.f4163a.mo32525a((OutputStream) dataOutputStream, bbVar);
                }
                dataOutputStream.flush();
            }
        }
    }

    public C2862bd() {
    }

    public /* synthetic */ C2862bd(byte b) {
        this();
    }

    public C2862bd(String str) {
        int i = f4158e;
        f4158e = i + 1;
        this.f4159a = i;
        C3294ij.m32755a();
        this.f4160b = C3294ij.m32752d();
        this.f4161c = str;
        this.f4162d = new ArrayList();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2862bd)) {
            return false;
        }
        C2862bd bdVar = (C2862bd) obj;
        if (this.f4159a != bdVar.f4159a || this.f4160b != bdVar.f4160b || !TextUtils.equals(this.f4161c, bdVar.f4161c)) {
            return false;
        }
        List<C2857bb> list = this.f4162d;
        List<C2857bb> list2 = bdVar.f4162d;
        if (list != list2) {
            return list != null && list.equals(list2);
        }
        return true;
    }

    public final int hashCode() {
        int i = (int) ((this.f4159a ^ 17) ^ this.f4160b);
        String str = this.f4161c;
        int i2 = i;
        if (str != null) {
            i2 = i ^ str.hashCode();
        }
        List<C2857bb> list = this.f4162d;
        int i3 = i2;
        if (list != null) {
            i3 = i2 ^ list.hashCode();
        }
        return i3;
    }
}
