.class public final Le/m/a/h/a/a/j;
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

    iput-object p1, p0, Le/m/a/h/a/a/j;->g:Le/m/a/h/a/a/t;

    iput p3, p0, Le/m/a/h/a/a/j;->b:I

    iput-object p4, p0, Le/m/a/h/a/a/j;->c:Ljava/lang/String;

    iput-object p5, p0, Le/m/a/h/a/a/j;->d:Ljava/lang/String;

    iput p6, p0, Le/m/a/h/a/a/j;->e:I

    iput-object p7, p0, Le/m/a/h/a/a/j;->f:Le/m/a/h/a/h/n;

    .line 1
    invoke-direct {p0, p2}, Le/m/a/h/a/d/h;-><init>(Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/j;->g:Le/m/a/h/a/a/t;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    iget-object v1, v1, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 3
    check-cast v1, Le/m/a/h/a/d/t1;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    .line 5
    iget v2, p0, Le/m/a/h/a/a/j;->b:I

    iget-object v3, p0, Le/m/a/h/a/a/j;->c:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/h/a/a/j;->d:Ljava/lang/String;

    iget v5, p0, Le/m/a/h/a/a/j;->e:I

    .line 6
    invoke-static {v2, v3, v4, v5}, Le/m/a/h/a/a/t;->h(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 7
    invoke-static {}, Le/m/a/h/a/a/t;->e()Landroid/os/Bundle;

    move-result-object v3

    .line 8
    new-instance v4, Le/m/a/h/a/a/n;

    iget-object v5, p0, Le/m/a/h/a/a/j;->g:Le/m/a/h/a/a/t;

    iget-object v6, p0, Le/m/a/h/a/a/j;->f:Le/m/a/h/a/h/n;

    invoke-direct {v4, v5, v6}, Le/m/a/h/a/a/n;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    .line 9
    invoke-interface {v1, v0, v2, v3, v4}, Le/m/a/h/a/d/t1;->j1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Le/m/a/h/a/d/v1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 11
    iget-object v4, p0, Le/m/a/h/a/a/j;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Le/m/a/h/a/a/j;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Le/m/a/h/a/a/j;->e:I

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Le/m/a/h/a/a/j;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 13
    invoke-virtual {v1, v3, v2}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Le/m/a/h/a/a/j;->f:Le/m/a/h/a/h/n;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 14
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    return-void
.end method
