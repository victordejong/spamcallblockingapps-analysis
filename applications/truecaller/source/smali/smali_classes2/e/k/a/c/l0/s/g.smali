.class public final Le/k/a/c/l0/s/g;
.super Le/k/a/c/l0/t/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/h0<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final d:Le/k/a/c/l0/s/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/s/g;

    invoke-direct {v0}, Le/k/a/c/l0/s/g;-><init>()V

    sput-object v0, Le/k/a/c/l0/s/g;->d:Le/k/a/c/l0/s/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/h0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/s/g;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Le/k/a/c/l0/t/h0;-><init>(Le/k/a/c/l0/t/h0;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v2, p0, Le/k/a/c/l0/t/h0;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    sget-object v2, Le/k/a/c/z;->v:Le/k/a/c/z;

    .line 4
    invoke-virtual {p3, v2}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Le/k/a/c/l0/t/h0;->c:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v1}, Le/k/a/c/l0/s/g;->q(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2, p1, v0}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Le/k/a/c/l0/s/g;->q(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;I)V

    .line 8
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    .line 3
    invoke-virtual {p4, p1, v0}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 4
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object v0

    .line 5
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, p3, v1}, Le/k/a/c/l0/s/g;->q(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;I)V

    .line 7
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public p(Le/k/a/c/d;Ljava/lang/Boolean;)Le/k/a/c/n;
    .locals 0
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
    new-instance p1, Le/k/a/c/l0/s/g;

    invoke-direct {p1, p0, p2}, Le/k/a/c/l0/s/g;-><init>(Le/k/a/c/l0/s/g;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public final q(Ljava/util/List;Le/k/a/b/g;Le/k/a/c/a0;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2, v1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p0, p3, p2, p1, v0}, Le/k/a/c/l0/t/q0;->n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method
