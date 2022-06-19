.class public final Le/m/a/h/a/a/g;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Le/m/a/h/a/h/n;

.field public final synthetic g:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILjava/lang/String;Ljava/lang/String;ILe/m/a/h/a/h/n;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/a/g;->g:Le/m/a/h/a/a/t;

    iput p3, p0, Le/m/a/h/a/a/g;->b:I

    iput-object p4, p0, Le/m/a/h/a/a/g;->c:Ljava/lang/String;

    iput-object p5, p0, Le/m/a/h/a/a/g;->d:Ljava/lang/String;

    iput p6, p0, Le/m/a/h/a/a/g;->e:I

    iput-object p7, p0, Le/m/a/h/a/a/g;->f:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/g;->g:Le/m/a/h/a/a/t;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 3
    check-cast v1, Le/m/a/h/a/d/t1;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    .line 5
    iget v2, p0, Le/m/a/h/a/a/g;->b:I

    iget-object v3, p0, Le/m/a/h/a/a/g;->c:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/h/a/a/g;->d:Ljava/lang/String;

    iget v5, p0, Le/m/a/h/a/a/g;->e:I

    .line 6
    invoke-static {v2, v3, v4, v5}, Le/m/a/h/a/a/t;->h(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 7
    invoke-static {}, Le/m/a/h/a/a/t;->e()Landroid/os/Bundle;

    move-result-object v3

    .line 8
    new-instance v4, Le/m/a/h/a/a/q;

    iget-object v5, p0, Le/m/a/h/a/a/g;->g:Le/m/a/h/a/a/t;

    iget-object v6, p0, Le/m/a/h/a/a/g;->f:Le/m/a/h/a/h/n;

    invoke-direct {v4, v5, v6}, Le/m/a/h/a/a/q;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    .line 9
    invoke-interface {v1, v0, v2, v3, v4}, Le/m/a/h/a/d/t1;->q(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Le/m/a/h/a/d/v1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyChunkTransferred"

    .line 11
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
