.class public final Le/a/d/c0/t1$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/t1;->h(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Z
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
    c = "com.truecaller.voip.util.VoipUtilImpl$startCall$1"
    f = "VoipUtilImpl.kt"
    l = {
        0x109,
        0x7d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/t1;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ln3/r/a/l;


# direct methods
.method public constructor <init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ln3/r/a/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/t1$f;->f:Le/a/d/c0/t1;

    iput-object p2, p0, Le/a/d/c0/t1$f;->g:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/d/c0/t1$f;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/d/c0/t1$f;->i:Ln3/r/a/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/d/c0/t1$f;

    iget-object v1, p0, Le/a/d/c0/t1$f;->f:Le/a/d/c0/t1;

    iget-object v2, p0, Le/a/d/c0/t1$f;->g:Lcom/truecaller/data/entity/Contact;

    iget-object v3, p0, Le/a/d/c0/t1$f;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/d/c0/t1$f;->i:Ln3/r/a/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d/c0/t1$f;-><init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ln3/r/a/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/c0/t1$f;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/c0/t1$f;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/t1$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c0/t1$f;->e:I

    const/4 v3, 0x1

    const-string v4, "it"

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/t1$f;->f:Le/a/d/c0/t1;

    .line 5
    iget-object p1, p1, Le/a/d/c0/t1;->d:Le/a/d/f;

    .line 6
    iget-object v2, p0, Le/a/d/c0/t1$f;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v2

    const-string v6, "contact.numbers"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 9
    check-cast v7, Lcom/truecaller/data/entity/Number;

    .line 10
    invoke-static {v7, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    iput v3, p0, Le/a/d/c0/t1$f;->e:I

    .line 12
    invoke-interface {p1, v6, p0}, Le/a/d/f;->h(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 13
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v3, v2

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 15
    iget-object p1, p0, Le/a/d/c0/t1$f;->f:Le/a/d/c0/t1;

    iget-object v1, p0, Le/a/d/c0/t1$f;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/t1$f;->g:Lcom/truecaller/data/entity/Contact;

    .line 16
    invoke-virtual {p1, v1, v2}, Le/a/d/c0/t1;->n(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;)V

    .line 17
    iget-object p1, p0, Le/a/d/c0/t1$f;->f:Le/a/d/c0/t1;

    .line 18
    iget-object p1, p1, Le/a/d/c0/t1;->h:Le/a/d/c0/f0;

    .line 19
    iget-object v1, p0, Le/a/d/c0/t1$f;->h:Ljava/lang/String;

    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;->CALLEE_NOT_CAPABLE:Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;

    invoke-interface {p1, v1, v2}, Le/a/d/c0/f0;->e(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;)V

    return-object v0

    .line 20
    :cond_7
    new-instance v3, Ls1/z/c/c0;

    invoke-direct {v3}, Ls1/z/c/c0;-><init>()V

    iget-object v6, p0, Le/a/d/c0/t1$f;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v6

    const-string v7, "contact\n                .numbers"

    invoke-static {v6, v7}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 21
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/truecaller/data/entity/Number;

    .line 22
    instance-of v10, p1, Ljava/util/Collection;

    if-eqz v10, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/voip/db/VoipAvailability;

    .line 24
    invoke-virtual {v11}, Lcom/truecaller/voip/db/VoipAvailability;->getPhone()Ljava/lang/String;

    move-result-object v11

    const-string v12, "number"

    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v12

    const-string v13, "number.normalizedNumber"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 25
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 26
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v9, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    move v9, v2

    .line 27
    :goto_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 28
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_c
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 32
    move-object v8, v7

    check-cast v8, Lcom/truecaller/data/entity/Number;

    .line 33
    invoke-static {v8, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 35
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 36
    :cond_e
    iput-object v2, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Le/a/d/c0/t1$f;->f:Le/a/d/c0/t1;

    .line 38
    iget-object p1, p1, Le/a/d/c0/t1;->a:Ls1/w/f;

    .line 39
    new-instance v2, Le/a/d/c0/t1$f$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Le/a/d/c0/t1$f$a;-><init>(Le/a/d/c0/t1$f;Ls1/z/c/c0;Ls1/w/d;)V

    iput v5, p0, Le/a/d/c0/t1$f;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f

    return-object v1

    :cond_f
    :goto_7
    return-object v0
.end method
