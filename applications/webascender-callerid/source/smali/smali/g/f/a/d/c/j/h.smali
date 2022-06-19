.class public abstract Lg/f/a/d/c/j/h;
.super Lg/f/a/d/c/j/b;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/j/g;


# direct methods
.method public static w(Landroid/os/IBinder;)Lg/f/a/d/c/j/g;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lg/f/a/d/c/j/g;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lg/f/a/d/c/j/g;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lg/f/a/d/c/j/i;

    invoke-direct {v0, p0}, Lg/f/a/d/c/j/i;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
