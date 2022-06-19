.class public final Ls1/a/a/a/v0/a/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/g1/b;


# instance fields
.field public final a:Ls1/a/a/a/v0/l/m;

.field public final b:Ls1/a/a/a/v0/b/a0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/a/o/a;->a:Ls1/a/a/a/v0/l/m;

    iput-object p2, p0, Ls1/a/a/a/v0/a/o/a;->b:Ls1/a/a/a/v0/b/a0;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)Z
    .locals 3

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name.asString()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Function"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-static {p2, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KFunction"

    invoke-static {p2, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SuspendFunction"

    .line 3
    invoke-static {p2, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KSuspendFunction"

    invoke-static {p2, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/a/o/c;->h:Ls1/a/a/a/v0/a/o/c$a;

    invoke-virtual {v0, p2, p1}, Ls1/a/a/a/v0/a/o/c$a;->a(Ljava/lang/String;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/a/o/c$a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;
    .locals 6

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Ls1/a/a/a/v0/f/a;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classId.relativeClassName.asString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Function"

    .line 4
    invoke-static {v0, v4, v2, v3}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    const-string v2, "classId.packageFqName"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v2, Ls1/a/a/a/v0/a/o/c;->h:Ls1/a/a/a/v0/a/o/c$a;

    invoke-virtual {v2, v0, p1}, Ls1/a/a/a/v0/a/o/c$a;->a(Ljava/lang/String;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/a/o/c$a$a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7
    iget-object v1, v0, Ls1/a/a/a/v0/a/o/c$a$a;->a:Ls1/a/a/a/v0/a/o/c;

    .line 8
    iget v0, v0, Ls1/a/a/a/v0/a/o/c$a$a;->b:I

    .line 9
    iget-object v2, p0, Ls1/a/a/a/v0/a/o/a;->b:Ls1/a/a/a/v0/b/a0;

    invoke-interface {v2, p1}, Ls1/a/a/a/v0/b/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/g0;->P()Ljava/util/List;

    move-result-object p1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ls1/a/a/a/v0/a/b;

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ls1/a/a/a/v0/a/e;

    if-eqz v5, :cond_4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/a/e;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/a/b;

    .line 15
    :goto_2
    new-instance v2, Ls1/a/a/a/v0/a/o/b;

    iget-object v3, p0, Ls1/a/a/a/v0/a/o/a;->a:Ls1/a/a/a/v0/l/m;

    invoke-direct {v2, v3, p1, v1, v0}, Ls1/a/a/a/v0/a/o/b;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/a/o/c;I)V

    return-object v2

    :cond_7
    :goto_3
    return-object v1
.end method

.method public c(Ls1/a/a/a/v0/f/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    return-object p1
.end method
