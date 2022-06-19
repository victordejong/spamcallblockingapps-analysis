package androidx.appcompat.app;
/* renamed from: androidx.appcompat.app.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/k.class */
class C0073k {

    /* renamed from: d */
    private static C0073k f257d;

    /* renamed from: a */
    public long f258a;

    /* renamed from: b */
    public long f259b;

    /* renamed from: c */
    public int f260c;

    C0073k() {
    }

    /* renamed from: b */
    public static C0073k m6797b() {
        if (f257d == null) {
            f257d = new C0073k();
        }
        return f257d;
    }

    /* renamed from: a */
    public void m6798a(long j, double d, double d2) {
        float f;
        float f2;
        double d3;
        double d4 = (0.01720197f * (((float) (j - 946728000000L)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(d4) * 0.03341960161924362d) + d4 + (Math.sin(2.0f * f2) * 3.4906598739326E-4d) + (Math.sin(f2 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double round = ((float) Math.round((f - 9.0E-4f) - d3)) + 9.0E-4f + ((-d2) / 360.0d) + (Math.sin(d4) * 0.0053d) + (Math.sin(2.0d * sin) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d5 = 0.01745329238474369d * d;
        double sin2 = (Math.sin(-0.10471975803375244d) - (Math.sin(d5) * Math.sin(asin))) / (Math.cos(d5) * Math.cos(asin));
        if (sin2 >= 1.0d) {
            this.f260c = 1;
            this.f258a = -1L;
            this.f259b = -1L;
        } else if (sin2 <= -1.0d) {
            this.f260c = 0;
            this.f258a = -1L;
            this.f259b = -1L;
        } else {
            double acos = (float) (Math.acos(sin2) / 6.283185307179586d);
            this.f258a = Math.round((round + acos) * 8.64E7d) + 946728000000L;
            long round2 = Math.round((round - acos) * 8.64E7d) + 946728000000L;
            this.f259b = round2;
            if (round2 >= j || this.f258a <= j) {
                this.f260c = 1;
            } else {
                this.f260c = 0;
            }
        }
    }
}
