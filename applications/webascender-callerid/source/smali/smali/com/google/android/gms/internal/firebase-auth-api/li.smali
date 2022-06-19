.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/li;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/firebase-auth-api/ii;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/firebase-auth-api/gi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/gi<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/firebase-auth-api/gi<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public final b(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/ki<",
            "TA;TResultT;>;)",
            "Lcom/google/android/gms/tasks/g<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->d()Lcom/google/android/gms/internal/firebase-auth-api/gi;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/gi;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ki;->a()Lcom/google/android/gms/common/api/internal/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/c;->d(Lcom/google/android/gms/common/api/internal/r;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/firebase-auth-api/ki;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/ki<",
            "TA;TResultT;>;)",
            "Lcom/google/android/gms/tasks/g<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->d()Lcom/google/android/gms/internal/firebase-auth-api/gi;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/gi;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ki;->a()Lcom/google/android/gms/common/api/internal/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/c;->h(Lcom/google/android/gms/common/api/internal/r;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/google/android/gms/internal/firebase-auth-api/gi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/gi<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/li;->a:Lcom/google/android/gms/internal/firebase-auth-api/gi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/li;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/gi;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/li;->a:Lcom/google/android/gms/internal/firebase-auth-api/gi;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "There was an error while initializing the connection to the GoogleApi: "

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/li;->a:Lcom/google/android/gms/internal/firebase-auth-api/gi;

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
