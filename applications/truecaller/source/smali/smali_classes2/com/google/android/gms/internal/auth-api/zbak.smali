.class public final Lcom/google/android/gms/internal/auth-api/zbak;
.super Lcom/google/android/gms/internal/auth-api/zbac;
.source "SourceFile"


# instance fields
.field public final synthetic zba:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth-api/zbam;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbak;->zba:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbac;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->q2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbak;->zba:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {p1, p2}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbak;->zba:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {p2, p1}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void
.end method
