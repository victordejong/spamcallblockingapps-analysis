.class public final Le/m/a/j/a/h/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/c;


# instance fields
.field public a:Le/m/a/j/a/h/c;

.field public b:Le/m/a/j/a/h/e;


# direct methods
.method public constructor <init>(Le/m/a/j/a/h/c;Le/m/a/j/a/h/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectionClient cannot be null"

    invoke-static {p1, v0}, Ln3/g0/y;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Le/m/a/j/a/h/c;

    iput-object p1, p0, Le/m/a/j/a/h/l;->a:Le/m/a/j/a/h/c;

    const-string p1, "embeddedPlayer cannot be null"

    invoke-static {p2, p1}, Ln3/g0/y;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Le/m/a/j/a/h/e;

    iput-object p2, p0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0, p1}, Le/m/a/j/a/h/e;->a(Z)V

    iget-object v0, p0, Le/m/a/j/a/h/l;->a:Le/m/a/j/a/h/c;

    invoke-interface {v0, p1}, Le/m/a/j/a/h/c;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Le/m/a/j/a/h/l;->a:Le/m/a/j/a/h/c;

    invoke-interface {p1}, Le/m/a/j/a/h/m;->d()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Le/m/a/j/a/h/j;

    invoke-direct {v0, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
