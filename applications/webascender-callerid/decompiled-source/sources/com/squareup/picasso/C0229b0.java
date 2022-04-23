package com.squareup.picasso;

import java.io.PrintWriter;
/* renamed from: com.squareup.picasso.b0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/b0.class */
public class C0229b0 {

    /* renamed from: a */
    public final int f423a;

    /* renamed from: b */
    public final int f424b;

    /* renamed from: c */
    public final long f425c;

    /* renamed from: d */
    public final long f426d;

    /* renamed from: e */
    public final long f427e;

    /* renamed from: f */
    public final long f428f;

    /* renamed from: g */
    public final long f429g;

    /* renamed from: h */
    public final long f430h;

    /* renamed from: i */
    public final long f431i;

    /* renamed from: j */
    public final long f432j;

    /* renamed from: k */
    public final int f433k;

    /* renamed from: l */
    public final int f434l;

    /* renamed from: m */
    public final int f435m;

    /* renamed from: n */
    public final long f436n;

    public C0229b0(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f423a = i;
        this.f424b = i2;
        this.f425c = j;
        this.f426d = j2;
        this.f427e = j3;
        this.f428f = j4;
        this.f429g = j5;
        this.f430h = j6;
        this.f431i = j7;
        this.f432j = j8;
        this.f433k = i3;
        this.f434l = i4;
        this.f435m = i5;
        this.f436n = j9;
    }

    /* renamed from: a */
    public void m748a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f423a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f424b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f424b / this.f423a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f425c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f426d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f433k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f427e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f430h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f434l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f428f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f435m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f429g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f431i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f432j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f423a + ", size=" + this.f424b + ", cacheHits=" + this.f425c + ", cacheMisses=" + this.f426d + ", downloadCount=" + this.f433k + ", totalDownloadSize=" + this.f427e + ", averageDownloadSize=" + this.f430h + ", totalOriginalBitmapSize=" + this.f428f + ", totalTransformedBitmapSize=" + this.f429g + ", averageOriginalBitmapSize=" + this.f431i + ", averageTransformedBitmapSize=" + this.f432j + ", originalBitmapCount=" + this.f434l + ", transformedBitmapCount=" + this.f435m + ", timeStamp=" + this.f436n + '}';
    }
}
