.class final Lcom/google/android/gms/tasks/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;
.implements Lcom/google/android/gms/tasks/d;
.implements Lcom/google/android/gms/tasks/e;
.implements Lcom/google/android/gms/tasks/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/b;",
        "Lcom/google/android/gms/tasks/d;",
        "Lcom/google/android/gms/tasks/e<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/z<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/f<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/b0<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;Lcom/google/android/gms/tasks/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/f<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/google/android/gms/tasks/b0<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tasks/x;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/x;->b:Lcom/google/android/gms/tasks/f;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/tasks/x;->c:Lcom/google/android/gms/tasks/b0;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/tasks/x;)Lcom/google/android/gms/tasks/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/x;->b:Lcom/google/android/gms/tasks/f;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/x;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/w;-><init>(Lcom/google/android/gms/tasks/x;Lcom/google/android/gms/tasks/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/x;->c:Lcom/google/android/gms/tasks/b0;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/b0;->x()Z

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/x;->c:Lcom/google/android/gms/tasks/b0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/b0;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/x;->c:Lcom/google/android/gms/tasks/b0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/b0;->w(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
