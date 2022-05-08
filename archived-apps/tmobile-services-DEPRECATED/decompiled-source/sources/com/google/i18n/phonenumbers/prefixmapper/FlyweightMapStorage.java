package com.google.i18n.phonenumbers.prefixmapper;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage.class */
final class FlyweightMapStorage extends PhonePrefixMapStorageStrategy {

    /* renamed from: c */
    private int f12394c;

    /* renamed from: d */
    private int f12395d;

    /* renamed from: e */
    private ByteBuffer f12396e;

    /* renamed from: f */
    private ByteBuffer f12397f;

    /* renamed from: g */
    private String[] f12398g;

    /* renamed from: g */
    private void m7865g(ObjectInput objectInput) throws IOException {
        this.f12405a = objectInput.readInt();
        ByteBuffer byteBuffer = this.f12396e;
        if (byteBuffer == null || byteBuffer.capacity() < this.f12405a) {
            this.f12396e = ByteBuffer.allocate(this.f12405a * this.f12394c);
        }
        ByteBuffer byteBuffer2 = this.f12397f;
        if (byteBuffer2 == null || byteBuffer2.capacity() < this.f12405a) {
            this.f12397f = ByteBuffer.allocate(this.f12405a * this.f12395d);
        }
        for (int i = 0; i < this.f12405a; i++) {
            m7864h(objectInput, this.f12394c, this.f12396e, i);
            m7864h(objectInput, this.f12395d, this.f12397f, i);
        }
    }

    /* renamed from: h */
    private static void m7864h(ObjectInput objectInput, int i, ByteBuffer byteBuffer, int i2) throws IOException {
        int i3 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i3, objectInput.readShort());
        } else {
            byteBuffer.putInt(i3, objectInput.readInt());
        }
    }

    /* renamed from: i */
    private static int m7863i(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 * i;
        return i == 2 ? byteBuffer.getShort(i3) : byteBuffer.getInt(i3);
    }

    /* renamed from: j */
    private static void m7862j(ObjectOutput objectOutput, int i, ByteBuffer byteBuffer, int i2) throws IOException {
        int i3 = i2 * i;
        if (i == 2) {
            objectOutput.writeShort(byteBuffer.getShort(i3));
        } else {
            objectOutput.writeInt(byteBuffer.getInt(i3));
        }
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: a */
    public String mo7853a(int i) {
        return this.f12398g[m7863i(this.f12397f, this.f12395d, i)];
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: d */
    public int mo7850d(int i) {
        return m7863i(this.f12396e, this.f12394c, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005d, code lost:
        if (r0.length < r0) goto L_0x0060;
     */
    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7849e(java.io.ObjectInput r5) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.f12394c = r1
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.f12395d = r1
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.f12406b
            r0.clear()
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0027:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L_0x0044
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.f12406b
            r1 = r5
            int r1 = r1.readInt()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r8 = r8 + 1
            goto L_0x0027
        L_0x0044:
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.lang.String[] r0 = r0.f12398g
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0060
            r0 = r7
            r8 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r6
            if (r0 >= r1) goto L_0x006b
        L_0x0060:
            r0 = r4
            r1 = r6
            java.lang.String[] r1 = new java.lang.String[r1]
            r0.f12398g = r1
            r0 = r7
            r8 = r0
        L_0x006b:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L_0x0088
            r0 = r5
            java.lang.String r0 = r0.readUTF()
            r9 = r0
            r0 = r4
            java.lang.String[] r0 = r0.f12398g
            r1 = r8
            r2 = r9
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x006b
        L_0x0088:
            r0 = r4
            r1 = r5
            r0.m7865g(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.prefixmapper.FlyweightMapStorage.mo7849e(java.io.ObjectInput):void");
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: f */
    public void mo7848f(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f12394c);
        objectOutput.writeInt(this.f12395d);
        objectOutput.writeInt(this.f12406b.size());
        Iterator<Integer> it = this.f12406b.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
        objectOutput.writeInt(this.f12398g.length);
        for (String str : this.f12398g) {
            objectOutput.writeUTF(str);
        }
        objectOutput.writeInt(this.f12405a);
        for (int i = 0; i < this.f12405a; i++) {
            m7862j(objectOutput, this.f12394c, this.f12396e, i);
            m7862j(objectOutput, this.f12395d, this.f12397f, i);
        }
    }
}
