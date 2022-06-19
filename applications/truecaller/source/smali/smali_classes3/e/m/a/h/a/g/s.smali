.class public final Le/m/a/h/a/g/s;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Le/m/a/h/a/h/n;

.field public final synthetic d:Le/m/a/h/a/g/y;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;Ljava/util/List;Le/m/a/h/a/h/n;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/g/s;->d:Le/m/a/h/a/g/y;

    iput-object p3, p0, Le/m/a/h/a/g/s;->b:Ljava/util/List;

    iput-object p4, p0, Le/m/a/h/a/g/s;->c:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/g/s;->d:Le/m/a/h/a/g/y;

    iget-object v1, v0, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 1
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 2
    check-cast v1, Le/m/a/h/a/d/x0;

    .line 3
    iget-object v0, v0, Le/m/a/h/a/g/y;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Le/m/a/h/a/g/s;->b:Ljava/util/List;

    .line 5
    invoke-static {v2}, Le/m/a/h/a/g/y;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6
    invoke-static {}, Le/m/a/h/a/g/y;->a()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Le/m/a/h/a/g/v;

    iget-object v5, p0, Le/m/a/h/a/g/s;->d:Le/m/a/h/a/g/y;

    iget-object v6, p0, Le/m/a/h/a/g/s;->c:Le/m/a/h/a/h/n;

    invoke-direct {v4, v5, v6}, Le/m/a/h/a/g/v;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;)V

    .line 7
    invoke-interface {v1, v0, v2, v3, v4}, Le/m/a/h/a/d/x0;->W0(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Le/m/a/h/a/d/z0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Le/m/a/h/a/g/s;->b:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "deferredUninstall(%s)"

    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Le/m/a/h/a/g/s;->c:Le/m/a/h/a/h/n;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    return-void
.end method
