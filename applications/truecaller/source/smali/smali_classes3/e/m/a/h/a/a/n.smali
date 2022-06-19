.class public final Le/m/a/h/a/a/n;
.super Le/m/a/h/a/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/a/l<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/h/a/a/l;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final E(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 2
    iget-object p2, p2, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 3
    invoke-virtual {p2}, Le/m/a/h/a/d/r;->c()V

    .line 4
    sget-object p2, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetChunkFileDescriptor"

    .line 5
    invoke-virtual {p2, v1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p2, "chunk_file_descriptor"

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p2, p0, Le/m/a/h/a/a/l;->a:Le/m/a/h/a/h/n;

    .line 7
    invoke-virtual {p2, p1}, Le/m/a/h/a/h/n;->b(Ljava/lang/Object;)Z

    return-void
.end method
