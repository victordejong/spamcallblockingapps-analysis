package com.squareup.picasso;

import java.io.PrintWriter;
/* renamed from: com.squareup.picasso.b0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/b0.class */
public class C0174b0 {

    /* renamed from: a */
    public final int f308a;

    /* renamed from: b */
    public final int f309b;

    /* renamed from: c */
    public final long f310c;

    /* renamed from: d */
    public final long f311d;

    /* renamed from: e */
    public final long f312e;

    /* renamed from: f */
    public final long f313f;

    /* renamed from: g */
    public final long f314g;

    /* renamed from: h */
    public final long f315h;

    /* renamed from: i */
    public final long f316i;

    /* renamed from: j */
    public final long f317j;

    /* renamed from: k */
    public final int f318k;

    /* renamed from: l */
    public final int f319l;

    /* renamed from: m */
    public final int f320m;

    /* renamed from: n */
    public final long f321n;

    public C0174b0(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f308a = i;
        this.f309b = i2;
        this.f310c = j;
        this.f311d = j2;
        this.f312e = j3;
        this.f313f = j4;
        this.f314g = j5;
        this.f315h = j6;
        this.f316i = j7;
        this.f317j = j8;
        this.f318k = i3;
        this.f319l = i4;
        this.f320m = i5;
        this.f321n = j9;
    }

    /* renamed from: a */
    public void m827a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f308a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f309b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f309b / this.f308a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f310c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f311d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f318k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f312e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f315h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f319l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f313f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f320m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f314g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f316i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f317j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f308a + ", size=" + this.f309b + ", cacheHits=" + this.f310c + ", cacheMisses=" + this.f311d + ", downloadCount=" + this.f318k + ", totalDownloadSize=" + this.f312e + ", averageDownloadSize=" + this.f315h + ", totalOriginalBitmapSize=" + this.f313f + ", totalTransformedBitmapSize=" + this.f314g + ", averageOriginalBitmapSize=" + this.f316i + ", averageTransformedBitmapSize=" + this.f317j + ", originalBitmapCount=" + this.f319l + ", transformedBitmapCount=" + this.f320m + ", timeStamp=" + this.f321n + '}';
    }
}
