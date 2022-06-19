.class public final Le/m/a/f/e/a/a/k;
.super Lcom/google/android/gms/signin/internal/zac;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/m/a/f/e/a/a/k;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final w0(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3

    iget-object v0, p0, Le/m/a/f/e/a/a/k;->a:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaar;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->a:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    new-instance v2, Le/m/a/f/e/a/a/j;

    .line 4
    invoke-direct {v2, v0, v0, p1}, Le/m/a/f/e/a/a/j;-><init>(Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/signin/internal/zak;)V

    .line 5
    iget-object p1, v1, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/zabd;->e:Le/m/a/f/e/a/a/r;

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
