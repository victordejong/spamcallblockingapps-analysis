.class public final Le/m/a/h/a/a/e;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Le/m/a/h/a/h/n;

.field public final synthetic d:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;Ljava/util/List;Le/m/a/h/a/h/n;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/a/e;->d:Le/m/a/h/a/a/t;

    iput-object p3, p0, Le/m/a/h/a/a/e;->b:Ljava/util/List;

    iput-object p4, p0, Le/m/a/h/a/a/e;->c:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Le/m/a/h/a/a/e;->b:Ljava/util/List;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "module_name"

    .line 5
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/e;->d:Le/m/a/h/a/a/t;

    .line 8
    iget-object v2, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 9
    iget-object v2, v2, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 10
    check-cast v2, Le/m/a/h/a/d/t1;

    .line 11
    iget-object v0, v0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    .line 12
    invoke-static {}, Le/m/a/h/a/a/t;->e()Landroid/os/Bundle;

    move-result-object v3

    .line 13
    new-instance v4, Le/m/a/h/a/a/m;

    iget-object v5, p0, Le/m/a/h/a/a/e;->d:Le/m/a/h/a/a/t;

    iget-object v6, p0, Le/m/a/h/a/a/e;->c:Le/m/a/h/a/h/n;

    invoke-direct {v4, v5, v6}, Le/m/a/h/a/a/m;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    .line 14
    invoke-interface {v2, v0, v1, v3, v4}, Le/m/a/h/a/d/t1;->e0(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Le/m/a/h/a/d/v1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 16
    iget-object v4, p0, Le/m/a/h/a/a/e;->b:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "cancelDownloads(%s)"

    .line 17
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
