.class public Le/m/a/h/a/a/l;
.super Le/m/a/h/a/d/u1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/a/h/a/d/u1;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/h/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/h/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 1
    invoke-direct {p0}, Le/m/a/h/a/d/u1;-><init>()V

    iput-object p2, p0, Le/m/a/h/a/a/l;->a:Le/m/a/h/a/h/n;

    return-void
.end method


# virtual methods
.method public E(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 1
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 3
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onGetChunkFileDescriptor"

    .line 4
    invoke-virtual {p1, v0, p2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public O0(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-object p2, p0, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 1
    iget-object p2, p2, Le/m/a/h/a/a/t;->e:Le/m/a/h/a/d/r;

    .line 2
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 3
    sget-object p2, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "keep_alive"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onKeepAlive(%b)"

    invoke-virtual {p2, p1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzd(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    invoke-virtual {v0}, Le/m/a/h/a/d/r;->c()V

    const-string v0, "error_code"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Le/m/a/h/a/a/l;->a:Le/m/a/h/a/h/n;

    new-instance v1, Le/m/a/h/a/a/a;

    .line 6
    invoke-direct {v1, p1}, Le/m/a/h/a/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public zzg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 1
    iget-object p1, p1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 3
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    .line 4
    invoke-virtual {p1, v1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
