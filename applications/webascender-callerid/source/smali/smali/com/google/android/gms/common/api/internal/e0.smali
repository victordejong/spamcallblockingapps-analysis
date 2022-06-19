.class final Lcom/google/android/gms/common/api/internal/e0;
.super Lg/f/a/d/f/b/e;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/f/a/d/f/b/e;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final j2(Lg/f/a/d/f/b/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/z;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/z;->t(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/api/internal/q0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/h0;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/h0;-><init>(Lcom/google/android/gms/common/api/internal/e0;Lcom/google/android/gms/common/api/internal/n0;Lcom/google/android/gms/common/api/internal/z;Lg/f/a/d/f/b/n;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/q0;->i(Lcom/google/android/gms/common/api/internal/p0;)V

    return-void
.end method
