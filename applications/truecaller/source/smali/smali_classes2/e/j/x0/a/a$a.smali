.class public abstract Le/j/x0/a/a$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Le/j/x0/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/j/x0/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/j/x0/a/a$a$a;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static m1(Landroid/os/IBinder;)Le/j/x0/a/a;
    .locals 2

    const-string v0, "com.facebook.ppml.receiver.IReceiverService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Le/j/x0/a/a;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Le/j/x0/a/a;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Le/j/x0/a/a$a$a;

    invoke-direct {v0, p0}, Le/j/x0/a/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
