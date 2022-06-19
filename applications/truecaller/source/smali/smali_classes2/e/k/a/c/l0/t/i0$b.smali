.class public Le/k/a/c/l0/t/i0$b;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "[C>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [C

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [C

    .line 2
    array-length p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, [C

    .line 2
    sget-object v0, Le/k/a/c/z;->p:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    array-length p3, p1

    invoke-virtual {p2, p1, p3}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 4
    array-length p3, p1

    :goto_0
    if-ge v0, p3, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p2, p1, v0, v1}, Le/k/a/b/g;->V1([CII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    goto :goto_1

    .line 7
    :cond_1
    array-length p3, p1

    invoke-virtual {p2, p1, v0, p3}, Le/k/a/b/g;->V1([CII)V

    :goto_1
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
    check-cast p1, [C

    .line 2
    sget-object v0, Le/k/a/c/z;->p:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 3
    sget-object p3, Le/k/a/b/m;->l:Le/k/a/b/m;

    .line 4
    invoke-virtual {p4, p1, p3}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p3

    .line 5
    invoke-virtual {p4, p2, p3}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p3

    .line 6
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p2, p1, v0, v2}, Le/k/a/b/g;->V1([CII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p3, Le/k/a/b/m;->p:Le/k/a/b/m;

    .line 9
    invoke-virtual {p4, p1, p3}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p3

    .line 10
    invoke-virtual {p4, p2, p3}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p3

    .line 11
    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Le/k/a/b/g;->V1([CII)V

    .line 12
    :cond_1
    invoke-virtual {p4, p2, p3}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method
