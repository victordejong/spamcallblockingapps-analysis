.class public Lcom/tenor/android/core/network/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/network/IApiService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenor/android/core/network/ApiService$Builder;,
        Lcom/tenor/android/core/network/ApiService$IBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tenor/android/core/network/IApiService<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mClient:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/network/ApiService$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tenor/android/core/network/ApiService$Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/tenor/android/core/network/ApiService;->create(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tenor/android/core/network/ApiService;->mClient:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$000(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenor/android/core/network/ApiService;->mApiKey:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$100(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService;->mEndpoint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized create(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tenor/android/core/network/ApiService$Builder<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$200(Lcom/tenor/android/core/network/ApiService$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/app/Application;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lu3/d;

    const-wide/32 v2, 0xa00000

    invoke-direct {v0, v1, v2, v3}, Lu3/d;-><init>(Ljava/io/File;J)V

    .line 6
    new-instance v1, Lu3/e0$a;

    invoke-direct {v1}, Lu3/e0$a;-><init>()V

    .line 7
    iput-object v0, v1, Lu3/e0$a;->k:Lu3/d;

    .line 8
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$300(Lcom/tenor/android/core/network/ApiService$Builder;)I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v4, "unit"

    .line 9
    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "timeout"

    .line 10
    invoke-static {v4, v2, v3, v0}, Lu3/p0/c;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, v1, Lu3/e0$a;->A:I

    .line 11
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$400(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/b0;

    .line 12
    invoke-virtual {v1, v2}, Lu3/e0$a;->a(Lu3/b0;)Lu3/e0$a;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lx3/b0$b;

    invoke-direct {v0}, Lx3/b0$b;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$100(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx3/b0$b;->a(Ljava/lang/String;)Lx3/b0$b;

    .line 15
    new-instance v2, Lu3/e0;

    invoke-direct {v2, v1}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 16
    invoke-virtual {v0, v2}, Lx3/b0$b;->d(Lu3/e0;)Lx3/b0$b;

    .line 17
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$500(Lcom/tenor/android/core/network/ApiService$Builder;)Le/m/e/k;

    move-result-object v1

    invoke-static {v1}, Lx3/g0/a/a;->d(Le/m/e/k;)Lx3/g0/a/a;

    move-result-object v1

    .line 18
    iget-object v2, v0, Lx3/b0$b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0}, Lx3/b0$b;->c()Lx3/b0;

    move-result-object v0

    .line 20
    invoke-static {p1}, Lcom/tenor/android/core/network/ApiService$Builder;->access$600(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx3/b0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tenor/android/core/network/ApiService;->mClient:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/network/ApiService;->mApiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tenor/android/core/network/ApiService;->mApiKey:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API key cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/network/ApiService;->mEndpoint:Ljava/lang/String;

    return-object v0
.end method
