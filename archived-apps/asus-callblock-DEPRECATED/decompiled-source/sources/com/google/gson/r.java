package com.google.gson;

import com.google.gson.a.f;
import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/google/gson/r.class */
public final class r extends l {

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?>[] f4555b = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* renamed from: a  reason: collision with root package name */
    public Object f4556a;

    public r(Boolean bool) {
        a(bool);
    }

    public r(Number number) {
        a(number);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(Object obj) {
        a(obj);
    }

    public r(String str) {
        a(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        if (r6 != false) goto L_0x002c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Character
            if (r0 == 0) goto L_0x0018
            r0 = r3
            r1 = r4
            java.lang.Character r1 = (java.lang.Character) r1
            char r1 = r1.charValue()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r0.f4556a = r1
        L_0x0017:
            return
        L_0x0018:
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 != 0) goto L_0x002c
            r0 = r4
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L_0x003a
            r0 = 1
            r6 = r0
        L_0x0028:
            r0 = r6
            if (r0 == 0) goto L_0x002e
        L_0x002c:
            r0 = 1
            r5 = r0
        L_0x002e:
            r0 = r5
            com.google.gson.a.a.a(r0)
            r0 = r3
            r1 = r4
            r0.f4556a = r1
            goto L_0x0017
        L_0x003a:
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r7 = r0
            java.lang.Class<?>[] r0 = com.google.gson.r.f4555b
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r6 = r0
        L_0x004c:
            r0 = r6
            r1 = r9
            if (r0 >= r1) goto L_0x0069
            r0 = r8
            r1 = r6
            r0 = r0[r1]
            r1 = r7
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L_0x0063
            r0 = 1
            r6 = r0
            goto L_0x0028
        L_0x0063:
            int r6 = r6 + 1
            goto L_0x004c
        L_0x0069:
            r0 = 0
            r6 = r0
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.r.a(java.lang.Object):void");
    }

    private static boolean a(r rVar) {
        boolean z;
        if (rVar.f4556a instanceof Number) {
            Number number = (Number) rVar.f4556a;
            z = (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.google.gson.l
    public final Number a() {
        return this.f4556a instanceof String ? new f((String) this.f4556a) : (Number) this.f4556a;
    }

    @Override // com.google.gson.l
    public final String b() {
        return this.f4556a instanceof Number ? a().toString() : this.f4556a instanceof Boolean ? ((Boolean) this.f4556a).toString() : (String) this.f4556a;
    }

    @Override // com.google.gson.l
    public final double c() {
        return this.f4556a instanceof Number ? a().doubleValue() : Double.parseDouble(b());
    }

    @Override // com.google.gson.l
    public final long d() {
        return this.f4556a instanceof Number ? a().longValue() : Long.parseLong(b());
    }

    @Override // com.google.gson.l
    public final int e() {
        return this.f4556a instanceof Number ? a().intValue() : Integer.parseInt(b());
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x009f, code lost:
        if (java.lang.Double.isNaN(r0) == false) goto L_0x00a2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L_0x000b
            r0 = r7
            r8 = r0
        L_0x0009:
            r0 = r8
            return r0
        L_0x000b:
            r0 = r6
            if (r0 == 0) goto L_0x001a
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            r1 = r6
            java.lang.Class r1 = r1.getClass()
            if (r0 == r1) goto L_0x001f
        L_0x001a:
            r0 = 0
            r8 = r0
            goto L_0x0009
        L_0x001f:
            r0 = r6
            com.google.gson.r r0 = (com.google.gson.r) r0
            r6 = r0
            r0 = r5
            java.lang.Object r0 = r0.f4556a
            if (r0 != 0) goto L_0x0039
            r0 = r7
            r8 = r0
            r0 = r6
            java.lang.Object r0 = r0.f4556a
            if (r0 == 0) goto L_0x0009
            r0 = 0
            r8 = r0
            goto L_0x0009
        L_0x0039:
            r0 = r5
            boolean r0 = a(r0)
            if (r0 == 0) goto L_0x0060
            r0 = r6
            boolean r0 = a(r0)
            if (r0 == 0) goto L_0x0060
            r0 = r7
            r8 = r0
            r0 = r5
            java.lang.Number r0 = r0.a()
            long r0 = r0.longValue()
            r1 = r6
            java.lang.Number r1 = r1.a()
            long r1 = r1.longValue()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0009
            r0 = 0
            r8 = r0
            goto L_0x0009
        L_0x0060:
            r0 = r5
            java.lang.Object r0 = r0.f4556a
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x00a7
            r0 = r6
            java.lang.Object r0 = r0.f4556a
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x00a7
            r0 = r5
            java.lang.Number r0 = r0.a()
            double r0 = r0.doubleValue()
            r9 = r0
            r0 = r6
            java.lang.Number r0 = r0.a()
            double r0 = r0.doubleValue()
            r11 = r0
            r0 = r7
            r8 = r0
            r0 = r9
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0009
            r0 = r9
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 == 0) goto L_0x00a2
            r0 = r7
            r8 = r0
            r0 = r11
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 != 0) goto L_0x0009
        L_0x00a2:
            r0 = 0
            r8 = r0
            goto L_0x0009
        L_0x00a7:
            r0 = r5
            java.lang.Object r0 = r0.f4556a
            r1 = r6
            java.lang.Object r1 = r1.f4556a
            boolean r0 = r0.equals(r1)
            r8 = r0
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.r.equals(java.lang.Object):boolean");
    }

    @Override // com.google.gson.l
    public final boolean f() {
        return this.f4556a instanceof Boolean ? ((Boolean) this.f4556a).booleanValue() : Boolean.parseBoolean(b());
    }

    public final int hashCode() {
        int hashCode;
        if (this.f4556a == null) {
            hashCode = 31;
        } else if (a(this)) {
            long longValue = a().longValue();
            hashCode = (int) (longValue ^ (longValue >>> 32));
        } else if (this.f4556a instanceof Number) {
            long doubleToLongBits = Double.doubleToLongBits(a().doubleValue());
            hashCode = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        } else {
            hashCode = this.f4556a.hashCode();
        }
        return hashCode;
    }
}
