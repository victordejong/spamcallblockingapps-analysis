.class public Le/c/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:Z = false

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Le/c/a/a/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-boolean v1, Le/c/a/a/a;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2
    new-instance v1, Le/c/a/a/b/a;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Le/c/a/a/b/a;-><init>(Landroid/content/Context;Le/c/a/a/b/b;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p3}, Le/c/a/a/b/a;->a(Ljava/lang/Exception;)Le/c/a/a/b/a;

    if-eqz p2, :cond_1

    .line 4
    iput-object p2, v1, Le/c/a/a/b/a;->j:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-static {v1}, Le/c/a/a/a;->b(Le/c/a/a/b/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static b(Le/c/a/a/b/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/a/b/a;->d:Le/c/a/a/b/b;

    .line 2
    sget-object v1, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    if-ne v0, v1, :cond_2

    .line 3
    sget-object v0, Le/c/a/a/a;->a:Landroid/content/Context;

    .line 4
    sget-object v2, Le/c/a/a/c/b;->d:Le/c/a/a/c/b;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Le/c/a/a/c/b;

    invoke-direct {v2, v0}, Le/c/a/a/c/b;-><init>(Landroid/content/Context;)V

    sput-object v2, Le/c/a/a/c/b;->d:Le/c/a/a/c/b;

    .line 6
    :cond_0
    sget-object v0, Le/c/a/a/c/b;->d:Le/c/a/a/c/b;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Le/c/a/a/b/a;->d:Le/c/a/a/b/b;

    if-ne v2, v1, :cond_2

    .line 9
    new-instance v1, Le/c/a/a/c/a;

    invoke-direct {v1, v0, p0}, Le/c/a/a/c/a;-><init>(Le/c/a/a/c/b;Le/c/a/a/b/a;)V

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean p0, v0, Le/c/a/a/c/b;->a:Z

    if-nez p0, :cond_1

    .line 12
    iget-object p0, v0, Le/c/a/a/c/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 13
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/InternalError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "shutdown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catch_1
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public static c(I)V
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    :cond_0
    move p0, v1

    .line 1
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 2
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    if-gt v0, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3
    :goto_0
    sput-boolean v1, Le/c/a/a/a;->b:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
