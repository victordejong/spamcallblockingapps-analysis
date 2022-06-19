.class public abstract Le/k/a/c/c0/l;
.super Le/k/a/c/c0/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Le/k/a/c/c0/e;",
        "T:",
        "Le/k/a/c/c0/l<",
        "TCFG;TT;>;>",
        "Le/k/a/c/c0/k<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final j:I

.field public static final k:I


# instance fields
.field public final c:Le/k/a/c/g0/d0;

.field public final d:Le/k/a/c/j0/d;

.field public final e:Le/k/a/c/v;

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Le/k/a/c/c0/i;

.field public final h:Le/k/a/c/n0/x;

.field public final i:Le/k/a/c/c0/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Le/k/a/c/p;

    invoke-static {v0}, Le/k/a/c/c0/k;->c(Ljava/lang/Class;)I

    move-result v0

    sput v0, Le/k/a/c/c0/l;->j:I

    .line 2
    sget-object v0, Le/k/a/c/p;->g:Le/k/a/c/p;

    .line 3
    iget v0, v0, Le/k/a/c/p;->b:I

    .line 4
    sget-object v1, Le/k/a/c/p;->h:Le/k/a/c/p;

    .line 5
    iget v1, v1, Le/k/a/c/p;->b:I

    or-int/2addr v0, v1

    .line 6
    sget-object v1, Le/k/a/c/p;->i:Le/k/a/c/p;

    .line 7
    iget v1, v1, Le/k/a/c/p;->b:I

    or-int/2addr v0, v1

    .line 8
    sget-object v1, Le/k/a/c/p;->j:Le/k/a/c/p;

    .line 9
    iget v1, v1, Le/k/a/c/p;->b:I

    or-int/2addr v0, v1

    .line 10
    sget-object v1, Le/k/a/c/p;->f:Le/k/a/c/p;

    .line 11
    iget v1, v1, Le/k/a/c/p;->b:I

    or-int/2addr v0, v1

    .line 12
    sput v0, Le/k/a/c/c0/l;->k:I

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/a;Le/k/a/c/j0/d;Le/k/a/c/g0/d0;Le/k/a/c/n0/x;Le/k/a/c/c0/g;)V
    .locals 1

    .line 1
    sget v0, Le/k/a/c/c0/l;->j:I

    invoke-direct {p0, p1, v0}, Le/k/a/c/c0/k;-><init>(Le/k/a/c/c0/a;I)V

    .line 2
    iput-object p3, p0, Le/k/a/c/c0/l;->c:Le/k/a/c/g0/d0;

    .line 3
    iput-object p2, p0, Le/k/a/c/c0/l;->d:Le/k/a/c/j0/d;

    .line 4
    iput-object p4, p0, Le/k/a/c/c0/l;->h:Le/k/a/c/n0/x;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    .line 6
    iput-object p1, p0, Le/k/a/c/c0/l;->f:Ljava/lang/Class;

    .line 7
    sget-object p1, Le/k/a/c/c0/i$a;->c:Le/k/a/c/c0/i$a;

    .line 8
    iput-object p1, p0, Le/k/a/c/c0/l;->g:Le/k/a/c/c0/i;

    .line 9
    iput-object p5, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/l<",
            "TCFG;TT;>;I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Le/k/a/c/c0/k;-><init>(Le/k/a/c/c0/k;I)V

    .line 11
    iget-object p2, p1, Le/k/a/c/c0/l;->c:Le/k/a/c/g0/d0;

    iput-object p2, p0, Le/k/a/c/c0/l;->c:Le/k/a/c/g0/d0;

    .line 12
    iget-object p2, p1, Le/k/a/c/c0/l;->d:Le/k/a/c/j0/d;

    iput-object p2, p0, Le/k/a/c/c0/l;->d:Le/k/a/c/j0/d;

    .line 13
    iget-object p2, p1, Le/k/a/c/c0/l;->h:Le/k/a/c/n0/x;

    iput-object p2, p0, Le/k/a/c/c0/l;->h:Le/k/a/c/n0/x;

    .line 14
    iget-object p2, p1, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    iput-object p2, p0, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    .line 15
    iget-object p2, p1, Le/k/a/c/c0/l;->f:Ljava/lang/Class;

    iput-object p2, p0, Le/k/a/c/c0/l;->f:Ljava/lang/Class;

    .line 16
    iget-object p2, p1, Le/k/a/c/c0/l;->g:Le/k/a/c/c0/i;

    iput-object p2, p0, Le/k/a/c/c0/l;->g:Le/k/a/c/c0/i;

    .line 17
    iget-object p1, p1, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    iput-object p1, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/l;->c:Le/k/a/c/g0/d0;

    .line 2
    iget-object v0, v0, Le/k/a/c/g0/d0;->a:Le/k/a/c/g0/t$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final f(Ljava/lang/Class;)Le/k/a/c/c0/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/c0/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v0, p1}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Le/k/a/c/c0/f$a;->a:Le/k/a/c/c0/f$a;

    :cond_0
    return-object p1
