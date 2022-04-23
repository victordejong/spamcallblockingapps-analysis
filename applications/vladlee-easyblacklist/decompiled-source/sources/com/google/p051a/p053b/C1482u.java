package com.google.p051a.p053b;

import java.math.BigDecimal;
/* renamed from: com.google.a.b.u */
/* loaded from: classes-dex2jar.jar:com/google/a/b/u.class */
public final class C1482u extends Number {

    /* renamed from: a */
    private final String f5673a;

    public C1482u(String str) {
        this.f5673a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f5673a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1482u)) {
            return false;
        }
        String str = this.f5673a;
        String str2 = ((C1482u) obj).f5673a;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f5673a);
    }

    public final int hashCode() {
        return this.f5673a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            return Integer.parseInt(this.f5673a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f5673a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f5673a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f5673a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f5673a).longValue();
        }
    }

    public final String toString() {
        return this.f5673a;
    }
}
