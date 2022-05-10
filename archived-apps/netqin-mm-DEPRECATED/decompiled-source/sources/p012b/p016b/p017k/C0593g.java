package p012b.p016b.p017k;
/* renamed from: b.b.k.g */
/* loaded from: classes-dex2jar.jar:b/b/k/g.class */
public class C0593g {

    /* renamed from: d */
    public static C0593g f2948d;

    /* renamed from: a */
    public long f2949a;

    /* renamed from: b */
    public long f2950b;

    /* renamed from: c */
    public int f2951c;

    /* renamed from: a */
    public static C0593g m36823a() {
        if (f2948d == null) {
            f2948d = new C0593g();
        }
        return f2948d;
    }

    /* renamed from: a */
    public void m36822a(long j, double d, double d2) {
        float f;
        float f2 = ((float) (j - 946728000000L)) / 8.64E7f;
        double d3 = (0.01720197f * f2) + 6.24006f;
        double sin = Math.sin(d3);
        Double.isNaN(d3);
        double sin2 = (sin * 0.03341960161924362d) + d3 + (Math.sin(2.0f * f) * 3.4906598739326E-4d) + (Math.sin(f * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double d4 = (-d2) / 360.0d;
        double d5 = f2 - 9.0E-4f;
        Double.isNaN(d5);
        double round = ((float) Math.round(d5 - d4)) + 9.0E-4f;
        Double.isNaN(round);
        double sin3 = round + d4 + (Math.sin(d3) * 0.0053d) + (Math.sin(2.0d * sin2) * (-0.0069d));
        double asin = Math.asin(Math.sin(sin2) * Math.sin(0.4092797040939331d));
        double d6 = 0.01745329238474369d * d;
        double sin4 = (Math.sin(-0.10471975803375244d) - (Math.sin(d6) * Math.sin(asin))) / (Math.cos(d6) * Math.cos(asin));
        if (sin4 >= 1.0d) {
            this.f2951c = 1;
            this.f2949a = -1L;
            this.f2950b = -1L;
        } else if (sin4 <= -1.0d) {
            this.f2951c = 0;
            this.f2949a = -1L;
            this.f2950b = -1L;
        } else {
            double acos = (float) (Math.acos(sin4) / 6.283185307179586d);
            Double.isNaN(acos);
            this.f2949a = Math.round((sin3 + acos) * 8.64E7d) + 946728000000L;
            Double.isNaN(acos);
            long round2 = Math.round((sin3 - acos) * 8.64E7d) + 946728000000L;
            this.f2950b = round2;
            if (round2 >= j || this.f2949a <= j) {
                this.f2951c = 1;
            } else {
                this.f2951c = 0;
            }
        }
    }
}
