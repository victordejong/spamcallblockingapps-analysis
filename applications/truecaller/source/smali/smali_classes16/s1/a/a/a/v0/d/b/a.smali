.class public abstract Ls1/a/a/a/v0/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/b/a$a;,
        Ls1/a/a/a/v0/d/b/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/k/b/c<",
        "TA;TC;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/d/b/l;",
            "Ls1/a/a/a/v0/d/b/a$b<",
            "TA;TC;>;>;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/d/b/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ls1/a/a/a/v0/f/b;

    .line 1
    sget-object v1, Ls1/a/a/a/v0/d/a/v;->a:Ls1/a/a/a/v0/f/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Ls1/a/a/a/v0/d/a/v;->c:Ls1/a/a/a/v0/f/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Ls1/a/a/a/v0/d/a/v;->d:Ls1/a/a/a/v0/f/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "java.lang.annotation.Target"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "java.lang.annotation.Retention"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "java.lang.annotation.Documented"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ls1/a/a/a/v0/f/b;

    .line 11
    invoke-static {v2}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/b/a;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/b/k;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/a;->b:Ls1/a/a/a/v0/d/b/k;

    .line 2
    new-instance p2, Ls1/a/a/a/v0/d/b/a$d;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/b/a$d;-><init>(Ls1/a/a/a/v0/d/b/a;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/a;->a:Ls1/a/a/a/v0/l/g;

    return-void
.end method

.method public static final k(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/b/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ls1/a/a/a/v0/d/b/a;->s(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic m(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-virtual/range {v2 .. v8}, Ls1/a/a/a/v0/d/b/a;->l(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic o(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/b;ZILjava/lang/Object;)Ls1/a/a/a/v0/d/b/o;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/d/b/a;->n(Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/b;Z)Ls1/a/a/a/v0/d/b/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;ZZZILjava/lang/Object;)Ls1/a/a/a/v0/d/b/o;
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v2 .. v8}, Ls1/a/a/a/v0/d/b/a;->p(Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;ZZZ)Ls1/a/a/a/v0/d/b/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;ILs1/a/a/a/v0/e/u;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/k/b/b;",
            "I",
            "Ls1/a/a/a/v0/e/u;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callableProto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 2
    iget-object v4, p1, Ls1/a/a/a/v0/k/b/y;->b:Ls1/a/a/a/v0/e/z/e;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    .line 3
    invoke-static/range {v1 .. v8}, Ls1/a/a/a/v0/d/b/a;->o(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/b;ZILjava/lang/Object;)Ls1/a/a/a/v0/d/b/o;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 4
    instance-of p5, p2, Ls1/a/a/a/v0/e/i;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    check-cast p2, Ls1/a/a/a/v0/e/i;

    invoke-static {p2}, Le/q/f/a/d/a;->l1(Ls1/a/a/a/v0/e/i;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 5
    :cond_0
    instance-of p5, p2, Ls1/a/a/a/v0/e/n;

    if-eqz p5, :cond_1

    check-cast p2, Ls1/a/a/a/v0/e/n;

    invoke-static {p2}, Le/q/f/a/d/a;->m1(Ls1/a/a/a/v0/e/n;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 6
    :cond_1
    instance-of p5, p2, Ls1/a/a/a/v0/e/d;

    if-eqz p5, :cond_4

    .line 7
    move-object p2, p1

    check-cast p2, Ls1/a/a/a/v0/k/b/y$a;

    .line 8
    iget-object p5, p2, Ls1/a/a/a/v0/k/b/y$a;->e:Ls1/a/a/a/v0/e/c$c;

    .line 9
    sget-object v2, Ls1/a/a/a/v0/e/c$c;->d:Ls1/a/a/a/v0/e/c$c;

    if-ne p5, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean p2, p2, Ls1/a/a/a/v0/k/b/y$a;->f:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    add-int/2addr p4, v0

    const-string p2, "signature"

    .line 11
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Ls1/a/a/a/v0/d/b/o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object p3, p3, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x40

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v2, p2, p3}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 15
    invoke-static/range {v0 .. v8}, Ls1/a/a/a/v0/d/b/a;->m(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p3, "Unsupported message: "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/k/b/y$a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y$a;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/a;->u(Ls1/a/a/a/v0/k/b/y$a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v1, Ls1/a/a/a/v0/d/b/a$c;

    invoke-direct {v1, p0, p1}, Ls1/a/a/a/v0/d/b/a$c;-><init>(Ls1/a/a/a/v0/d/b/a;Ljava/util/ArrayList;)V

    const-string v2, "kotlinClass"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v1, v2}, Ls1/a/a/a/v0/d/b/l;->c(Ls1/a/a/a/v0/d/b/l$c;[B)V

    return-object p1

    :cond_0
    const-string v0, "Class for loading annotations is not found: "

    .line 6
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/y$a;->d:Ls1/a/a/a/v0/f/a;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    const-string v1, "classId.asSingleFqName()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/g;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/g;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 2
    iget p2, p2, Ls1/a/a/a/v0/e/g;->d:I

    .line 3
    invoke-interface {v0, p2}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/k/b/y$a;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/y$a;->d:Ls1/a/a/a/v0/f/a;

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(container as ProtoConta\u2026Class).classId.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/e/a0/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 7
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Ls1/a/a/a/v0/d/b/o;

    const/16 v1, 0x23

    invoke-static {p2, v1, v0}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {v4, p2, v0}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 9
    invoke-static/range {v2 .. v10}, Ls1/a/a/a/v0/d/b/a;->m(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/a/a/a/v0/e/s;Ls1/a/a/a/v0/e/z/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/e/s;",
            "Ls1/a/a/a/v0/e/z/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Ls1/a/a/a/v0/e/a0/a;->h:Ls1/a/a/a/v0/h/h$f;

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "proto.getExtension(JvmPr\u2026.typeParameterAnnotation)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ls1/a/a/a/v0/e/b;

    const-string v4, "it"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Ls1/a/a/a/v0/d/b/c;

    .line 6
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v4, v4, Ls1/a/a/a/v0/d/b/c;->d:Ls1/a/a/a/v0/k/b/e;

    invoke-virtual {v4, v3, p2}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public e(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/m/e0;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/n;",
            "Ls1/a/a/a/v0/m/e0;",
            ")TC;"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedType"

    move-object/from16 v9, p3

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/z/b;->z:Ls1/a/a/a/v0/e/z/b$b;

    .line 2
    iget v1, v8, Ls1/a/a/a/v0/e/n;->d:I

    .line 3
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/z/b$b;->f(I)Ljava/lang/Boolean;

    move-result-object v4

    .line 4
    invoke-static {p2}, Ls1/a/a/a/v0/e/a0/b/h;->d(Ls1/a/a/a/v0/e/n;)Z

    move-result v5

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/d/b/a;->r(Ls1/a/a/a/v0/k/b/y;ZZLjava/lang/Boolean;Z)Ls1/a/a/a/v0/d/b/l;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, v7, Ls1/a/a/a/v0/k/b/y$a;

    if-eqz v0, :cond_1

    move-object v0, v7

    check-cast v0, Ls1/a/a/a/v0/k/b/y$a;

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/d/b/a;->u(Ls1/a/a/a/v0/k/b/y$a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object v0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object v11, v10

    :goto_1
    if-eqz v11, :cond_b

    .line 7
    invoke-interface {v11}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v0

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    .line 9
    sget-object v1, Ls1/a/a/a/v0/d/b/d;->g:Ls1/a/a/a/v0/d/b/d$a;

    .line 10
    sget-object v1, Ls1/a/a/a/v0/d/b/d;->f:Ls1/a/a/a/v0/e/a0/b/f;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget v2, v1, Ls1/a/a/a/v0/e/z/a;->a:I

    iget v3, v1, Ls1/a/a/a/v0/e/z/a;->b:I

    iget v1, v1, Ls1/a/a/a/v0/e/z/a;->c:I

    .line 13
    iget v4, v0, Ls1/a/a/a/v0/e/z/a;->a:I

    const/4 v5, 0x1

    if-le v4, v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    if-ge v4, v2, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget v2, v0, Ls1/a/a/a/v0/e/z/a;->b:I

    if-le v2, v3, :cond_4

    goto :goto_3

    :cond_4
    if-ge v2, v3, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    iget v0, v0, Ls1/a/a/a/v0/e/z/a;->c:I

    if-lt v0, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v12

    .line 16
    :goto_3
    iget-object v2, v7, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 17
    iget-object v3, v7, Ls1/a/a/a/v0/k/b/y;->b:Ls1/a/a/a/v0/e/z/e;

    .line 18
    sget-object v4, Ls1/a/a/a/v0/k/b/b;->b:Ls1/a/a/a/v0/k/b/b;

    move-object v0, p0

    move-object v1, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Ls1/a/a/a/v0/d/b/a;->n(Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/b;Z)Ls1/a/a/a/v0/d/b/o;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 20
    iget-object v1, v6, Ls1/a/a/a/v0/d/b/a;->a:Ls1/a/a/a/v0/l/g;

    check-cast v1, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v1, v11}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/d/b/a$b;

    .line 21
    iget-object v1, v1, Ls1/a/a/a/v0/d/b/a$b;->b:Ljava/util/Map;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 23
    invoke-static/range {p3 .. p3}, Ls1/a/a/a/v0/a/n;->a(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24
    check-cast v0, Ls1/a/a/a/v0/j/t/g;

    const-string v1, "constant"

    .line 25
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v1, v0, Ls1/a/a/a/v0/j/t/d;

    if-eqz v1, :cond_7

    new-instance v1, Ls1/a/a/a/v0/j/t/x;

    check-cast v0, Ls1/a/a/a/v0/j/t/d;

    .line 27
    iget-object v0, v0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 28
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/j/t/x;-><init>(B)V

    :goto_4
    move-object v0, v1

    goto :goto_5

    .line 29
    :cond_7
    instance-of v1, v0, Ls1/a/a/a/v0/j/t/v;

    if-eqz v1, :cond_8

    new-instance v1, Ls1/a/a/a/v0/j/t/a0;

    check-cast v0, Ls1/a/a/a/v0/j/t/v;

    .line 30
    iget-object v0, v0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 31
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/j/t/a0;-><init>(S)V

    goto :goto_4

    .line 32
    :cond_8
    instance-of v1, v0, Ls1/a/a/a/v0/j/t/n;

    if-eqz v1, :cond_9

    new-instance v1, Ls1/a/a/a/v0/j/t/y;

    check-cast v0, Ls1/a/a/a/v0/j/t/n;

    .line 33
    iget-object v0, v0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 34
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/j/t/y;-><init>(I)V

    goto :goto_4

    .line 35
    :cond_9
    instance-of v1, v0, Ls1/a/a/a/v0/j/t/t;

    if-eqz v1, :cond_a

    new-instance v1, Ls1/a/a/a/v0/j/t/z;

    check-cast v0, Ls1/a/a/a/v0/j/t/t;

    .line 36
    iget-object v0, v0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 37
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/j/t/z;-><init>(J)V

    goto :goto_4

    :cond_a
    :goto_5
    return-object v0

    :cond_b
    return-object v10
.end method

.method public f(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/n;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/b/a$a;->b:Ls1/a/a/a/v0/d/b/a$a;

    invoke-virtual {p0, p1, p2, v0}, Ls1/a/a/a/v0/d/b/a;->t(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/d/b/a$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/k/b/b;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 2
    iget-object v4, p1, Ls1/a/a/a/v0/k/b/y;->b:Ls1/a/a/a/v0/e/z/e;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    .line 3
    invoke-static/range {v1 .. v8}, Ls1/a/a/a/v0/d/b/a;->o(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/b;ZILjava/lang/Object;)Ls1/a/a/a/v0/d/b/o;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    const-string v0, "signature"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Ls1/a/a/a/v0/d/b/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object p2, p2, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x40

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v3, p2, p3}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-static/range {v1 .. v9}, Ls1/a/a/a/v0/d/b/a;->m(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public h(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/z/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/e/q;",
            "Ls1/a/a/a/v0/e/z/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Ls1/a/a/a/v0/e/a0/a;->f:Ls1/a/a/a/v0/h/h$f;

    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/h$d;->f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ls1/a/a/a/v0/e/b;

    const-string v4, "it"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Ls1/a/a/a/v0/d/b/c;

    .line 6
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v4, v4, Ls1/a/a/a/v0/d/b/c;->d:Ls1/a/a/a/v0/k/b/e;

    invoke-virtual {v4, v3, p2}, Ls1/a/a/a/v0/k/b/e;->a(Ls1/a/a/a/v0/e/b;Ls1/a/a/a/v0/e/z/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public i(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/k/b/b;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/k/b/b;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v2, "container"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "proto"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Ls1/a/a/a/v0/k/b/b;->b:Ls1/a/a/a/v0/k/b/b;

    if-ne p3, v2, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Ls1/a/a/a/v0/e/n;

    sget-object v2, Ls1/a/a/a/v0/d/b/a$a;->a:Ls1/a/a/a/v0/d/b/a$a;

    invoke-virtual {p0, p1, v0, v2}, Ls1/a/a/a/v0/d/b/a;->t(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/d/b/a$a;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v4, p1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 4
    iget-object v5, p1, Ls1/a/a/a/v0/k/b/y;->b:Ls1/a/a/a/v0/e/z/e;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    .line 5
    invoke-static/range {v2 .. v9}, Ls1/a/a/a/v0/d/b/a;->o(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/b;ZILjava/lang/Object;)Ls1/a/a/a/v0/d/b/o;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 6
    invoke-static/range {v0 .. v8}, Ls1/a/a/a/v0/d/b/a;->m(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public j(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/n;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/b/a$a;->c:Ls1/a/a/a/v0/d/b/a$a;

    invoke-virtual {p0, p1, p2, v0}, Ls1/a/a/a/v0/d/b/a;->t(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/d/b/a$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/d/b/o;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Ls1/a/a/a/v0/d/b/a;->r(Ls1/a/a/a/v0/k/b/y;ZZLjava/lang/Boolean;Z)Ls1/a/a/a/v0/d/b/l;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p3, p1, Ls1/a/a/a/v0/k/b/y$a;

    if-eqz p3, :cond_1

    check-cast p1, Ls1/a/a/a/v0/k/b/y$a;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/a;->u(Ls1/a/a/a/v0/k/b/y$a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/a;->a:Ls1/a/a/a/v0/l/g;

    check-cast p1, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {p1, p3}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/b/a$b;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/d/b/a$b;->a:Ljava/util/Map;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method public final n(Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/k/b/b;Z)Ls1/a/a/a/v0/d/b/o;
    .locals 9

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object p4, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    check-cast p1, Ls1/a/a/a/v0/e/d;

    invoke-virtual {p4, p1, p2, p3}, Ls1/a/a/a/v0/e/a0/b/h;->a(Ls1/a/a/a/v0/e/d;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/a0/b/e$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/d/b/o;->b(Ls1/a/a/a/v0/e/a0/b/e;)Ls1/a/a/a/v0/d/b/o;

    move-result-object v1

    goto/16 :goto_1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    instance-of v0, p1, Ls1/a/a/a/v0/e/i;

    if-eqz v0, :cond_3

    .line 5
    sget-object p4, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    check-cast p1, Ls1/a/a/a/v0/e/i;

    invoke-virtual {p4, p1, p2, p3}, Ls1/a/a/a/v0/e/a0/b/h;->c(Ls1/a/a/a/v0/e/i;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/a0/b/e$b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ls1/a/a/a/v0/d/b/o;->b(Ls1/a/a/a/v0/e/a0/b/e;)Ls1/a/a/a/v0/d/b/o;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    return-object v1

    .line 6
    :cond_3
    instance-of v0, p1, Ls1/a/a/a/v0/e/n;

    if-eqz v0, :cond_7

    .line 7
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/h/h$d;

    sget-object v2, Ls1/a/a/a/v0/e/a0/a;->d:Ls1/a/a/a/v0/h/h$f;

    const-string v3, "propertySignature"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Le/q/f/a/d/a;->K0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/e/a0/a$d;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 v2, 0x1

    if-eq p4, v2, :cond_6

    const/4 p1, 0x2

    const-string p3, "desc"

    const-string p5, "name"

    const-string v2, "signature"

    const-string v3, "nameResolver"

    if-eq p4, p1, :cond_5

    const/4 p1, 0x3

    if-eq p4, p1, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/a0/a$d;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10
    iget-object p1, v0, Ls1/a/a/a/v0/e/a0/a$d;->f:Ls1/a/a/a/v0/e/a0/a$c;

    const-string p4, "signature.setter"

    .line 11
    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget p4, p1, Ls1/a/a/a/v0/e/a0/a$c;->c:I

    .line 14
    invoke-interface {p2, p4}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 15
    iget p1, p1, Ls1/a/a/a/v0/e/a0/a$c;->d:I

    .line 16
    invoke-interface {p2, p1}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p4, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p2, Ls1/a/a/a/v0/d/b/o;

    invoke-static {p4, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/a0/a$d;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, v0, Ls1/a/a/a/v0/e/a0/a$d;->e:Ls1/a/a/a/v0/e/a0/a$c;

    const-string p4, "signature.getter"

    .line 21
    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget p4, p1, Ls1/a/a/a/v0/e/a0/a$c;->c:I

    .line 24
    invoke-interface {p2, p4}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 25
    iget p1, p1, Ls1/a/a/a/v0/e/a0/a$c;->d:I

    .line 26
    invoke-interface {p2, p1}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p4, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p2, Ls1/a/a/a/v0/d/b/o;

    invoke-static {p4, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    :goto_0
    move-object v1, p2

    goto :goto_1

    .line 29
    :cond_6
    move-object v3, p1

    check-cast v3, Ls1/a/a/a/v0/e/n;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Ls1/a/a/a/v0/d/b/a;->p(Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;ZZZ)Ls1/a/a/a/v0/d/b/o;

    move-result-object v1

    :cond_7
    :goto_1
    return-object v1
.end method

.method public final p(Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;ZZZ)Ls1/a/a/a/v0/d/b/o;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/a0/a;->d:Ls1/a/a/a/v0/h/h$f;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/q/f/a/d/a;->K0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/e/a0/a$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_1

    .line 2
    sget-object p4, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    invoke-virtual {p4, p1, p2, p3, p6}, Ls1/a/a/a/v0/e/a0/b/h;->b(Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Z)Ls1/a/a/a/v0/e/a0/b/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/d/b/o;->b(Ls1/a/a/a/v0/e/a0/b/e;)Ls1/a/a/a/v0/d/b/o;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    if-eqz p5, :cond_3

    .line 4
    iget p1, v0, Ls1/a/a/a/v0/e/a0/a$d;->b:I

    const/4 p3, 0x2

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    iget-object p1, v0, Ls1/a/a/a/v0/e/a0/a$d;->d:Ls1/a/a/a/v0/e/a0/a$c;

    const-string p3, "signature.syntheticMethod"

    .line 6
    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "nameResolver"

    .line 7
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "signature"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget p3, p1, Ls1/a/a/a/v0/e/a0/a$c;->c:I

    .line 9
    invoke-interface {p2, p3}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 10
    iget p1, p1, Ls1/a/a/a/v0/e/a0/a$c;->d:I

    .line 11
    invoke-interface {p2, p1}, Ls1/a/a/a/v0/e/z/c;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "name"

    .line 12
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "desc"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p2, Ls1/a/a/a/v0/d/b/o;

    invoke-static {p3, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Ls1/a/a/a/v0/d/b/o;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-object p2

    :cond_3
    return-object v1
.end method

.method public final r(Ls1/a/a/a/v0/k/b/y;ZZLjava/lang/Boolean;Z)Ls1/a/a/a/v0/d/b/l;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/c$c;->c:Ls1/a/a/a/v0/e/c$c;

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    .line 2
    instance-of p2, p1, Ls1/a/a/a/v0/k/b/y$a;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ls1/a/a/a/v0/k/b/y$a;

    .line 3
    iget-object v2, p2, Ls1/a/a/a/v0/k/b/y$a;->e:Ls1/a/a/a/v0/e/c$c;

    if-ne v2, v0, :cond_0

    .line 4
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/a;->b:Ls1/a/a/a/v0/d/b/k;

    .line 5
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/y$a;->d:Ls1/a/a/a/v0/f/a;

    const-string p3, "DefaultImpls"

    .line 6
    invoke-static {p3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p3

    invoke-virtual {p2, p3}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object p2

    const-string p3, "container.classId.create\u2026EFAULT_IMPLS_CLASS_NAME))"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1, p2}, Le/q/f/a/d/a;->q0(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Ls1/a/a/a/v0/k/b/y$b;

    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/y;->c:Ls1/a/a/a/v0/b/r0;

    .line 10
    instance-of p4, p2, Ls1/a/a/a/v0/d/b/g;

    if-nez p4, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Ls1/a/a/a/v0/d/b/g;

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p2, Ls1/a/a/a/v0/d/b/g;->c:Ls1/a/a/a/v0/j/w/b;

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_4

    .line 12
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/a;->b:Ls1/a/a/a/v0/d/b/k;

    new-instance p3, Ls1/a/a/a/v0/f/b;

    invoke-virtual {p2}, Ls1/a/a/a/v0/j/w/b;->e()Ljava/lang/String;

    move-result-object p2

    const-string p4, "facadeClassName.internalName"

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x2f

    const/16 p5, 0x2e

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p4, p5, v0, v1}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p2

    const-string p3, "ClassId.topLevel(FqName(\u2026lName.replace(\'/\', \'.\')))"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->q0(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isConst should not be null for property (container="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-eqz p3, :cond_6

    .line 14
    instance-of p2, p1, Ls1/a/a/a/v0/k/b/y$a;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Ls1/a/a/a/v0/k/b/y$a;

    .line 15
    iget-object p3, p2, Ls1/a/a/a/v0/k/b/y$a;->e:Ls1/a/a/a/v0/e/c$c;

    .line 16
    sget-object p4, Ls1/a/a/a/v0/e/c$c;->h:Ls1/a/a/a/v0/e/c$c;

    if-ne p3, p4, :cond_6

    .line 17
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/y$a;->h:Ls1/a/a/a/v0/k/b/y$a;

    if-eqz p2, :cond_6

    .line 18
    iget-object p3, p2, Ls1/a/a/a/v0/k/b/y$a;->e:Ls1/a/a/a/v0/e/c$c;

    .line 19
    sget-object p4, Ls1/a/a/a/v0/e/c$c;->b:Ls1/a/a/a/v0/e/c$c;

    if-eq p3, p4, :cond_5

    sget-object p4, Ls1/a/a/a/v0/e/c$c;->d:Ls1/a/a/a/v0/e/c$c;

    if-eq p3, p4, :cond_5

    if-eqz p5, :cond_6

    if-eq p3, v0, :cond_5

    sget-object p4, Ls1/a/a/a/v0/e/c$c;->f:Ls1/a/a/a/v0/e/c$c;

    if-ne p3, p4, :cond_6

    .line 20
    :cond_5
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/d/b/a;->u(Ls1/a/a/a/v0/k/b/y$a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    instance-of p2, p1, Ls1/a/a/a/v0/k/b/y$b;

    if-eqz p2, :cond_8

    .line 22
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/y;->c:Ls1/a/a/a/v0/b/r0;

    .line 23
    instance-of p2, p1, Ls1/a/a/a/v0/d/b/g;

    if-eqz p2, :cond_8

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    .line 24
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/d/b/g;

    .line 25
    iget-object p2, p1, Ls1/a/a/a/v0/d/b/g;->d:Ls1/a/a/a/v0/d/b/l;

    if-eqz p2, :cond_7

    goto :goto_1

    .line 26
    :cond_7
    iget-object p2, p0, Ls1/a/a/a/v0/d/b/a;->b:Ls1/a/a/a/v0/d/b/k;

    invoke-virtual {p1}, Ls1/a/a/a/v0/d/b/g;->d()Ls1/a/a/a/v0/f/a;

    move-result-object p1

    invoke-static {p2, p1}, Le/q/f/a/d/a;->q0(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object p2

    :goto_1
    return-object p2

    :cond_8
    return-object v1
.end method

.method public abstract s(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/b/r0;",
            "Ljava/util/List<",
            "TA;>;)",
            "Ls1/a/a/a/v0/d/b/l$a;"
        }
    .end annotation
.end method

.method public final t(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/d/b/a$a;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/y;",
            "Ls1/a/a/a/v0/e/n;",
            "Ls1/a/a/a/v0/d/b/a$a;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v0, p3

    .line 1
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    sget-object v3, Ls1/a/a/a/v0/e/z/b;->z:Ls1/a/a/a/v0/e/z/b$b;

    move-object/from16 v5, p2

    .line 2
    iget v4, v5, Ls1/a/a/a/v0/e/n;->d:I

    const-string v6, "Flags.IS_CONST.get(proto.flags)"

    .line 3
    invoke-static {v3, v4, v6}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v3

    .line 4
    invoke-static/range {p2 .. p2}, Ls1/a/a/a/v0/e/a0/b/h;->d(Ls1/a/a/a/v0/e/n;)Z

    move-result v13

    .line 5
    sget-object v4, Ls1/a/a/a/v0/d/b/a$a;->a:Ls1/a/a/a/v0/d/b/a$a;

    if-ne v0, v4, :cond_1

    .line 6
    iget-object v6, v1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 7
    iget-object v7, v1, Ls1/a/a/a/v0/k/b/y;->b:Ls1/a/a/a/v0/e/z/e;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x28

    const/4 v12, 0x0

    move-object v4, p0

    move-object/from16 v5, p2

    .line 8
    invoke-static/range {v4 .. v12}, Ls1/a/a/a/v0/d/b/a;->q(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;ZZZILjava/lang/Object;)Ls1/a/a/a/v0/d/b/o;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v13

    move v7, v8

    move-object v8, v9

    .line 10
    invoke-static/range {v0 .. v8}, Ls1/a/a/a/v0/d/b/a;->m(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2

    .line 11
    :cond_1
    iget-object v6, v1, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    .line 12
    iget-object v7, v1, Ls1/a/a/a/v0/k/b/y;->b:Ls1/a/a/a/v0/e/z/e;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    const/4 v12, 0x0

    move-object v4, p0

    move-object/from16 v5, p2

    .line 13
    invoke-static/range {v4 .. v12}, Ls1/a/a/a/v0/d/b/a;->q(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/e/n;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;ZZZILjava/lang/Object;)Ls1/a/a/a/v0/d/b/o;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 14
    iget-object v5, v4, Ls1/a/a/a/v0/d/b/o;->a:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "$delegate"

    .line 15
    invoke-static {v5, v8, v7, v6}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v5

    .line 16
    sget-object v6, Ls1/a/a/a/v0/d/b/a$a;->c:Ls1/a/a/a/v0/d/b/a$a;

    if-ne v0, v6, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-eq v5, v7, :cond_3

    return-object v2

    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v13

    .line 18
    invoke-virtual/range {v0 .. v6}, Ls1/a/a/a/v0/d/b/a;->l(Ls1/a/a/a/v0/k/b/y;Ls1/a/a/a/v0/d/b/o;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v2
.end method

.method public final u(Ls1/a/a/a/v0/k/b/y$a;)Ls1/a/a/a/v0/d/b/l;
    .locals 2

    .line 1
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/y;->c:Ls1/a/a/a/v0/b/r0;

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/d/b/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ls1/a/a/a/v0/d/b/n;

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p1, Ls1/a/a/a/v0/d/b/n;->b:Ls1/a/a/a/v0/d/b/l;

    :cond_1
    return-object v1
.end method
