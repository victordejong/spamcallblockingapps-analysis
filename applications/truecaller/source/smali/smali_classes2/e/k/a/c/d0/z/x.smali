.class public abstract Le/k/a/c/d0/z/x;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/z/x$d;,
        Le/k/a/c/d0/z/x$e;,
        Le/k/a/c/d0/z/x$g;,
        Le/k/a/c/d0/z/x$f;,
        Le/k/a/c/d0/z/x$h;,
        Le/k/a/c/d0/z/x$b;,
        Le/k/a/c/d0/z/x$a;,
        Le/k/a/c/d0/z/x$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/d0/z/b0<",
        "TT;>;",
        "Le/k/a/c/d0/i;"
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public final d:Ljava/lang/Boolean;

.field public transient e:Ljava/lang/Object;

.field public final f:Le/k/a/c/d0/r;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/x;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/x<",
            "*>;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object p1, p1, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 5
    iput-object p3, p0, Le/k/a/c/d0/z/x;->d:Ljava/lang/Boolean;

    .line 6
    iput-object p2, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/z/x;->d:Ljava/lang/Boolean;

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    sget-object v1, Le/k/a/a/k$a;->a:Le/k/a/a/k$a;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Le/k/a/c/d;->getMetadata()Le/k/a/c/u;

    move-result-object v1

    .line 5
    iget-object v1, v1, Le/k/a/c/u;->g:Le/k/a/a/j0;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 6
    :goto_1
    sget-object v3, Le/k/a/a/j0;->b:Le/k/a/a/j0;

    if-ne v1, v3, :cond_2

    .line 7
    sget-object p1, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    sget-object v2, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    goto :goto_2

    .line 8
    :cond_2
    sget-object v3, Le/k/a/a/j0;->c:Le/k/a/a/j0;

    if-ne v1, v3, :cond_4

    if-nez p2, :cond_3

    .line 9
    iget-object p2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p1

    invoke-static {p1}, Le/k/a/c/d0/y/u;->a(Le/k/a/c/i;)Le/k/a/c/d0/y/u;

    move-result-object v2

    goto :goto_2

    .line 10
    :cond_3
    invoke-interface {p2}, Le/k/a/c/d;->getType()Le/k/a/c/i;

    move-result-object p1

    invoke-virtual {p1}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object p1

    .line 11
    new-instance v2, Le/k/a/c/d0/y/u;

    invoke-interface {p2}, Le/k/a/c/d;->d()Le/k/a/c/v;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Le/k/a/c/d0/y/u;-><init>(Le/k/a/c/v;Le/k/a/c/i;)V

    .line 12
    :cond_4
    :goto_2
    iget-object p1, p0, Le/k/a/c/d0/z/x;->d:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/k/a/c/d0/z/x;->f:Le/k/a/c/d0/r;

    if-ne v2, p1, :cond_5

    return-object p0

    .line 13
    :cond_5
    invoke-virtual {p0, v2, v0}, Le/k/a/c/d0/z/x;->q0(Le/k/a/c/d0/r;Ljava/lang/Boolean;)Le/k/a/c/d0/z/x;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    if-nez p3, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p3, p1}, Le/k/a/c/d0/z/x;->m0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->c(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()Le/k/a/c/n0/a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/n0/a;->b:Le/k/a/c/n0/a;

    return-object v0
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/z/x;->e:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/d0/z/x;->n0()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/d0/z/x;->e:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public abstract m0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract n0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->a:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public o0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->C(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/x;->d:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    sget-object v0, Le/k/a/c/h;->s:Le/k/a/c/h;

    .line 4
    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/x;->p0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public abstract p0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q0(Le/k/a/c/d0/r;Ljava/lang/Boolean;)Le/k/a/c/d0/z/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/k/a/c/d0/z/x<",
            "*>;"
        }
    .end annotation
.end method
