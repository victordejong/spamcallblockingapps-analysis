.class public final Le/m/a/h/a/a/h;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Le/m/a/h/a/h/n;

.field public final synthetic e:I

.field public final synthetic f:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILjava/lang/String;Le/m/a/h/a/h/n;I)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/a/h;->f:Le/m/a/h/a/a/t;

    iput p3, p0, Le/m/a/h/a/a/h;->b:I

    iput-object p4, p0, Le/m/a/h/a/a/h;->c:Ljava/lang/String;

    iput-object p5, p0, Le/m/a/h/a/a/h;->d:Le/m/a/h/a/h/n;

    iput p6, p0, Le/m/a/h/a/a/h;->e:I

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/h;->f:Le/m/a/h/a/a/t;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 3
    check-cast v1, Le/m/a/h/a/d/t1;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    .line 5
    iget v2, p0, Le/m/a/h/a/a/h;->b:I

    iget-object v3, p0, Le/m/a/h/a/a/h;->c:Ljava/lang/String;

    .line 6
    new-instance v4, Landroid/os/Bundle;

    .line 7
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "session_id"

    .line 8
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "module_name"

    .line 9
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Le/m/a/h/a/a/t;->e()Landroid/os/Bundle;

    move-result-object v2

    .line 11
    new-instance v3, Le/m/a/h/a/a/r;

    iget-object v6, p0, Le/m/a/h/a/a/h;->f:Le/m/a/h/a/a/t;

    iget-object v7, p0, Le/m/a/h/a/a/h;->d:Le/m/a/h/a/h/n;

    iget v8, p0, Le/m/a/h/a/a/h;->b:I

    iget-object v9, p0, Le/m/a/h/a/a/h;->c:Ljava/lang/String;

    iget v10, p0, Le/m/a/h/a/a/h;->e:I

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Le/m/a/h/a/a/r;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILjava/lang/String;I)V

    .line 12
    invoke-interface {v1, v0, v4, v2, v3}, Le/m/a/h/a/d/t1;->C(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Le/m/a/h/a/d/v1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyModuleCompleted"

    .line 14
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
