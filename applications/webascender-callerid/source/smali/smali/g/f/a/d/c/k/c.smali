.class public abstract Lg/f/a/d/c/k/c;
.super Lg/f/a/d/c/k/f;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/k/d;


# direct methods
.method public static q(Landroid/os/IBinder;)Lg/f/a/d/c/k/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lg/f/a/d/c/k/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lg/f/a/d/c/k/d;

    return-object v0

    :cond_1
    new-instance v0, Lg/f/a/d/c/k/b;

    .line 4
    invoke-direct {v0, p0}, Lg/f/a/d/c/k/b;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
