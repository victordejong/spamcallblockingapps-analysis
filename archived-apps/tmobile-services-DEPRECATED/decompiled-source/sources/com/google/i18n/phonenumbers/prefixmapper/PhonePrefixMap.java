package com.google.i18n.phonenumbers.prefixmapper;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.SortedSet;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap.class */
public class PhonePrefixMap implements Externalizable {

    /* renamed from: f */
    private final PhoneNumberUtil f12403f = PhoneNumberUtil.m7999t();

    /* renamed from: g */
    private PhonePrefixMapStorageStrategy f12404g;

    static {
        Logger.getLogger(PhonePrefixMap.class.getName());
    }

    /* renamed from: a */
    private int m7856a(int i, int i2, long j) {
        int i3 = 0;
        int i4 = i;
        while (i4 <= i2) {
            i3 = (i4 + i2) >>> 1;
            int i5 = (this.f12404g.mo7850d(i3) > j ? 1 : (this.f12404g.mo7850d(i3) == j ? 0 : -1));
            if (i5 == 0) {
                return i3;
            }
            if (i5 > 0) {
                i3--;
                i2 = i3;
            } else {
                i4 = i3 + 1;
            }
        }
        return i3;
    }

    /* renamed from: b */
    String m7855b(long j) {
        int b = this.f12404g.m7852b();
        if (b == 0) {
            return null;
        }
        int i = b - 1;
        SortedSet c = this.f12404g.m7851c();
        while (c.size() > 0) {
            Integer num = (Integer) c.last();
            String valueOf = String.valueOf(j);
            if (valueOf.length() > num.intValue()) {
                j = Long.parseLong(valueOf.substring(0, num.intValue()));
            }
            i = m7856a(0, i, j);
            if (i < 0) {
                return null;
            }
            if (j == this.f12404g.mo7850d(i)) {
                return this.f12404g.mo7853a(i);
            }
            c = c.headSet(num);
        }
        return null;
    }

    /* renamed from: c */
    public String m7854c(Phonenumber.PhoneNumber phoneNumber) {
        return m7855b(Long.parseLong(phoneNumber.m7902e() + this.f12403f.m7995x(phoneNumber)));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        if (objectInput.readBoolean()) {
            this.f12404g = new FlyweightMapStorage();
        } else {
            this.f12404g = new DefaultMapStorage();
        }
        this.f12404g.mo7849e(objectInput);
    }

    public String toString() {
        return this.f12404g.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeBoolean(this.f12404g instanceof FlyweightMapStorage);
        this.f12404g.mo7848f(objectOutput);
    }
}
