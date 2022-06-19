.class public final Ls1/a/a/a/v0/j/t/b;
.super Ls1/a/a/a/v0/j/t/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/j/t/g<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/j/t/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/b/a0;",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/b/a0;",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/j/t/g;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ls1/a/a/a/v0/j/t/b;->b:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/b;->b:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->y(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->r(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method
