.class public Le/m/b/x/a/b/a/a/a/c;
.super Le/m/b/x/a/b/a/a/a/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/x/a/b/a/a/a/d;-><init>(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/gms/auth/GoogleAuthException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/b/a/a/a/c;->c()Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/b/a/a/a/c;->c()Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/b/x/a/b/a/a/a/d;->b()Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/b/a/a/a/c;->c()Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    move-result-object v0

    return-object v0
.end method