.end method

.method public final g(Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/a/r$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v0, p2}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    move-result-object p2

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/c/c0/l;->i(Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Class;)Le/k/a/a/k$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k$d;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Le/k/a/a/k$d;->h:Le/k/a/a/k$d;

    return-object p1
.end method

.method public final i(Ljava/lang/Class;)Le/k/a/a/r$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v0, p1}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    move-result-object p1

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 3
    iget-object v0, v0, Le/k/a/c/c0/g;->a:Le/k/a/a/r$b;

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/Class;Le/k/a/c/g0/c;)Le/k/a/c/g0/g0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/g0/c;",
            ")",
            "Le/k/a/c/g0/g0<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/a/f$a;->e:Le/k/a/a/f$a;

    iget-object v1, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 2
    iget-object v1, v1, Le/k/a/c/c0/g;->c:Le/k/a/c/g0/g0;

    .line 3
    iget v2, p0, Le/k/a/c/c0/k;->a:I

    sget v3, Le/k/a/c/c0/l;->k:I

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_4

    .line 4
    sget-object v2, Le/k/a/c/p;->g:Le/k/a/c/p;

    invoke-virtual {p0, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    check-cast v1, Le/k/a/c/g0/g0$a;

    .line 6
    invoke-virtual {v1, v0}, Le/k/a/c/g0/g0$a;->e(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v1

    .line 7
    :cond_0
    sget-object v2, Le/k/a/c/p;->h:Le/k/a/c/p;

    invoke-virtual {p0, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    check-cast v1, Le/k/a/c/g0/g0$a;

    .line 9
    invoke-virtual {v1, v0}, Le/k/a/c/g0/g0$a;->f(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v1

    .line 10
    :cond_1
    sget-object v2, Le/k/a/c/p;->i:Le/k/a/c/p;

    invoke-virtual {p0, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    check-cast v1, Le/k/a/c/g0/g0$a;

    .line 12
    invoke-virtual {v1, v0}, Le/k/a/c/g0/g0$a;->g(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v1

    .line 13
    :cond_2
    sget-object v2, Le/k/a/c/p;->j:Le/k/a/c/p;

    invoke-virtual {p0, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    check-cast v1, Le/k/a/c/g0/g0$a;

    .line 15
    invoke-virtual {v1, v0}, Le/k/a/c/g0/g0$a;->h(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v1

    .line 16
    :cond_3
    sget-object v2, Le/k/a/c/p;->f:Le/k/a/c/p;

    invoke-virtual {p0, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    check-cast v1, Le/k/a/c/g0/g0$a;

    .line 18
    invoke-virtual {v1, v0}, Le/k/a/c/g0/g0$a;->d(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v1

    .line 19
    :cond_4
    invoke-virtual {p0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0, p2, v1}, Le/k/a/c/b;->b(Le/k/a/c/g0/c;Le/k/a/c/g0/g0;)Le/k/a/c/g0/g0;

    move-result-object v1

    .line 21
    :cond_5
    iget-object p2, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {p2, p1}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 22
    check-cast v1, Le/k/a/c/g0/g0$a;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v1
.end method

.method public abstract p(I)Le/k/a/c/c0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public q(Le/k/a/c/i;)Le/k/a/c/v;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/c0/l;->h:Le/k/a/c/n0/x;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, p1, p0}, Le/k/a/c/n0/x;->a(Ljava/lang/Class;Le/k/a/c/c0/k;)Le/k/a/c/v;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Class;Le/k/a/c/g0/c;)Le/k/a/a/p$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/g0/c;",
            ")",
            "Le/k/a/a/p$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p0, p2}, Le/k/a/c/b;->H(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/p$a;

    move-result-object p2

    .line 3
    :goto_0
    iget-object v0, p0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v0, p1}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    .line 4
    sget-object p1, Le/k/a/a/p$a;->f:Le/k/a/a/p$a;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public final s(Le/k/a/c/g0/c;)Le/k/a/a/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/g0/c;",
            ")",
            "Le/k/a/a/s$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p0, p1}, Le/k/a/c/b;->K(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/s$a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final varargs t([Le/k/a/c/p;)Le/k/a/c/c0/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le/k/a/c/p;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/c/c0/k;->a:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    iget v3, v3, Le/k/a/c/p;->b:I

    not-int v3, v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Le/k/a/c/c0/k;->a:I

    if-ne v0, p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Le/k/a/c/c0/l;->p(I)Le/k/a/c/c0/l;

    move-result-object p1

    return-object p1
.end method
