.class public final Le/m/a/h/a/g/w;
.super Le/m/a/h/a/g/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/g/x<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/h/a/g/x;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final F0(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/m/a/h/a/g/x;->F0(ILandroid/os/Bundle;)V

    iget-object p2, p0, Le/m/a/h/a/g/x;->a:Le/m/a/h/a/h/n;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/m/a/h/a/h/n;->b(Ljava/lang/Object;)Z

    return-void
.end method
