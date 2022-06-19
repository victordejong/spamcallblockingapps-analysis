.class public Le/k/a/c/l0/s/n;
.super Le/k/a/c/l0/t/a;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/a<",
        "[",
        "Ljava/lang/String;",
        ">;",
        "Le/k/a/c/l0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final f:Le/k/a/c/l0/s/n;


# instance fields
.field public final e:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/k/a/c/m0/o;->d:Le/k/a/c/m0/o;

    .line 2
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/k/a/c/m0/o;->o(Ljava/lang/Class;)Le/k/a/c/i;

    .line 3
    new-instance v0, Le/k/a/c/l0/s/n;

    invoke-direct {v0}, Le/k/a/c/l0/s/n;-><init>()V

    sput-object v0, Le/k/a/c/l0/s/n;->f:Le/k/a/c/l0/s/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/a;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/k/a/c/l0/s/n;->e:Le/k/a/c/n;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/s/n;Le/k/a/c/d;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/n;",
            "Le/k/a/c/d;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p4}, Le/k/a/c/l0/t/a;-><init>(Le/k/a/c/l0/t/a;Le/k/a/c/d;Ljava/lang/Boolean;)V

    .line 4
    iput-object p3, p0, Le/k/a/c/l0/s/n;->e:Le/k/a/c/n;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v1

    .line 2
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, v2}, Le/k/a/c/b;->d(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v2, v1}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 5
    :goto_0
    const-class v2, [Ljava/lang/String;

    sget-object v3, Le/k/a/a/k$a;->f:Le/k/a/a/k$a;

    .line 6
    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v3}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Le/k/a/c/l0/s/n;->e:Le/k/a/c/n;

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/l0/t/q0;->k(Le/k/a/c/a0;Le/k/a/c/d;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v1

    if-nez v1, :cond_3

    .line 10
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Le/k/a/c/a0;->v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v1

    .line 11
    :cond_3
    invoke-static {v1}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 12
    :goto_2
    iget-object p1, p0, Le/k/a/c/l0/s/n;->e:Le/k/a/c/n;

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    .line 13
    :cond_5
    new-instance p1, Le/k/a/c/l0/s/n;

    invoke-direct {p1, p0, p2, v0, v2}, Le/k/a/c/l0/s/n;-><init>(Le/k/a/c/l0/s/n;Le/k/a/c/d;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, [Ljava/lang/String;

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
    check-cast p1, [Ljava/lang/String;

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    sget-object v1, Le/k/a/c/z;->v:Le/k/a/c/z;

    .line 4
    invoke-virtual {p3, v1}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/n;->t([Ljava/lang/String;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2, p1, v0}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/n;->t([Ljava/lang/String;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 8
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :goto_0
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
    .locals 2
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
    new-instance v0, Le/k/a/c/l0/s/n;

    iget-object v1, p0, Le/k/a/c/l0/s/n;->e:Le/k/a/c/n;

    invoke-direct {v0, p0, p1, v1, p2}, Le/k/a/c/l0/s/n;-><init>(Le/k/a/c/l0/s/n;Le/k/a/c/d;Le/k/a/c/n;Ljava/lang/Boolean;)V

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
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/s/n;->t([Ljava/lang/String;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public t([Ljava/lang/String;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/s/n;->e:Le/k/a/c/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    aget-object v3, p1, v2

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_1

    .line 6
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v1, v3, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_5

    .line 7
    aget-object p3, p1, v2

    if-nez p3, :cond_4

    .line 8
    invoke-virtual {p2}, Le/k/a/b/g;->D0()V

    goto :goto_3

    .line 9
    :cond_4
    aget-object p3, p1, v2

    invoke-virtual {p2, p3}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
