.class public final Le/a/c/i/k/b$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/k/b;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/h/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/i/k/b;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/c/i/k/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/k/b$h;->b:Le/a/c/i/k/b;

    iput-object p2, p0, Le/a/c/i/k/b$h;->c:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/c/i/k/b$h;->b:Le/a/c/i/k/b;

    .line 2
    iget-object v0, v0, Le/a/c/i/k/b;->d:Le/a/a/t;

    .line 3
    iget-object v1, p0, Le/a/c/i/k/b$h;->c:Ljava/util/List;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    const-string v3, "numbers"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v0, v0, Le/a/a/t;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/g/r;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "UUID.randomUUID()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notification"

    invoke-interface {v0, v3, v4}, Le/a/f4/g/r;->c(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/i;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/a/f4/g/i;->b()Le/a/f4/g/i;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    check-cast v5, Ljava/lang/String;

    .line 12
    new-instance v6, Le/a/f4/g/i$b;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v7}, Le/a/f4/g/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v0, Le/a/f4/g/i;->d:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v1, 0x14

    .line 14
    iput v1, v0, Le/a/f4/g/i;->g:I

    .line 15
    invoke-virtual {v0}, Le/a/f4/g/i;->a()Le/a/f4/g/t;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, v0, Le/a/f4/g/t;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Lcom/truecaller/data/entity/Contact;

    .line 20
    new-instance v4, Le/a/c/h/j;

    const-string v5, "it"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    const-string v6, "it.defaultNumberForDisplay ?: \"\""

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Le/a/c/h/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 22
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-object v2
.end method
