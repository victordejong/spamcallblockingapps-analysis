.class public final Le/m/a/h/a/g/r;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Ljava/util/Collection;

.field public final synthetic d:Le/m/a/h/a/h/n;

.field public final synthetic e:Le/m/a/h/a/g/y;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;Ljava/util/Collection;Ljava/util/Collection;Le/m/a/h/a/h/n;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/g/r;->e:Le/m/a/h/a/g/y;

    iput-object p3, p0, Le/m/a/h/a/g/r;->b:Ljava/util/Collection;

    iput-object p4, p0, Le/m/a/h/a/g/r;->c:Ljava/util/Collection;

    iput-object p5, p0, Le/m/a/h/a/g/r;->d:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Le/m/a/h/a/g/r;->b:Ljava/util/Collection;

    .line 1
    invoke-static {v0}, Le/m/a/h/a/g/y;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/g/r;->c:Ljava/util/Collection;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    .line 5
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "language"

    .line 6
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/g/r;->e:Le/m/a/h/a/g/y;

    iget-object v2, v1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 9
    iget-object v2, v2, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 10
    check-cast v2, Le/m/a/h/a/d/x0;

    .line 11
    iget-object v1, v1, Le/m/a/h/a/g/y;->a:Ljava/lang/String;

    .line 12
    invoke-static {}, Le/m/a/h/a/g/y;->a()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Le/m/a/h/a/g/w;

    iget-object v5, p0, Le/m/a/h/a/g/r;->e:Le/m/a/h/a/g/y;

    iget-object v6, p0, Le/m/a/h/a/g/r;->d:Le/m/a/h/a/h/n;

    invoke-direct {v4, v5, v6}, Le/m/a/h/a/g/w;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;)V

    .line 13
    invoke-interface {v2, v1, v0, v3, v4}, Le/m/a/h/a/d/x0;->h1(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Le/m/a/h/a/d/z0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 15
    iget-object v4, p0, Le/m/a/h/a/g/r;->b:Ljava/util/Collection;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Le/m/a/h/a/g/r;->c:Ljava/util/Collection;

    aput-object v4, v2, v3

    const-string v3, "startInstall(%s,%s)"

    .line 16
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Le/m/a/h/a/g/r;->d:Le/m/a/h/a/h/n;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 17
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    return-void
.end method
