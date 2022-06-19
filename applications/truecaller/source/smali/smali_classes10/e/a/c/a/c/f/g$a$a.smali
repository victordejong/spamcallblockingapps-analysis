.class public final Le/a/c/a/c/f/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/f/g$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/c/f/g;

.field public final synthetic c:Le/a/c/a/c/f/f;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/c/f/g;Le/a/c/a/c/f/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/g$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/c/f/g$a$a;->b:Le/a/c/a/c/f/g;

    iput-object p3, p0, Le/a/c/a/c/f/g$a$a;->c:Le/a/c/a/c/f/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Le/a/c/a/c/f/g$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a/c/f/g$a$a$a;

    iget v1, v0, Le/a/c/a/c/f/g$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/c/f/g$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/c/f/g$a$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a/c/f/g$a$a$a;-><init>(Le/a/c/a/c/f/g$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a/c/f/g$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/c/f/g$a$a$a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->p:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    iget-object v2, v0, Le/a/c/a/c/f/g$a$a$a;->o:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object v4, v0, Le/a/c/a/c/f/g$a$a$a;->n:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    iget-object v6, v0, Le/a/c/a/c/f/g$a$a$a;->m:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Le/a/c/a/c/f/g$a$a$a;->l:Ljava/lang/Object;

    check-cast v7, Le/a/c/q/j;

    iget-object v8, v0, Le/a/c/a/c/f/g$a$a$a;->k:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Le/a/c/a/c/f/g$a$a$a;->j:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v0, Le/a/c/a/c/f/g$a$a$a;->i:Ljava/lang/Object;

    check-cast v10, Le/a/c/a/c/f/g;

    iget-object v11, v0, Le/a/c/a/c/f/g$a$a$a;->h:Ljava/lang/Object;

    check-cast v11, Lq3/a/x2/g;

    iget-object v12, v0, Le/a/c/a/c/f/g$a$a$a;->f:Ljava/lang/Object;

    check-cast v12, Le/a/c/a/c/f/g$a$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/a/c/f/g$a$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/List;

    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "Upcoming data: "

    .line 6
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v2}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Le/a/c/a/c/f/g$a$a;->b:Le/a/c/a/c/f/g;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v12, p0

    move-object v8, p1

    move-object v11, p2

    move-object v10, v2

    move-object v6, v4

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    move-object v7, p1

    check-cast v7, Le/a/c/q/j;

    .line 11
    invoke-static {v7}, Le/a/c/a/c/h/m/a;->e(Le/a/c/q/j;)Le/a/c/a/l/b$g;

    move-result-object p1

    .line 12
    iget-object p1, p1, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/String;

    const-string v2, "Upcoming data | item: "

    const-string v4, " | filter type: "

    .line 13
    invoke-static {v2, p1, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v12, Le/a/c/a/c/f/g$a$a;->b:Le/a/c/a/c/f/g;

    .line 14
    iget-object v2, v2, Le/a/c/a/c/f/g;->e:Le/a/c/h/e;

    .line 15
    iput-object v12, v0, Le/a/c/a/c/f/g$a$a$a;->f:Ljava/lang/Object;

    iput-object v11, v0, Le/a/c/a/c/f/g$a$a$a;->h:Ljava/lang/Object;

    iput-object v10, v0, Le/a/c/a/c/f/g$a$a$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Le/a/c/a/c/f/g$a$a$a;->j:Ljava/lang/Object;

    iput-object v8, v0, Le/a/c/a/c/f/g$a$a$a;->k:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/a/c/f/g$a$a$a;->l:Ljava/lang/Object;

    iput-object v6, v0, Le/a/c/a/c/f/g$a$a$a;->m:Ljava/lang/Object;

    iput-object v4, v0, Le/a/c/a/c/f/g$a$a$a;->n:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a/c/f/g$a$a$a;->o:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a/c/f/g$a$a$a;->p:Ljava/lang/Object;

    iput v3, v0, Le/a/c/a/c/f/g$a$a$a;->e:I

    invoke-interface {v2, p1, v0}, Le/a/c/h/e;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p2

    move-object v9, v6

    move-object p2, p1

    move-object p1, v2

    :goto_2
    check-cast p2, Lcom/truecaller/insights/commons/model/InsightsFilterType;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-static {p1}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 16
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v6, v9

    goto :goto_1

    .line 17
    :cond_5
    check-cast v6, Ljava/util/List;

    .line 18
    iget-object p1, v12, Le/a/c/a/c/f/g$a$a;->b:Le/a/c/a/c/f/g;

    .line 19
    iget-object p1, p1, Le/a/c/a/c/f/g;->e:Le/a/c/h/e;

    .line 20
    invoke-static {v6, p1}, Le/a/c/p/a;->f0(Ljava/lang/Iterable;Le/a/c/h/e;)Ljava/util/List;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    const-string v2, "Upcoming data filter blocked senders: "

    .line 21
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v5

    invoke-static {p2}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Le/a/c/q/j;

    .line 25
    invoke-static {v2}, Le/a/c/a/c/h/m/a;->e(Le/a/c/q/j;)Le/a/c/a/l/b$g;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_6
    iget-object p1, v12, Le/a/c/a/c/f/g$a$a;->c:Le/a/c/a/c/f/f;

    .line 27
    iget-boolean p1, p1, Le/a/c/a/c/f/f;->a:Z

    .line 28
    iget-object v2, v10, Le/a/c/a/c/f/g;->d:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->N()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/c/a/l/b$g;

    .line 31
    iget-boolean v4, v4, Le/a/c/a/l/b$g;->u:Z

    xor-int/2addr v4, v3

    if-eqz v4, :cond_7

    .line 32
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/4 p2, 0x3

    invoke-static {p1, p2}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    :cond_9
    new-array p1, v3, [Ljava/lang/String;

    const-string v2, "Upcoming data already paid filter: "

    .line 33
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v5

    invoke-static {p1}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->f:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->j:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->k:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->l:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->m:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->n:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->o:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/c/f/g$a$a$a;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Le/a/c/a/c/f/g$a$a$a;->e:I

    invoke-interface {v11, p2, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
