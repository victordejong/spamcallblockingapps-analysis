.class public final Le/m/a/h/a/a/p;
.super Le/m/a/h/a/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/a/l<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/h/a/a/p;->c:Le/m/a/h/a/a/t;

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/h/a/a/l;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final O0(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Le/m/a/h/a/a/l;->O0(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object p2, p0, Le/m/a/h/a/a/p;->c:Le/m/a/h/a/a/t;

    .line 2
    iget-object p2, p2, Le/m/a/h/a/a/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Expected keepingAlive to be true, but was false."

    .line 5
    invoke-virtual {p2, v1, v0}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const-string p2, "keep_alive"

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/m/a/h/a/a/p;->c:Le/m/a/h/a/a/t;

    .line 7
    invoke-virtual {p1}, Le/m/a/h/a/a/t;->zzf()V

    :cond_1
    return-void
.end method
