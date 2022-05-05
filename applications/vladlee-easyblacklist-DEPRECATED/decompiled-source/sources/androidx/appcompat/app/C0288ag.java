package androidx.appcompat.app;
/* renamed from: androidx.appcompat.app.ag */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ag.class */
final class C0288ag {

    /* renamed from: d */
    private static C0288ag f1243d;

    /* renamed from: a */
    public long f1244a;

    /* renamed from: b */
    public long f1245b;

    /* renamed from: c */
    public int f1246c;

    C0288ag() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0288ag m9845a() {
        if (f1243d == null) {
            f1243d = new C0288ag();
        }
        return f1243d;
    }

    /* renamed from: a */
    public final void m9844a(long j, double d, double d2) {
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
            this.f1246c = 1;
        } else if (sin2 <= -1.0d) {
            this.f1246c = 0;
        } else {
            double acos = (float) (Math.acos(sin2) / 6.283185307179586d);
            this.f1244a = Math.round((round + acos) * 8.64E7d) + 946728000000L;
            this.f1245b = Math.round((round - acos) * 8.64E7d) + 946728000000L;
            if (this.f1245b >= j || this.f1244a <= j) {
                this.f1246c = 1;
                return;
            } else {
                this.f1246c = 0;
                return;
            }
        }
        this.f1244a = -1L;
        this.f1245b = -1L;
    }
}
