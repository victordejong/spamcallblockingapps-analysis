.class public Le/k/a/c/l0/t/i0$g;
.super Le/k/a/c/l0/t/i0$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/i0$h<",
        "[S>;"
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
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Le/k/a/c/m0/o;->o(Ljava/lang/Class;)Le/k/a/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [S

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/i0$h;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/i0$g;Le/k/a/c/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/i0$h;-><init>(Le/k/a/c/l0/t/i0$h;Le/k/a/c/d;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [S

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
    check-cast p1, [S

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Le/k/a/c/l0/t/a;->q(Le/k/a/c/a0;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/i0$g;->t([SLe/k/a/b/g;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, p1, v0}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 6
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/i0$g;->t([SLe/k/a/b/g;)V

    .line 7
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :goto_0
    return-void
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
    new-instance v0, Le/k/a/c/l0/t/i0$g;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/l0/t/i0$g;-><init>(Le/k/a/c/l0/t/i0$g;Le/k/a/c/d;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic s(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/i0$g;->t([SLe/k/a/b/g;)V

    return-void
.end method

.method public t([SLe/k/a/b/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget-short v2, p1, v1

    invoke-virtual {p2, v2}, Le/k/a/b/g;->J0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
