package com.flurry.sdk;

import com.flurry.sdk.C3225ho;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.flurry.sdk.hs */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hs.class */
public final class C3242hs {

    /* renamed from: f */
    public static final String f5423f = C3246ht.class.getName();

    /* renamed from: a */
    public long f5424a;

    /* renamed from: b */
    public EnumC3254hw f5425b;

    /* renamed from: c */
    public int f5426c;

    /* renamed from: d */
    public String f5427d;

    /* renamed from: e */
    public Map<Long, C3225ho> f5428e;

    /* renamed from: g */
    public long f5429g = System.currentTimeMillis();

    /* renamed from: h */
    public long f5430h;

    /* renamed from: i */
    public boolean f5431i;

    /* renamed from: j */
    public int f5432j;

    /* renamed from: k */
    public AtomicInteger f5433k;

    /* renamed from: com.flurry.sdk.hs$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hs$a.class */
    public static final class C3243a implements AbstractC3417kl<C3242hs> {

        /* renamed from: a */
        public C3414kk<C3225ho> f5434a = new C3414kk<>(new C3225ho.C3226a());

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3242hs mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.hs.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            long readLong = dataInputStream.readLong();
            long readLong2 = dataInputStream.readLong();
            long readLong3 = dataInputStream.readLong();
            EnumC3254hw a = EnumC3254hw.m32798a(dataInputStream.readInt());
            boolean readBoolean = dataInputStream.readBoolean();
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            int readInt3 = dataInputStream.readInt();
            C3242hs hsVar = new C3242hs(readUTF, readBoolean, readLong, readLong3, a, null);
            hsVar.f5429g = readLong2;
            hsVar.f5426c = readInt;
            hsVar.f5432j = readInt2;
            hsVar.f5433k = new AtomicInteger(readInt3);
            List<C3225ho> b = this.f5434a.mo32526a(inputStream);
            if (b != null) {
                hsVar.f5428e = new HashMap();
                for (C3225ho hoVar : b) {
                    hoVar.f5384g = hsVar;
                    hsVar.f5428e.put(Long.valueOf(hoVar.f5378a), hoVar);
                }
            }
            return hsVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3242hs hsVar) throws IOException {
            C3242hs hsVar2 = hsVar;
            if (outputStream != null && hsVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.hs.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeLong(hsVar2.f5424a);
                dataOutputStream.writeLong(hsVar2.f5429g);
                dataOutputStream.writeLong(hsVar2.f5430h);
                dataOutputStream.writeInt(hsVar2.f5425b.f5453e);
                dataOutputStream.writeBoolean(hsVar2.f5431i);
                dataOutputStream.writeInt(hsVar2.f5426c);
                if (hsVar2.f5427d != null) {
                    dataOutputStream.writeUTF(hsVar2.f5427d);
                } else {
                    dataOutputStream.writeUTF("");
                }
                dataOutputStream.writeInt(hsVar2.f5432j);
                dataOutputStream.writeInt(hsVar2.f5433k.intValue());
                dataOutputStream.flush();
                this.f5434a.m32528a(outputStream, hsVar2.m32826a());
            }
        }
    }

    public C3242hs(String str, boolean z, long j, long j2, EnumC3254hw hwVar, Map<Long, C3225ho> map) {
        this.f5427d = str;
        this.f5431i = z;
        this.f5424a = j;
        this.f5430h = j2;
        this.f5425b = hwVar;
        this.f5428e = map;
        if (map != null) {
            for (Long l : map.keySet()) {
                map.get(l).f5384g = this;
            }
            this.f5432j = map.size();
        } else {
            this.f5432j = 0;
        }
        this.f5433k = new AtomicInteger(0);
    }

    /* renamed from: a */
    public final List<C3225ho> m32826a() {
        Map<Long, C3225ho> map = this.f5428e;
        return map != null ? new ArrayList(map.values()) : Collections.emptyList();
    }

    /* renamed from: b */
    public final boolean m32820b() {
        boolean z;
        synchronized (this) {
            z = this.f5433k.intValue() >= this.f5432j;
        }
        return z;
    }

    /* renamed from: c */
    public final void m32817c() {
        synchronized (this) {
            this.f5433k.incrementAndGet();
        }
    }

    /* renamed from: d */
    public final byte[] m32815d() throws IOException {
        DataOutputStream dataOutputStream;
        Throwable th;
        IOException e;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream = dataOutputStream;
            try {
                try {
                    dataOutputStream.writeShort(this.f5425b.f5453e);
                    dataOutputStream.writeLong(this.f5424a);
                    dataOutputStream.writeLong(this.f5430h);
                    dataOutputStream.writeBoolean(this.f5431i);
                    if (this.f5431i) {
                        dataOutputStream.writeShort(this.f5426c);
                        dataOutputStream.writeUTF(this.f5427d);
                    }
                    dataOutputStream.writeShort(this.f5428e.size());
                    if (this.f5428e != null) {
                        for (Map.Entry<Long, C3225ho> entry : this.f5428e.entrySet()) {
                            C3225ho value = entry.getValue();
                            dataOutputStream.writeLong(entry.getKey().longValue());
                            dataOutputStream.writeUTF(value.f5800r);
                            dataOutputStream.writeShort(value.f5383f.size());
                            Iterator<C3229hp> it = value.f5383f.iterator();
                            while (it.hasNext()) {
                                C3229hp next = it.next();
                                dataOutputStream.writeShort(next.f5392a);
                                dataOutputStream.writeLong(next.f5393b);
                                dataOutputStream.writeLong(next.f5394c);
                                dataOutputStream.writeBoolean(next.f5395d);
                                dataOutputStream.writeShort(next.f5396e);
                                dataOutputStream.writeShort(next.f5397f.f5409e);
                                if ((next.f5396e < 200 || next.f5396e >= 400) && next.f5398g != null) {
                                    byte[] bytes = next.f5398g.getBytes();
                                    dataOutputStream.writeShort(bytes.length);
                                    dataOutputStream.write(bytes);
                                }
                                dataOutputStream.writeShort(next.f5399h);
                                dataOutputStream.writeInt((int) next.f5402k);
                            }
                        }
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    C3445la.m32465a(dataOutputStream);
                    return byteArray;
                } catch (IOException e2) {
                    e = e2;
                    C3356jq.m32614a(6, f5423f, "Error when generating report", e);
                    throw e;
                }
            } catch (Throwable th2) {
                th = th2;
                C3445la.m32465a(dataOutputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            dataOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = null;
            C3445la.m32465a(dataOutputStream);
            throw th;
        }
    }
}
