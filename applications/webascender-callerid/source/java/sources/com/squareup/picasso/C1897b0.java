package com.squareup.picasso;

import java.io.PrintWriter;
/* renamed from: com.squareup.picasso.b0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/b0.class */
public class C1897b0 {

    /* renamed from: a */
    public final int f5102a;

    /* renamed from: b */
    public final int f5103b;

    /* renamed from: c */
    public final long f5104c;

    /* renamed from: d */
    public final long f5105d;

    /* renamed from: e */
    public final long f5106e;

    /* renamed from: f */
    public final long f5107f;

    /* renamed from: g */
    public final long f5108g;

    /* renamed from: h */
    public final long f5109h;

    /* renamed from: i */
    public final long f5110i;

    /* renamed from: j */
    public final long f5111j;

    /* renamed from: k */
    public final int f5112k;

    /* renamed from: l */
    public final int f5113l;

    /* renamed from: m */
    public final int f5114m;

    /* renamed from: n */
    public final long f5115n;

    public C1897b0(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f5102a = i;
        this.f5103b = i2;
        this.f5104c = j;
        this.f5105d = j2;
        this.f5106e = j3;
        this.f5107f = j4;
        this.f5108g = j5;
        this.f5109h = j6;
        this.f5110i = j7;
        this.f5111j = j8;
        this.f5112k = i3;
        this.f5113l = i4;
        this.f5114m = i5;
        this.f5115n = j9;
    }

    /* renamed from: a */
    public void m748a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f5102a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f5103b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f5103b / this.f5102a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f5104c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f5105d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f5112k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f5106e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f5109h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f5113l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f5107f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f5114m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f5108g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f5110i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f5111j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f5102a + ", size=" + this.f5103b + ", cacheHits=" + this.f5104c + ", cacheMisses=" + this.f5105d + ", downloadCount=" + this.f5112k + ", totalDownloadSize=" + this.f5106e + ", averageDownloadSize=" + this.f5109h + ", totalOriginalBitmapSize=" + this.f5107f + ", totalTransformedBitmapSize=" + this.f5108g + ", averageOriginalBitmapSize=" + this.f5110i + ", averageTransformedBitmapSize=" + this.f5111j + ", originalBitmapCount=" + this.f5113l + ", transformedBitmapCount=" + this.f5114m + ", timeStamp=" + this.f5115n + '}';
    }
}
