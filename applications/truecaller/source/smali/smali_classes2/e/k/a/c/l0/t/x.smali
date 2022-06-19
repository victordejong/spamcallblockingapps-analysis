.class public Le/k/a/c/l0/t/x;
.super Le/k/a/c/l0/t/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/w<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j$b;->e:Le/k/a/b/j$b;

    const-string v1, "number"

    invoke-direct {p0, p1, v0, v1}, Le/k/a/c/l0/t/w;-><init>(Ljava/lang/Class;Le/k/a/b/j$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Le/k/a/b/g;->F0(D)V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p3, p1

    check-cast p3, Ljava/lang/Double;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    .line 5
    invoke-virtual {p4, p1, v0}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p1

    .line 6
    invoke-virtual {p4, p2, p1}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Le/k/a/b/g;->F0(D)V

    .line 8
    invoke-virtual {p4, p2, p1}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Le/k/a/b/g;->F0(D)V

    :goto_2
    return-void
.end method
