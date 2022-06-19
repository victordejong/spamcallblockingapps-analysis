.class public final Le/m/a/h/a/c/p;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:[B

.field public final synthetic c:Le/m/a/h/a/h/n;

.field public final synthetic d:Le/m/a/h/a/c/c;

.field public final synthetic e:Le/m/a/h/a/c/r;


# direct methods
.method public constructor <init>(Le/m/a/h/a/c/r;Le/m/a/h/a/h/n;[BLe/m/a/h/a/h/n;Le/m/a/h/a/c/c;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/c/p;->e:Le/m/a/h/a/c/r;

    iput-object p3, p0, Le/m/a/h/a/c/p;->b:[B

    iput-object p4, p0, Le/m/a/h/a/c/p;->c:Le/m/a/h/a/h/n;

    iput-object p5, p0, Le/m/a/h/a/c/p;->d:Le/m/a/h/a/c/c;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/c/p;->e:Le/m/a/h/a/c/r;

    iget-object v1, v0, Le/m/a/h/a/c/r;->c:Le/m/a/h/a/d/r;

    .line 1
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 2
    check-cast v1, Le/m/a/h/a/d/c;

    iget-object v2, p0, Le/m/a/h/a/c/p;->b:[B

    .line 3
    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v0, Le/m/a/h/a/c/r;->b:Ljava/lang/String;

    const-string v4, "package.name"

    .line 5
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nonce"

    .line 6
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 7
    new-instance v0, Le/m/a/h/a/c/q;

    iget-object v2, p0, Le/m/a/h/a/c/p;->e:Le/m/a/h/a/c/r;

    iget-object v4, p0, Le/m/a/h/a/c/p;->c:Le/m/a/h/a/h/n;

    invoke-direct {v0, v2, v4}, Le/m/a/h/a/c/q;-><init>(Le/m/a/h/a/c/r;Le/m/a/h/a/h/n;)V

    .line 8
    invoke-interface {v1, v3, v0}, Le/m/a/h/a/d/c;->o0(Landroid/os/Bundle;Le/m/a/h/a/d/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Le/m/a/h/a/c/p;->e:Le/m/a/h/a/c/r;

    .line 9
    iget-object v1, v1, Le/m/a/h/a/c/r;->a:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Le/m/a/h/a/c/p;->d:Le/m/a/h/a/c/c;

    aput-object v4, v2, v3

    const-string v3, "requestIntegrityToken(%s)"

    .line 11
    invoke-virtual {v1, v0, v3, v2}, Le/m/a/h/a/d/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Le/m/a/h/a/c/p;->c:Le/m/a/h/a/h/n;

    new-instance v2, Le/m/a/h/a/c/b;

    .line 12
    invoke-direct {v2, v0}, Le/m/a/h/a/c/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of v0, p1, Le/m/a/h/a/d/s;

    if-eqz v0, :cond_1

    new-instance v0, Le/m/a/h/a/c/b;

    const/16 v1, -0x9

    .line 2
    invoke-direct {v0, v1, p1}, Le/m/a/h/a/c/b;-><init>(ILjava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Le/m/a/h/a/d/h;->a:Le/m/a/h/a/h/n;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/a/h/a/d/h;->a:Le/m/a/h/a/h/n;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    :cond_2
    return-void
.end method
