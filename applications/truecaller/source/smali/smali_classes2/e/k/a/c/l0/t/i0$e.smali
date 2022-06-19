.class public Le/k/a/c/l0/t/i0$e;
.super Le/k/a/c/l0/t/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/a<",
        "[I>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/k/a/c/m0/o;->d:Le/k/a/c/m0/o;

    .line 2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Le/k/a/c/m0/o;->o(Ljava/lang/Class;)Le/k/a/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [I

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/i0$e;Le/k/a/c/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/a;-><init>(Le/k/a/c/l0/t/a;Le/k/a/c/d;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [I

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, [I

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Le/k/a/c/l0/t/a;->q(Le/k/a/c/a0;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    array-length p3, p1

    :goto_0
    if-ge v1, p3, :cond_2

    .line 5
    aget v0, p1, v1

    invoke-virtual {p2, v0}, Le/k/a/b/g;->J0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length p3, p1

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    array-length v0, p1

    invoke-virtual {p2, v0, v1, p3}, Le/k/a/b/g;->b(III)V

    .line 9
    invoke-virtual {p2, p1, p3}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    add-int/2addr p3, v1

    :goto_1
    if-ge v1, p3, :cond_1

    .line 10
    aget v0, p1, v1

    invoke-virtual {p2, v0}, Le/k/a/b/g;->J0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :cond_2
    return-void
.end method

.method public p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j0/h;",
            ")",
            "Le/k/a/c/l0/h<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public r(Le/k/a/c/d;Ljava/lang/Boolean;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/l0/t/i0$e;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/l0/t/i0$e;-><init>(Le/k/a/c/l0/t/i0$e;Le/k/a/c/d;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public s(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, [I

    .line 2
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 3
    aget v1, p1, v0

    invoke-virtual {p2, v1}, Le/k/a/b/g;->J0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
