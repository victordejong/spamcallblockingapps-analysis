.class public final Le/m/a/h/a/a/k;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Le/m/a/h/a/h/n;

.field public final synthetic c:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;Le/m/a/h/a/h/n;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/a/k;->c:Le/m/a/h/a/a/t;

    iput-object p3, p0, Le/m/a/h/a/a/k;->b:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/k;->c:Le/m/a/h/a/a/t;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/t;->e:Le/m/a/h/a/d/r;

    .line 2
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 3
    check-cast v1, Le/m/a/h/a/d/t1;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Le/m/a/h/a/a/t;->e()Landroid/os/Bundle;

    move-result-object v2

    .line 6
    new-instance v3, Le/m/a/h/a/a/p;

    iget-object v4, p0, Le/m/a/h/a/a/k;->c:Le/m/a/h/a/a/t;

    iget-object v5, p0, Le/m/a/h/a/a/k;->b:Le/m/a/h/a/h/n;

    invoke-direct {v3, v4, v5}, Le/m/a/h/a/a/p;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    invoke-interface {v1, v0, v2, v3}, Le/m/a/h/a/d/t1;->N0(Ljava/lang/String;Landroid/os/Bundle;Le/m/a/h/a/d/v1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "keepAlive"

    .line 8
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
