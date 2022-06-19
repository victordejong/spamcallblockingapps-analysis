.class public Lcom/appnext/base/moments/operations/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile cq:Lcom/appnext/base/moments/operations/b;


# instance fields
.field private cr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appnext/base/moments/operations/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/moments/operations/b;->cr:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/appnext/base/moments/a/a/c;)Lcom/appnext/base/moments/operations/a;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.appnext.base.moments.operations.imp."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    const-class v4, Lcom/appnext/base/moments/a/a/c;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    instance-of v1, p0, Lcom/appnext/base/moments/operations/a;

    if-eqz v1, :cond_1

    .line 7
    check-cast p0, Lcom/appnext/base/moments/operations/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static aj()Lcom/appnext/base/moments/operations/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/base/moments/operations/b;->cq:Lcom/appnext/base/moments/operations/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/base/moments/operations/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/base/moments/operations/b;->cq:Lcom/appnext/base/moments/operations/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/base/moments/operations/b;

    invoke-direct {v1}, Lcom/appnext/base/moments/operations/b;-><init>()V

    sput-object v1, Lcom/appnext/base/moments/operations/b;->cq:Lcom/appnext/base/moments/operations/b;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/base/moments/operations/b;->cq:Lcom/appnext/base/moments/operations/b;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/appnext/base/moments/a/a/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/appnext/base/moments/operations/b;->a(Lcom/appnext/base/moments/a/a/c;)Lcom/appnext/base/moments/operations/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/appnext/base/moments/operations/b;->cr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/c;->ad()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_lastupdate"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/appnext/base/b/b;->b(Ljava/lang/String;J)V

    const/4 p1, 0x0

    .line 6
    throw p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "OperationsManager$startOperation"

    .line 8
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lcom/appnext/base/moments/a/a/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/appnext/base/moments/operations/b;->a(Lcom/appnext/base/moments/a/a/c;)Lcom/appnext/base/moments/operations/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "OperationsManager$cancelOperation"

    .line 2
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
