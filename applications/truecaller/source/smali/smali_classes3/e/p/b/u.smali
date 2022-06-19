.class public final Le/p/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/b/j;


# instance fields
.field public final a:Lu3/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-object v0, Le/p/b/f0;->a:Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "picasso-cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/32 v1, 0x500000

    .line 5
    :try_start_0
    new-instance p1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    .line 7
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x32

    .line 8
    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0x3200000

    .line 9
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 10
    new-instance p1, Lu3/e0$a;

    invoke-direct {p1}, Lu3/e0$a;-><init>()V

    new-instance v3, Lu3/d;

    invoke-direct {v3, v0, v1, v2}, Lu3/d;-><init>(Ljava/io/File;J)V

    .line 11
    iput-object v3, p1, Lu3/e0$a;->k:Lu3/d;

    .line 12
    new-instance v0, Lu3/e0;

    invoke-direct {v0, p1}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Le/p/b/u;->a:Lu3/f$a;

    return-void
.end method
