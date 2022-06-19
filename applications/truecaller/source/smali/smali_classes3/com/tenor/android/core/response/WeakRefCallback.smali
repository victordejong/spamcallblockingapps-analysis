.class public abstract Lcom/tenor/android/core/response/WeakRefCallback;
.super Lcom/tenor/android/core/weakref/WeakRefObject;
.source "SourceFile"

# interfaces
.implements Lx3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tenor/android/core/weakref/WeakRefObject<",
        "TCTX;>;",
        "Lx3/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ERROR_NULL_RESPONSE:Ljava/lang/String; = "response is null"

.field public static final ERROR_UNKNOWN:Ljava/lang/String; = "unknown error"


# instance fields
.field private mReportNetworkDropAsException:Z

.field private final mUiThread:Lcom/tenor/android/core/weakref/WeakRefUiHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tenor/android/core/weakref/WeakRefUiHandler<",
            "TCTX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tenor/android/core/response/WeakRefCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TCTX;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefObject;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 3
    new-instance v0, Lcom/tenor/android/core/weakref/WeakRefUiHandler;

    invoke-direct {v0, p1}, Lcom/tenor/android/core/weakref/WeakRefUiHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback;->mUiThread:Lcom/tenor/android/core/weakref/WeakRefUiHandler;

    return-void
.end method

.method public static synthetic access$000(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tenor/android/core/response/WeakRefCallback;->failure(Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/Object;Ljava/lang/Object;Lu3/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tenor/android/core/response/WeakRefCallback;->success(Ljava/lang/Object;Ljava/lang/Object;Lu3/k0;)V

    return-void
.end method

.method public static synthetic access$200(Lu3/l0;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/response/WeakRefCallback;->createThrowable(Lu3/l0;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private static createThrowable(Lu3/l0;)Ljava/lang/Throwable;
    .locals 3

    const-string v0, "unknown error"

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lu3/l0;->b()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/tenor/android/core/response/WeakRefCallback;->parseError(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :catchall_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private failure(Ljava/lang/Object;Ljava/lang/Throwable;Lu3/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Ljava/lang/Throwable;",
            "Lu3/k0;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/tenor/android/core/response/WeakRefCallback;->measureResponse(Ljava/lang/Object;Lu3/k0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    invoke-virtual {p0, p1, p2}, Lcom/tenor/android/core/response/WeakRefCallback;->failure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static parseError(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    .line 5
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractIOUtils;->close([Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractIOUtils;->close([Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_2
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractIOUtils;->close([Ljava/io/Closeable;)V

    .line 6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private success(Ljava/lang/Object;Ljava/lang/Object;Lu3/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;TT;",
            "Lu3/k0;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/tenor/android/core/response/WeakRefCallback;->measureResponse(Ljava/lang/Object;Lu3/k0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    invoke-virtual {p0, p1, p2}, Lcom/tenor/android/core/response/WeakRefCallback;->success(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract failure(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public getUiThread()Lcom/tenor/android/core/weakref/WeakRefUiHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tenor/android/core/weakref/WeakRefUiHandler<",
            "TCTX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/WeakRefCallback;->mUiThread:Lcom/tenor/android/core/weakref/WeakRefUiHandler;

    return-object v0
.end method

.method public isReportNetworkDropAsException()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/response/WeakRefCallback;->mReportNetworkDropAsException:Z

    return v0
.end method

.method public measureResponse(Ljava/lang/Object;Lu3/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;",
            "Lu3/k0;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final onFailure(Lx3/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->hasRef()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tenor/android/core/response/WeakRefCallback;->getUiThread()Lcom/tenor/android/core/weakref/WeakRefUiHandler;

    move-result-object p1

    new-instance v0, Lcom/tenor/android/core/response/WeakRefCallback$2;

    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/tenor/android/core/response/WeakRefCallback$2;-><init>(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/ref/WeakReference;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNetworkDropCaught(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TT;>;",
            "Lx3/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->hasRef()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tenor/android/core/response/WeakRefCallback;->getUiThread()Lcom/tenor/android/core/weakref/WeakRefUiHandler;

    move-result-object p1

    new-instance v0, Lcom/tenor/android/core/response/WeakRefCallback$1;

    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/tenor/android/core/response/WeakRefCallback$1;-><init>(Lcom/tenor/android/core/response/WeakRefCallback;Ljava/lang/ref/WeakReference;Lx3/a0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setReportNetworkDropAsException(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tenor/android/core/response/WeakRefCallback;->mReportNetworkDropAsException:Z

    return-void
.end method

.method public abstract success(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCTX;TT;)V"
        }
    .end annotation
.end method
