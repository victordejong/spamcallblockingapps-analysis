.class public abstract Le/m/a/f/s/a/d;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Messenger;

.field public b:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Le/m/a/f/s/a/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Le/m/a/f/s/a/a;-><init>(Le/m/a/f/s/a/d;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Le/m/a/f/s/a/d;->a:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/callback/CallbackInput;",
            "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
            "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
            ">;)V"
        }
    .end annotation
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Le/m/a/f/s/a/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Le/m/a/f/s/a/a;-><init>(Le/m/a/f/s/a/d;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Le/m/a/f/s/a/d;->a:Landroid/os/Messenger;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/wallet/zzg;->zza()Lcom/google/android/gms/internal/wallet/zzd;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Le/m/a/f/s/a/d;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
