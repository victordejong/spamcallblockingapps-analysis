.class public final Le/a/a/o0/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o0/b;->a(Ljava/util/Collection;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.blocking.ParticipantBlockHelperImpl$blockParticipants$2$1"
    f = "ParticipantBlockHelper.kt"
    l = {
        0x33,
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Le/a/a/o0/b;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Z

.field public final synthetic q:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public final synthetic r:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/util/List;Ls1/w/d;Le/a/a/o0/b;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o0/b$a;->l:Ljava/util/List;

    iput-object p3, p0, Le/a/a/o0/b$a;->m:Le/a/a/o0/b;

    iput-object p4, p0, Le/a/a/o0/b$a;->n:Ljava/lang/String;

    iput-object p5, p0, Le/a/a/o0/b$a;->o:Ljava/lang/String;

    iput-boolean p6, p0, Le/a/a/o0/b$a;->p:Z

    iput-object p7, p0, Le/a/a/o0/b$a;->q:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iput-object p8, p0, Le/a/a/o0/b$a;->r:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/o0/b$a;

    iget-object v1, p0, Le/a/a/o0/b$a;->l:Ljava/util/List;

    iget-object v3, p0, Le/a/a/o0/b$a;->m:Le/a/a/o0/b;

    iget-object v4, p0, Le/a/a/o0/b$a;->n:Ljava/lang/String;

    iget-object v5, p0, Le/a/a/o0/b$a;->o:Ljava/lang/String;

    iget-boolean v6, p0, Le/a/a/o0/b$a;->p:Z

    iget-object v7, p0, Le/a/a/o0/b$a;->q:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iget-object v8, p0, Le/a/a/o0/b$a;->r:Ljava/lang/Long;

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Le/a/a/o0/b$a;-><init>(Ljava/util/List;Ls1/w/d;Le/a/a/o0/b;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/o0/b$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/o0/b$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/o0/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/o0/b$a;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xa

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/o0/b$a;->j:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object v5, p0, Le/a/a/o0/b$a;->i:Ljava/lang/Object;

    check-cast v5, Le/a/a3/a;

    iget-object v6, p0, Le/a/a/o0/b$a;->h:Ljava/lang/Object;

    check-cast v6, Le/a/a/o0/b;

    iget-object v7, p0, Le/a/a/o0/b$a;->g:Ljava/lang/Object;

    check-cast v7, Ls1/k;

    iget-object v8, p0, Le/a/a/o0/b$a;->f:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, p0, Le/a/a/o0/b$a;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, p0

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/o0/b$a;->m:Le/a/a/o0/b;

    .line 5
    iget-object p1, p1, Le/a/a/o0/b;->a:Le/a/a3/a;

    .line 6
    iget-object v1, p0, Le/a/a/o0/b$a;->l:Ljava/util/List;

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v13, p0

    move-object v8, v1

    move-object v1, v5

    move-object v5, p1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 10
    iget-object v7, v13, Le/a/a/o0/b$a;->m:Le/a/a/o0/b;

    iget-object v9, v13, Le/a/a/o0/b$a;->n:Ljava/lang/String;

    .line 11
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 12
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v10, v2

    :goto_2
    if-eqz v10, :cond_6

    .line 13
    invoke-static {p1}, Le/a/a/i1/h;->b(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "IM_ID"

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p1}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v9, v6

    .line 14
    :cond_6
    :goto_3
    new-instance v10, Ls1/k;

    iget-object v11, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    iget-object v9, v13, Le/a/a/o0/b$a;->m:Le/a/a/o0/b;

    .line 16
    iget-object v9, v9, Le/a/a/o0/b;->b:Ls1/w/f;

    .line 17
    new-instance v11, Le/a/a/o0/b$a$a;

    invoke-direct {v11, p1, v6, v13}, Le/a/a/o0/b$a$a;-><init>(Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;Le/a/a/o0/b$a;)V

    iput-object v1, v13, Le/a/a/o0/b$a;->e:Ljava/lang/Object;

    iput-object v8, v13, Le/a/a/o0/b$a;->f:Ljava/lang/Object;

    iput-object v10, v13, Le/a/a/o0/b$a;->g:Ljava/lang/Object;

    iput-object v7, v13, Le/a/a/o0/b$a;->h:Ljava/lang/Object;

    iput-object v5, v13, Le/a/a/o0/b$a;->i:Ljava/lang/Object;

    iput-object v1, v13, Le/a/a/o0/b$a;->j:Ljava/lang/Object;

    iput v2, v13, Le/a/a/o0/b$a;->k:I

    invoke-static {v9, v11, v13}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v9, v1

    move-object v6, v7

    move-object v7, v10

    :goto_4
    check-cast p1, Ljava/lang/Integer;

    .line 18
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v6, Ls1/k;

    invoke-direct {v6, v7, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v9

    goto :goto_0

    .line 21
    :cond_8
    move-object p1, v1

    check-cast p1, Ljava/util/List;

    .line 22
    iget-object v1, v13, Le/a/a/o0/b$a;->l:Ljava/util/List;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 25
    check-cast v4, Lcom/truecaller/data/entity/messaging/Participant;

    .line 26
    invoke-static {v4}, Le/a/a/i1/h;->b(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 27
    iget-object v8, v13, Le/a/a/o0/b$a;->o:Ljava/lang/String;

    .line 28
    iget-boolean v9, v13, Le/a/a/o0/b$a;->p:Z

    .line 29
    sget-object v10, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 30
    iget-object v11, v13, Le/a/a/o0/b$a;->q:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    .line 31
    iget-object v12, v13, Le/a/a/o0/b$a;->r:Ljava/lang/Long;

    iput-object v6, v13, Le/a/a/o0/b$a;->e:Ljava/lang/Object;

    iput-object v6, v13, Le/a/a/o0/b$a;->f:Ljava/lang/Object;

    iput-object v6, v13, Le/a/a/o0/b$a;->g:Ljava/lang/Object;

    iput-object v6, v13, Le/a/a/o0/b$a;->h:Ljava/lang/Object;

    iput-object v6, v13, Le/a/a/o0/b$a;->i:Ljava/lang/Object;

    iput-object v6, v13, Le/a/a/o0/b$a;->j:Ljava/lang/Object;

    iput v3, v13, Le/a/a/o0/b$a;->k:I

    move-object v6, p1

    .line 32
    invoke-interface/range {v5 .. v13}, Le/a/a3/a;->d(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 33
    :cond_a
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
