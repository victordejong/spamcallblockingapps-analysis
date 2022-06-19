.class public final Le/m/a/h/a/a/f;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Le/m/a/h/a/h/n;

.field public final synthetic d:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;Ljava/util/Map;Le/m/a/h/a/h/n;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/a/f;->d:Le/m/a/h/a/a/t;

    iput-object p3, p0, Le/m/a/h/a/a/f;->b:Ljava/util/Map;

    iput-object p4, p0, Le/m/a/h/a/a/f;->c:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/f;->d:Le/m/a/h/a/a/t;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 3
    check-cast v1, Le/m/a/h/a/d/t1;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Le/m/a/h/a/a/f;->b:Ljava/util/Map;

    .line 6
    invoke-static {v2}, Le/m/a/h/a/a/t;->i(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Le/m/a/h/a/a/o;

    iget-object v4, p0, Le/m/a/h/a/a/f;->d:Le/m/a/h/a/a/t;

    iget-object v5, p0, Le/m/a/h/a/a/f;->c:Le/m/a/h/a/h/n;

    invoke-direct {v3, v4, v5}, Le/m/a/h/a/a/o;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    .line 7
    invoke-interface {v1, v0, v2, v3}, Le/m/a/h/a/d/t1;->R(Ljava/lang/String;Landroid/os/Bundle;Le/m/a/h/a/d/v1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "syncPacks"

    .line 9
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Le/m/a/h/a/a/f;->c:Le/m/a/h/a/h/n;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    return-void
.end method
