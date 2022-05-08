package com.google.i18n.phonenumbers.prefixmapper;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap.class */
public class PrefixTimeZonesMap implements Externalizable {

    /* renamed from: f */
    private final PhonePrefixMap f12411f = new PhonePrefixMap();

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        this.f12411f.readExternal(objectInput);
    }

    public String toString() {
        return this.f12411f.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        this.f12411f.writeExternal(objectOutput);
    }
}
