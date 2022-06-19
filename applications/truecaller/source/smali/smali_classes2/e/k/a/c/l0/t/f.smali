.class public Le/k/a/c/l0/t/f;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "[B>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [B

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [B

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
    check-cast p1, [B

    .line 2
    iget-object p3, p3, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 3
    iget-object p3, p3, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 4
    iget-object p3, p3, Le/k/a/c/c0/a;->k:Le/k/a/b/a;

    const/4 v0, 0x0

    .line 5
    array-length v1, p1

    invoke-virtual {p2, p3, p1, v0, v1}, Le/k/a/b/g;->S(Le/k/a/b/a;[BII)V

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
    check-cast p1, [B

    .line 2
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    .line 3
    invoke-virtual {p4, p1, v0}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 4
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object v0

    .line 5
    iget-object p3, p3, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 6
    iget-object p3, p3, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 7
    iget-object p3, p3, Le/k/a/c/c0/a;->k:Le/k/a/b/a;

    const/4 v1, 0x0

    .line 8
    array-length v2, p1

    invoke-virtual {p2, p3, p1, v1, v2}, Le/k/a/b/g;->S(Le/k/a/b/a;[BII)V

    .line 9
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method
