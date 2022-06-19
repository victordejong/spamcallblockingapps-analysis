.class public final Le/a/o5/a2/d;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/o5/a2/d;->c:Lo3/a;

    const-string p1, "ImageCacheOptimizingWorkAction"

    .line 2
    iput-object p1, p0, Le/a/o5/a2/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/o5/a2/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    sget-object v1, Le/a/o5/h0;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    const-string v4, "webviewCacheChromium"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/o5/h0;->a(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    add-long/2addr v3, v5

    .line 5
    new-instance v7, Ljava/io/File;

    const-string v8, "webviewCacheChromiumStaging"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/o5/h0;->a(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v7, v3

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7
    :try_start_1
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_3
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v10, v2

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v12, v2

    mul-long v9, v10, v12

    :goto_0
    cmp-long v2, v9, v5

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    new-array v11, v4, [Ljava/lang/String;

    .line 10
    invoke-static {v2, v11}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v9

    .line 11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get available space for path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v9, v5

    .line 12
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual {v2, v11, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 15
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2}, Le/a/o5/h0;->a(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    :try_start_5
    new-array v2, v4, [Ljava/lang/String;

    .line 16
    invoke-static {v4, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    move-wide v11, v5

    :goto_3
    cmp-long v2, v9, v5

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_4

    :cond_1
    move v2, v4

    :goto_4
    new-array v13, v4, [Ljava/lang/String;

    .line 17
    invoke-static {v2, v13}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    cmp-long v2, v11, v5

    if-ltz v2, :cond_2

    move v2, v3

    goto :goto_5

    :cond_2
    move v2, v4

    :goto_5
    new-array v13, v4, [Ljava/lang/String;

    .line 18
    invoke-static {v2, v13}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    add-long/2addr v9, v11

    long-to-float v2, v9

    const/high16 v9, 0x4bf00000    # 3.145728E7f

    sub-float/2addr v2, v9

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v9

    float-to-long v9, v2

    const-wide/32 v13, 0x3200000

    .line 19
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    cmp-long v2, v9, v5

    if-ltz v2, :cond_3

    move v2, v3

    goto :goto_6

    :cond_3
    move v2, v4

    :goto_6
    new-array v13, v4, [Ljava/lang/String;

    .line 20
    invoke-static {v2, v13}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    sub-long/2addr v11, v9

    cmp-long v2, v11, v5

    if-lez v2, :cond_4

    const-wide/32 v9, 0x700000

    cmp-long v2, v7, v9

    if-lez v2, :cond_4

    sub-long/2addr v11, v7

    move v2, v3

    move-wide v7, v5

    goto :goto_7

    :cond_4
    move v2, v4

    :goto_7
    cmp-long v9, v11, v5

    if-lez v9, :cond_5

    if-nez v2, :cond_5

    move v2, v3

    move-wide v7, v5

    :cond_5
    if-eqz v2, :cond_7

    cmp-long v5, v7, v5

    if-nez v5, :cond_6

    goto :goto_8

    :cond_6
    move v3, v4

    :cond_7
    :goto_8
    new-array v4, v4, [Ljava/lang/String;

    .line 21
    invoke-static {v3, v4}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    if-eqz v2, :cond_8

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 23
    new-instance v2, Ljava/io/File;

    const-string v3, "webviewCacheChromium"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/e/a2;->n(Ljava/io/File;)Z

    .line 24
    new-instance v2, Ljava/io/File;

    const-string v3, "webviewCacheChromiumStaging"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/e/a2;->n(Ljava/io/File;)Z

    .line 25
    :cond_8
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 26
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 27
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 28
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/a2/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
