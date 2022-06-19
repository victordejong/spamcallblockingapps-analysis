.class public final Ls1/a/a/a/u$a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/u$a;-><init>(Ls1/a/a/a/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/j/y/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/u$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/u$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/u$a$e;->b:Ls1/a/a/a/u$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u$a$e;->b:Ls1/a/a/a/u$a;

    invoke-static {v0}, Ls1/a/a/a/u$a;->a(Ls1/a/a/a/u$a;)Ls1/a/a/a/v0/b/j1/a/e;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, p0, Ls1/a/a/a/u$a$e;->b:Ls1/a/a/a/u$a;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/n$a;->a:Ls1/a/a/a/k0;

    sget-object v2, Ls1/a/a/a/n$a;->c:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 4
    invoke-virtual {v1}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ls1/a/a/a/v0/b/j1/a/i;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/b/j1/a/i;->b:Ls1/a/a/a/v0/b/j1/a/a;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fileClass"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, v1, Ls1/a/a/a/v0/b/j1/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/j1/a/e;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object v4

    .line 9
    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/j1/a/e;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object v5

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v5

    const-string v6, "fileClass.classId.packageFqName"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v6, v0, Ls1/a/a/a/v0/b/j1/a/e;->b:Ls1/a/a/a/v0/d/b/w/a;

    .line 12
    iget-object v7, v6, Ls1/a/a/a/v0/d/b/w/a;->a:Ls1/a/a/a/v0/d/b/w/a$a;

    .line 13
    sget-object v8, Ls1/a/a/a/v0/d/b/w/a$a;->f:Ls1/a/a/a/v0/d/b/w/a$a;

    if-ne v7, v8, :cond_6

    .line 14
    iget-object v6, v6, Ls1/a/a/a/v0/d/b/w/a;->c:[Ljava/lang/String;

    if-ne v7, v8, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/4 v7, 0x0

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_3

    invoke-static {v6}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    sget-object v7, Ls1/u/s;->a:Ls1/u/s;

    .line 15
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Ljava/lang/String;

    .line 18
    invoke-static {v7}, Ls1/a/a/a/v0/j/w/b;->d(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/b;

    move-result-object v7

    const-string v8, "JvmClassName.byInternalName(partName)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v8, Ls1/a/a/a/v0/f/b;

    iget-object v7, v7, Ls1/a/a/a/v0/j/w/b;->a:Ljava/lang/String;

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v8}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    const-string v8, "ClassId.topLevel(JvmClas\u2026velClassMaybeWithDollars)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v8, v1, Ls1/a/a/a/v0/b/j1/a/a;->c:Ls1/a/a/a/v0/b/j1/a/f;

    invoke-static {v8, v7}, Le/q/f/a/d/a;->q0(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 22
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_6
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 24
    :cond_7
    new-instance v6, Ls1/a/a/a/v0/b/h1/o;

    iget-object v7, v1, Ls1/a/a/a/v0/b/j1/a/a;->b:Ls1/a/a/a/v0/d/b/d;

    invoke-virtual {v7}, Ls1/a/a/a/v0/d/b/d;->b()Ls1/a/a/a/v0/k/b/j;

    move-result-object v7

    .line 25
    iget-object v7, v7, Ls1/a/a/a/v0/k/b/j;->c:Ls1/a/a/a/v0/b/a0;

    .line 26
    invoke-direct {v6, v7, v5}, Ls1/a/a/a/v0/b/h1/o;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;)V

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 29
    check-cast v8, Ls1/a/a/a/v0/d/b/l;

    .line 30
    iget-object v9, v1, Ls1/a/a/a/v0/b/j1/a/a;->b:Ls1/a/a/a/v0/d/b/d;

    invoke-virtual {v9, v6, v8}, Ls1/a/a/a/v0/d/b/d;->a(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 31
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 32
    :cond_9
    invoke-static {v7}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/a/a/a/v0/j/y/b;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v5

    .line 34
    invoke-interface {v2, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v5, v0

    :cond_a
    :goto_4
    const-string v0, "cache.getOrPut(fileClass\u2026ileClass)\", scopes)\n    }"

    .line 35
    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ls1/a/a/a/v0/j/y/i;

    goto :goto_5

    .line 36
    :cond_b
    sget-object v5, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    :goto_5
    return-object v5
.end method
