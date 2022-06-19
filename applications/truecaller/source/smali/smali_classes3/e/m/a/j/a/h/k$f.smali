.class public final Le/m/a/j/a/h/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/j/a/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/j/a/h/k;


# direct methods
.method public constructor <init>(Le/m/a/j/a/h/k;)V
    .locals 0

    iput-object p1, p0, Le/m/a/j/a/h/k$f;->a:Le/m/a/j/a/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object p1, p0, Le/m/a/j/a/h/k$f;->a:Le/m/a/j/a/h/k;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    sget v0, Le/m/a/j/a/h/f$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.youtube.player.internal.IServiceBroker"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Le/m/a/j/a/h/f;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Le/m/a/j/a/h/f;

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_1
    new-instance v0, Le/m/a/j/a/h/f$a$a;

    invoke-direct {v0, p2}, Le/m/a/j/a/h/f$a$a;-><init>(Landroid/os/IBinder;)V

    move-object v1, v0

    .line 3
    :goto_1
    new-instance v2, Le/m/a/j/a/h/k$e;

    invoke-direct {v2, p1}, Le/m/a/j/a/h/k$e;-><init>(Le/m/a/j/a/h/k;)V

    check-cast p1, Le/m/a/j/a/h/i;

    .line 4
    iget-object v4, p1, Le/m/a/j/a/h/i;->l:Ljava/lang/String;

    iget-object v5, p1, Le/m/a/j/a/h/i;->m:Ljava/lang/String;

    iget-object v6, p1, Le/m/a/j/a/h/i;->k:Ljava/lang/String;

    const/16 v3, 0x4b2

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Le/m/a/j/a/h/f;->j0(Le/m/a/j/a/h/d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Le/m/a/j/a/h/k$f;->a:Le/m/a/j/a/h/k;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Le/m/a/j/a/h/k;->c:Landroid/os/IInterface;

    .line 2
    invoke-virtual {p1}, Le/m/a/j/a/h/k;->h()V

    return-void
.end method
