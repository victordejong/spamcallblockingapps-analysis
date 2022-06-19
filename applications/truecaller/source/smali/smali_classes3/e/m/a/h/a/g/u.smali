.class public final Le/m/a/h/a/g/u;
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
.method public final V(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/m/a/h/a/g/x;->V(ILandroid/os/Bundle;)V

    iget-object p1, p0, Le/m/a/h/a/g/x;->a:Le/m/a/h/a/h/n;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Le/m/a/h/a/h/n;->b(Ljava/lang/Object;)Z

    return-void
.end method
