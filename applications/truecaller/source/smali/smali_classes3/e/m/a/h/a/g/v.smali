.class public final Le/m/a/h/a/g/v;
.super Le/m/a/h/a/g/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/g/x<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/h/a/g/x;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final P(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/m/a/h/a/g/x;->b:Le/m/a/h/a/g/y;

    iget-object p1, p1, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/d/r;->c()V

    .line 3
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredUninstall"

    .line 4
    invoke-virtual {p1, v1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Le/m/a/h/a/g/x;->a:Le/m/a/h/a/h/n;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Le/m/a/h/a/h/n;->b(Ljava/lang/Object;)Z

    return-void
.end method
