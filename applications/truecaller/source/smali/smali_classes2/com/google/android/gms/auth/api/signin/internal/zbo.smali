.class public abstract Lcom/google/android/gms/auth/api/signin/internal/zbo;
.super Lcom/google/android/gms/internal/auth-api/zbb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/zbp;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth-api/zbb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zba(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    return p2

    .line 1
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->m1()V

    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->b()V

    goto :goto_0

    .line 4
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->m1()V

    iget-object p4, p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;->a:Landroid/content/Context;

    .line 6
    invoke-static {p4}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object p4

    .line 7
    invoke-virtual {p4}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p4}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;->a:Landroid/content/Context;

    .line 10
    invoke-static {p1, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p4

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->c()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    move p2, p3

    .line 14
    :cond_3
    invoke-static {p4, v0, p2}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 15
    new-instance p2, Le/m/a/f/e/b/j;

    invoke-direct {p2}, Le/m/a/f/e/b/j;-><init>()V

    .line 16
    sget-object p4, Lcom/google/android/gms/common/internal/PendingResultUtil;->a:Lcom/google/android/gms/common/internal/zas;

    .line 17
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Le/m/a/f/e/b/h;

    .line 18
    invoke-direct {v1, p1, v0, p2, p4}, Le/m/a/f/e/b/h;-><init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/common/internal/zas;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    :goto_0
    return p3
.end method
