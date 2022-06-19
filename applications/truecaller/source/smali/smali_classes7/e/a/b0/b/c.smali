.class public final Le/a/b0/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field public static final b:Le/a/b0/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/b/c;

    invoke-direct {v0}, Le/a/b0/b/c;-><init>()V

    sput-object v0, Le/a/b0/b/c;->b:Le/a/b0/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Le/a/b0/b/c;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    sget-boolean v0, Le/a/b0/b/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/security/ProviderInstaller;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    :try_start_2
    sput-boolean v0, Le/a/b0/b/c;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6
    :try_start_3
    instance-of v1, p1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    if-eqz v1, :cond_2

    :goto_1
    goto :goto_0

    .line 8
    :cond_2
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :goto_2
    :try_start_4
    sput-boolean v0, Le/a/b0/b/c;->a:Z

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 10
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
