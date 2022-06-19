.class public final Le/a/d4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d4/c;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d4/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Le/a/d4/e;II)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 3
    iget-object v0, p0, Le/a/d4/d;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->b(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object v0, p0, Le/a/d4/d;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getErrPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public b(Le/a/d4/e;)I
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 3
    iget-object v0, p0, Le/a/d4/d;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->d(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object v0, p0, Le/a/d4/d;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileNoticeAvailable(Landroid/content/Context;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public c()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Le/a/d4/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/d4/e;

    .line 1
    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->k3([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/d4/d$b;

    invoke-direct {v1, p0}, Le/a/d4/d$b;-><init>(Le/a/d4/d;)V

    invoke-static {v0, v1}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 3
    new-instance v1, Le/a/d4/d$a;

    invoke-direct {v1}, Le/a/d4/d$a;-><init>()V

    const-string v2, "$this$toSortedSet"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "comparator"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0, v2}, Ls1/e0/x;->q(Ls1/e0/k;Ljava/util/Collection;)Ljava/util/Collection;

    return-object v2
.end method

.method public d(Le/a/d4/e;)Z
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/d4/d;->b(Le/a/d4/e;)I

    move-result v0

    invoke-virtual {p1, v0}, Le/a/d4/e;->a(I)Z

    move-result p1

    return p1
.end method

.method public e()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Le/a/d4/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/d4/e;

    .line 1
    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->k3([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/d4/d$d;

    invoke-direct {v1, p0}, Le/a/d4/d$d;-><init>(Le/a/d4/d;)V

    invoke-static {v0, v1}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 3
    new-instance v1, Le/a/d4/d$c;

    invoke-direct {v1}, Le/a/d4/d$c;-><init>()V

    const-string v2, "$this$toSortedSet"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "comparator"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0, v2}, Ls1/e0/x;->q(Ls1/e0/k;Ljava/util/Collection;)Ljava/util/Collection;

    return-object v2
.end method

.method public f(Le/a/d4/e;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.google.android.gms"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.huawei.hwid"

    :goto_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/a/d4/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
