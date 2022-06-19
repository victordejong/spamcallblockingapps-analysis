.class public final Le/f/a/n/o/c0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/o/c0/j$b;,
        Le/f/a/n/o/c0/j$a;,
        Le/f/a/n/o/c0/j$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/content/Context;

.field public final d:I


# direct methods
.method public constructor <init>(Le/f/a/n/o/c0/j$a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Le/f/a/n/o/c0/j$a;->a:Landroid/content/Context;

    iput-object v0, p0, Le/f/a/n/o/c0/j;->c:Landroid/content/Context;

    .line 3
    iget-object v0, p1, Le/f/a/n/o/c0/j$a;->b:Landroid/app/ActivityManager;

    .line 4
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x200000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x400000

    .line 5
    :goto_0
    iput v0, p0, Le/f/a/n/o/c0/j;->d:I

    .line 6
    iget-object v1, p1, Le/f/a/n/o/c0/j$a;->b:Landroid/app/ActivityManager;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3ea8f5c3    # 0.33f

    .line 7
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    mul-int/lit16 v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x400

    .line 8
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    int-to-float v4, v4

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    mul-float/2addr v4, v2

    .line 9
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 10
    iget-object v2, p1, Le/f/a/n/o/c0/j$a;->c:Le/f/a/n/o/c0/j$c;

    check-cast v2, Le/f/a/n/o/c0/j$b;

    .line 11
    iget-object v2, v2, Le/f/a/n/o/c0/j$b;->a:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x4

    int-to-float v2, v3

    .line 13
    iget v3, p1, Le/f/a/n/o/c0/j$a;->d:F

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v5, v1, v0

    add-int v6, v2, v3

    if-gt v6, v5, :cond_2

    .line 15
    iput v2, p0, Le/f/a/n/o/c0/j;->b:I

    .line 16
    iput v3, p0, Le/f/a/n/o/c0/j;->a:I

    goto :goto_1

    :cond_2
    int-to-float v2, v5

    .line 17
    iget v3, p1, Le/f/a/n/o/c0/j$a;->d:F

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v4, v2

    .line 18
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Le/f/a/n/o/c0/j;->b:I

    .line 19
    iget v3, p1, Le/f/a/n/o/c0/j$a;->d:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Le/f/a/n/o/c0/j;->a:I

    :goto_1
    const/4 v2, 0x3

    const-string v3, "MemorySizeCalculator"

    .line 20
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    iget v2, p0, Le/f/a/n/o/c0/j;->b:I

    .line 22
    invoke-virtual {p0, v2}, Le/f/a/n/o/c0/j;->a(I)Ljava/lang/String;

    iget v2, p0, Le/f/a/n/o/c0/j;->a:I

    .line 23
    invoke-virtual {p0, v2}, Le/f/a/n/o/c0/j;->a(I)Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v0}, Le/f/a/n/o/c0/j;->a(I)Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v1}, Le/f/a/n/o/c0/j;->a(I)Ljava/lang/String;

    iget-object v0, p1, Le/f/a/n/o/c0/j$a;->b:Landroid/app/ActivityManager;

    .line 26
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    iget-object p1, p1, Le/f/a/n/o/c0/j$a;->b:Landroid/app/ActivityManager;

    .line 27
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/n/o/c0/j;->c:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
