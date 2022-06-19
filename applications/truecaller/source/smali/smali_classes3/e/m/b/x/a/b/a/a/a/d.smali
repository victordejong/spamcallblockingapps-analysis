.class public Le/m/b/x/a/b/a/a/a/d;
.super Le/m/b/x/a/b/a/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/x/a/b/a/a/a/b;-><init>(Lcom/google/android/gms/auth/GoogleAuthException;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/gms/auth/GoogleAuthException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/b/a/a/a/d;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/b/x/a/b/a/a/a/b;->a()Lcom/google/android/gms/auth/GoogleAuthException;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/b/a/a/a/d;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    return-object v0
.end method
