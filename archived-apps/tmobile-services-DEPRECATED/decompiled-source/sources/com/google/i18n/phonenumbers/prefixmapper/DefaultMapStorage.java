package com.google.i18n.phonenumbers.prefixmapper;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage.class */
class DefaultMapStorage extends PhonePrefixMapStorageStrategy {

    /* renamed from: c */
    private int[] f12392c;

    /* renamed from: d */
    private String[] f12393d;

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: a */
    public String mo7853a(int i) {
        return this.f12393d[i];
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: d */
    public int mo7850d(int i) {
        return this.f12392c[i];
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: e */
    public void mo7849e(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        this.f12405a = readInt;
        int[] iArr = this.f12392c;
        if (iArr == null || iArr.length < readInt) {
            this.f12392c = new int[this.f12405a];
        }
        String[] strArr = this.f12393d;
        if (strArr == null || strArr.length < this.f12405a) {
            this.f12393d = new String[this.f12405a];
        }
        for (int i = 0; i < this.f12405a; i++) {
            this.f12392c[i] = objectInput.readInt();
            this.f12393d[i] = objectInput.readUTF();
        }
        int readInt2 = objectInput.readInt();
        this.f12406b.clear();
        for (int i2 = 0; i2 < readInt2; i2++) {
            this.f12406b.add(Integer.valueOf(objectInput.readInt()));
        }
    }

    @Override // com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMapStorageStrategy
    /* renamed from: f */
    public void mo7848f(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f12405a);
        for (int i = 0; i < this.f12405a; i++) {
            objectOutput.writeInt(this.f12392c[i]);
            objectOutput.writeUTF(this.f12393d[i]);
        }
        objectOutput.writeInt(this.f12406b.size());
        Iterator<Integer> it = this.f12406b.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
    }
}
