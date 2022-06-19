.class public final Ls1/a/a/a/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/b;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/u0/h<",
        "+",
        "Ljava/lang/reflect/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls1/a/a/a/b$a;->b:I

    iput-object p2, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    sget-object v4, Ls1/a/a/a/u0/a$b;->a:Ls1/a/a/a/u0/a$b;

    sget-object v9, Ls1/a/a/a/u0/a$b;->b:Ls1/a/a/a/u0/a$b;

    iget v0, p0, Ls1/a/a/a/b$a;->b:I

    const-string v1, "it"

    const/4 v2, 0x0

    const-string v3, "_parameters()"

    const-string v5, "desc"

    const/16 v6, 0xa

    if-eqz v0, :cond_e

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_d

    .line 1
    sget-object v10, Ls1/a/a/a/u0/a$a;->a:Ls1/a/a/a/u0/a$a;

    sget-object v0, Ls1/a/a/a/q0;->b:Ls1/a/a/a/q0;

    iget-object v0, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/b;

    invoke-virtual {v0}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/q0;->d(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e;

    move-result-object v0

    .line 2
    instance-of v11, v0, Ls1/a/a/a/e$e;

    if-eqz v11, :cond_2

    .line 3
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 4
    iget-object v9, v1, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 5
    check-cast v0, Ls1/a/a/a/e$e;

    .line 6
    iget-object v0, v0, Ls1/a/a/a/e$e;->b:Ls1/a/a/a/v0/e/a0/b/e$b;

    .line 7
    iget-object v3, v0, Ls1/a/a/a/v0/e/a0/b/e$b;->a:Ljava/lang/String;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/e/a0/b/e$b;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Ls1/a/a/a/b;->b()Ls1/a/a/a/u0/h;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/u0/h;->c()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    xor-int/lit8 v14, v1, 0x1

    .line 10
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<init>"

    .line 11
    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_1

    .line 13
    invoke-interface {v9}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    invoke-virtual {v9, v1, v0, v2}, Ls1/a/a/a/n;->d(Ljava/util/List;Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {v9}, Ls1/a/a/a/n;->j()Ljava/lang/Class;

    move-result-object v10

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$default"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v2, v2, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v9, v0}, Ls1/a/a/a/n;->n(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 19
    invoke-virtual/range {v9 .. v14}, Ls1/a/a/a/n;->o(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_3

    .line 20
    :cond_2
    instance-of v2, v0, Ls1/a/a/a/e$d;

    if-eqz v2, :cond_5

    .line 21
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-virtual {v1}, Ls1/a/a/a/g;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    iget-object v0, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/b;

    .line 23
    iget-object v0, v0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 24
    invoke-interface {v0}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 25
    iget-object v1, v1, Ls1/a/a/a/g;->a:Ls1/a/a/a/k0;

    invoke-virtual {v1}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 28
    check-cast v2, Ls1/a/i;

    .line 29
    invoke-interface {v2}, Ls1/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/16 v11, 0x10

    new-instance v2, Ls1/a/a/a/u0/a;

    move-object v5, v2

    move-object v6, v0

    move-object v8, v10

    move-object v10, v1

    invoke-direct/range {v5 .. v11}, Ls1/a/a/a/u0/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ls1/a/a/a/u0/a$a;Ls1/a/a/a/u0/a$b;Ljava/util/List;I)V

    goto/16 :goto_6

    .line 30
    :cond_4
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 31
    iget-object v1, v1, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 32
    check-cast v0, Ls1/a/a/a/e$d;

    .line 33
    iget-object v0, v0, Ls1/a/a/a/e$d;->b:Ls1/a/a/a/v0/e/a0/b/e$b;

    .line 34
    iget-object v0, v0, Ls1/a/a/a/v0/e/a0/b/e$b;->b:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {v1}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v1, v3, v0, v8}, Ls1/a/a/a/n;->d(Ljava/util/List;Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {v1, v2, v3}, Ls1/a/a/a/n;->q(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_3

    .line 39
    :cond_5
    instance-of v2, v0, Ls1/a/a/a/e$a;

    if-eqz v2, :cond_7

    .line 40
    check-cast v0, Ls1/a/a/a/e$a;

    .line 41
    iget-object v5, v0, Ls1/a/a/a/e$a;->a:Ljava/util/List;

    .line 42
    iget-object v0, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/b;

    .line 43
    iget-object v0, v0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 44
    invoke-interface {v0}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v2

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 47
    check-cast v6, Ljava/lang/reflect/Method;

    .line 48
    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v6, Ls1/a/a/a/u0/a;

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/u0/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ls1/a/a/a/u0/a$a;Ls1/a/a/a/u0/a$b;Ljava/util/List;)V

    move-object v2, v6

    goto/16 :goto_6

    :cond_7
    :goto_2
    move-object v0, v7

    .line 49
    :goto_3
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_8

    .line 50
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ls1/a/a/a/b;->i(Ls1/a/a/a/b;Ljava/lang/reflect/Constructor;Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/u0/i;

    move-result-object v0

    goto :goto_5

    .line 51
    :cond_8
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_b

    .line 52
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-virtual {v1}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    .line 53
    sget-object v2, Ls1/a/a/a/s0;->a:Ls1/a/a/a/v0/f/b;

    .line 54
    invoke-interface {v1, v2}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-virtual {v1}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/v0/b/e;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->r0()Z

    move-result v1

    if-nez v1, :cond_a

    .line 55
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    check-cast v0, Ljava/lang/reflect/Method;

    .line 56
    invoke-virtual {v1}, Ls1/a/a/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ls1/a/a/a/u0/i$g$b;

    invoke-direct {v1, v0}, Ls1/a/a/a/u0/i$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_4

    :cond_9
    new-instance v1, Ls1/a/a/a/u0/i$g$e;

    invoke-direct {v1, v0}, Ls1/a/a/a/u0/i$g$e;-><init>(Ljava/lang/reflect/Method;)V

    :goto_4
    move-object v0, v1

    goto :goto_5

    .line 57
    :cond_a
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v1, v0}, Ls1/a/a/a/b;->j(Ls1/a/a/a/b;Ljava/lang/reflect/Method;)Ls1/a/a/a/u0/i$g;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v7

    :goto_5
    if-eqz v0, :cond_c

    .line 58
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-virtual {v1}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    invoke-static {v0, v1, v8}, Le/q/f/a/d/a;->b0(Ls1/a/a/a/u0/h;Ls1/a/a/a/v0/b/b;Z)Ls1/a/a/a/u0/h;

    move-result-object v7

    :cond_c
    move-object v2, v7

    :goto_6
    return-object v2

    .line 59
    :cond_d
    throw v7

    .line 60
    :cond_e
    sget-object v8, Ls1/a/a/a/u0/a$a;->b:Ls1/a/a/a/u0/a$a;

    sget-object v0, Ls1/a/a/a/q0;->b:Ls1/a/a/a/q0;

    iget-object v0, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/b;

    invoke-virtual {v0}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/q0;->d(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e;

    move-result-object v0

    .line 61
    instance-of v7, v0, Ls1/a/a/a/e$d;

    if-eqz v7, :cond_11

    .line 62
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-virtual {v1}, Ls1/a/a/a/g;->f()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 63
    iget-object v0, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/b;

    .line 64
    iget-object v0, v0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 65
    invoke-interface {v0}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 66
    iget-object v1, v1, Ls1/a/a/a/g;->a:Ls1/a/a/a/k0;

    invoke-virtual {v1}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 69
    check-cast v2, Ls1/a/i;

    .line 70
    invoke-interface {v2}, Ls1/a/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    const/16 v11, 0x10

    new-instance v1, Ls1/a/a/a/u0/a;

    move-object v5, v1

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Ls1/a/a/a/u0/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ls1/a/a/a/u0/a$a;Ls1/a/a/a/u0/a$b;Ljava/util/List;I)V

    goto/16 :goto_c

    .line 71
    :cond_10
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 72
    iget-object v1, v1, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 73
    check-cast v0, Ls1/a/a/a/e$d;

    .line 74
    iget-object v0, v0, Ls1/a/a/a/e$d;->b:Ls1/a/a/a/v0/e/a0/b/e$b;

    .line 75
    iget-object v0, v0, Ls1/a/a/a/v0/e/a0/b/e$b;->b:Ljava/lang/String;

    .line 76
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-interface {v1}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v0}, Ls1/a/a/a/n;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ls1/a/a/a/n;->q(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_8

    .line 78
    :cond_11
    instance-of v3, v0, Ls1/a/a/a/e$e;

    if-eqz v3, :cond_12

    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 79
    iget-object v1, v1, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 80
    check-cast v0, Ls1/a/a/a/e$e;

    .line 81
    iget-object v0, v0, Ls1/a/a/a/e$e;->b:Ls1/a/a/a/v0/e/a0/b/e$b;

    .line 82
    iget-object v3, v0, Ls1/a/a/a/v0/e/a0/b/e$b;->a:Ljava/lang/String;

    .line 83
    iget-object v0, v0, Ls1/a/a/a/v0/e/a0/b/e$b;->b:Ljava/lang/String;

    .line 84
    invoke-virtual {v1, v3, v0}, Ls1/a/a/a/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_8

    .line 85
    :cond_12
    instance-of v3, v0, Ls1/a/a/a/e$c;

    if-eqz v3, :cond_13

    check-cast v0, Ls1/a/a/a/e$c;

    .line 86
    iget-object v0, v0, Ls1/a/a/a/e$c;->a:Ljava/lang/reflect/Method;

    goto :goto_8

    .line 87
    :cond_13
    instance-of v3, v0, Ls1/a/a/a/e$b;

    if-eqz v3, :cond_1a

    check-cast v0, Ls1/a/a/a/e$b;

    .line 88
    iget-object v0, v0, Ls1/a/a/a/e$b;->a:Ljava/lang/reflect/Constructor;

    .line 89
    :goto_8
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_14

    .line 90
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ls1/a/a/a/b;->i(Ls1/a/a/a/b;Ljava/lang/reflect/Constructor;Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/u0/i;

    move-result-object v0

    goto :goto_a

    .line 91
    :cond_14
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_19

    .line 92
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 93
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 94
    invoke-virtual {v1}, Ls1/a/a/a/b;->g()Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ls1/a/a/a/u0/i$g$a;

    invoke-virtual {v1}, Ls1/a/a/a/b;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ls1/a/a/a/u0/i$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_a

    :cond_15
    new-instance v1, Ls1/a/a/a/u0/i$g$d;

    invoke-direct {v1, v0}, Ls1/a/a/a/u0/i$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_9
    move-object v0, v1

    goto :goto_a

    .line 95
    :cond_16
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-virtual {v1}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    .line 96
    sget-object v3, Ls1/a/a/a/s0;->a:Ls1/a/a/a/v0/f/b;

    .line 97
    invoke-interface {v1, v3}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 98
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    .line 99
    invoke-virtual {v1}, Ls1/a/a/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ls1/a/a/a/u0/i$g$b;

    invoke-direct {v1, v0}, Ls1/a/a/a/u0/i$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_9

    :cond_17
    new-instance v1, Ls1/a/a/a/u0/i$g$e;

    invoke-direct {v1, v0}, Ls1/a/a/a/u0/i$g$e;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_9

    .line 100
    :cond_18
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-static {v1, v0}, Ls1/a/a/a/b;->j(Ls1/a/a/a/b;Ljava/lang/reflect/Method;)Ls1/a/a/a/u0/i$g;

    move-result-object v0

    .line 101
    :goto_a
    iget-object v1, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/b;

    invoke-virtual {v1}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    .line 102
    invoke-static {v0, v1, v2}, Le/q/f/a/d/a;->b0(Ls1/a/a/a/u0/h;Ls1/a/a/a/v0/b/b;Z)Ls1/a/a/a/u0/h;

    move-result-object v1

    goto :goto_c

    .line 103
    :cond_19
    new-instance v1, Ls1/a/a/a/i0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compute caller for function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v3, Ls1/a/a/a/b;

    invoke-virtual {v3}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (member = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1a
    instance-of v2, v0, Ls1/a/a/a/e$a;

    if-eqz v2, :cond_1c

    .line 105
    check-cast v0, Ls1/a/a/a/e$a;

    .line 106
    iget-object v5, v0, Ls1/a/a/a/e$a;->a:Ljava/util/List;

    .line 107
    iget-object v0, p0, Ls1/a/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/b;

    .line 108
    iget-object v0, v0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 109
    invoke-interface {v0}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v2

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 112
    check-cast v6, Ljava/lang/reflect/Method;

    .line 113
    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    new-instance v6, Ls1/a/a/a/u0/a;

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/u0/a;-><init>(Ljava/lang/Class;Ljava/util/List;Ls1/a/a/a/u0/a$a;Ls1/a/a/a/u0/a$b;Ljava/util/List;)V

    move-object v1, v6

    :goto_c
    return-object v1

    :cond_1c
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
