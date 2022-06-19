.class public final Le/m/a/f/s/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult::",
        "Lcom/google/android/gms/wallet/AutoResolvableResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final c:Landroid/os/Handler;

.field public static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/f/s/c<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/wallet/zzd;

.field public b:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wallet/zzh;

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wallet/zzh;-><init>(Landroid/os/Looper;)V

    sput-object v0, Le/m/a/f/s/c;->c:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    .line 2
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Le/m/a/f/s/c;->d:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Le/m/a/f/s/c;->b:Lcom/google/android/gms/tasks/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/s/c;->a:Lcom/google/android/gms/wallet/zzd;

    if-eqz v0, :cond_0

    sget-object v0, Le/m/a/f/s/c;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    sget-object v0, Le/m/a/f/s/c;->c:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Le/m/a/f/s/c;->a:Lcom/google/android/gms/wallet/zzd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/m/a/f/s/c;->b:Lcom/google/android/gms/tasks/Task;

    .line 3
    sget v2, Lcom/google/android/gms/wallet/zzd;->d:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/zzd;->a(Lcom/google/android/gms/tasks/Task;)V

    :cond_0
    return-void
.end method

.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/f/s/c;->b:Lcom/google/android/gms/tasks/Task;

    .line 1
    invoke-virtual {p0}, Le/m/a/f/s/c;->a()V

    return-void
.end method

.method public final run()V
    .locals 2

    sget-object v0, Le/m/a/f/s/c;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
