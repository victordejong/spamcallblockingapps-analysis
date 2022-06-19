.class public final Le/m/a/h/a/a/i;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le/m/a/h/a/h/n;

.field public final synthetic d:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILe/m/a/h/a/h/n;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/a/i;->d:Le/m/a/h/a/a/t;

    iput p3, p0, Le/m/a/h/a/a/i;->b:I

    iput-object p4, p0, Le/m/a/h/a/a/i;->c:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/i;->d:Le/m/a/h/a/a/t;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 3
    check-cast v1, Le/m/a/h/a/d/t1;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    .line 5
    iget v2, p0, Le/m/a/h/a/a/i;->b:I

    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "session_id"

    .line 8
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-static {}, Le/m/a/h/a/a/t;->e()Landroid/os/Bundle;

    move-result-object v2

    .line 10
    new-instance v4, Le/m/a/h/a/a/s;

    iget-object v5, p0, Le/m/a/h/a/a/i;->d:Le/m/a/h/a/a/t;

    iget-object v6, p0, Le/m/a/h/a/a/i;->c:Le/m/a/h/a/h/n;

    invoke-direct {v4, v5, v6}, Le/m/a/h/a/a/s;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    .line 11
    invoke-interface {v1, v0, v3, v2, v4}, Le/m/a/h/a/d/t1;->y(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Le/m/a/h/a/d/v1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifySessionFailed"

    .line 13
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
