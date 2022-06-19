.class public final Ls1/a/a/a/v0/k/b/g0/n;
.super Ls1/a/a/a/v0/k/b/g0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/z/b/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compute"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/k/b/g0/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
