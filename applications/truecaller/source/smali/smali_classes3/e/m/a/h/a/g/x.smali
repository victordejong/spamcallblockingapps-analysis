.class public Le/m/a/h/a/g/x;
.super Le/m/a/h/a/d/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/a/h/a/d/y0;"
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

.field public final synthetic b:Le/m/a/h/a/g/y;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    .line 1
    invoke-direct {p0}, Le/m/a/h/a/d/y0;-><init>()V

    iput-object p2, p0, Le/m/a/h/a/g/x;->a:Le/m/a/h/a/h/n;

    return-void
.end method


# virtual methods
.method public F0(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p2, p0, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p2, p2, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 1
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 2
    sget-object p2, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "onStartInstall(%d)"

    invoke-virtual {p2, p1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public P(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 1
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 2
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredUninstall"

    .line 3
    invoke-virtual {p1, v1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public V(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p2, p0, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p2, p2, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 1
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 2
    sget-object p2, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "onCancelInstall(%d)"

    invoke-virtual {p2, p1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
