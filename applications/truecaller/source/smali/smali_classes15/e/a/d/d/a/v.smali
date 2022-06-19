.class public final Le/a/d/d/a/v;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.voip.contacts.ui.VoipContactsPresenter$fetchData$1"
    f = "VoipContactsPresenter.kt"
    l = {
        0x1e9,
        0x200
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:J

.field public i:J

.field public j:I

.field public final synthetic k:Le/a/d/d/a/w;


# direct methods
.method public constructor <init>(Le/a/d/d/a/w;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/d/a/v;

    iget-object v1, p0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    invoke-direct {v0, v1, p2}, Le/a/d/d/a/v;-><init>(Le/a/d/d/a/w;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/d/a/v;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/d/a/v;

    iget-object v1, p0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    invoke-direct {v0, v1, p2}, Le/a/d/d/a/v;-><init>(Le/a/d/d/a/w;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/d/a/v;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/d/a/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/d/a/v;->j:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    iget-wide v1, v0, Le/a/d/d/a/v;->i:J

    iget-wide v6, v0, Le/a/d/d/a/v;->h:J

    iget-object v4, v0, Le/a/d/d/a/v;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v8, v0, Le/a/d/d/a/v;->f:Ljava/lang/Object;

    check-cast v8, Le/a/d/d/a/w;

    iget-object v9, v0, Le/a/d/d/a/v;->e:Ljava/lang/Object;

    check-cast v9, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v8

    move-wide v8, v6

    move-wide v6, v1

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-wide v6, v0, Le/a/d/d/a/v;->i:J

    iget-wide v8, v0, Le/a/d/d/a/v;->h:J

    iget-object v2, v0, Le/a/d/d/a/v;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/d/d/a/v;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6
    iget-object v10, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 7
    iget-object v11, v10, Le/a/d/d/a/w;->s:Le/a/d/d/c/b;

    .line 8
    invoke-virtual {v10}, Le/a/d/d/a/w;->Jj()Ljava/util/Set;

    move-result-object v15

    .line 9
    iget-object v10, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 10
    invoke-virtual {v10}, Le/a/d/d/a/w;->Nj()Z

    move-result v16

    .line 11
    iget-object v10, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 12
    invoke-virtual {v10}, Le/a/d/d/a/w;->Nj()Z

    move-result v14

    .line 13
    iget-object v10, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 14
    invoke-virtual {v10}, Le/a/d/d/a/w;->Mj()Z

    move-result v17

    .line 15
    iput-object v2, v0, Le/a/d/d/a/v;->e:Ljava/lang/Object;

    iput-wide v6, v0, Le/a/d/d/a/v;->h:J

    iput-wide v8, v0, Le/a/d/d/a/v;->i:J

    iput v3, v0, Le/a/d/d/a/v;->j:I

    .line 16
    move-object v13, v11

    check-cast v13, Le/a/d/d/c/c;

    .line 17
    iget-object v10, v13, Le/a/d/d/c/c;->a:Ls1/w/f;

    new-instance v11, Le/a/d/d/c/d;

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Le/a/d/d/c/d;-><init>(Le/a/d/d/c/c;ZLjava/util/Set;ZZLs1/w/d;)V

    invoke-static {v10, v11, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_3

    return-object v1

    :cond_3
    move-wide/from16 v19, v6

    move-wide v6, v8

    move-wide/from16 v8, v19

    .line 18
    :goto_0
    check-cast v10, Ljava/util/List;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    .line 20
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v11, v12}, Ljava/lang/Long;-><init>(J)V

    .line 21
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 22
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 23
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 24
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/d/a/u;

    if-eqz v2, :cond_4

    .line 25
    iput-boolean v3, v1, Le/a/d/d/a/w;->g:Z

    .line 26
    invoke-interface {v2, v5}, Le/a/d/d/a/u;->i(Z)V

    .line 27
    invoke-interface {v2, v3}, Le/a/d/d/a/u;->b4(Z)V

    .line 28
    invoke-interface {v2, v5}, Le/a/d/d/a/u;->p7(Z)V

    .line 29
    invoke-interface {v2, v5}, Le/a/d/d/a/u;->A2(Z)V

    .line 30
    invoke-interface {v2, v5}, Le/a/d/d/a/u;->P3(Z)V

    .line 31
    :cond_4
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 32
    iget-object v1, v1, Le/a/d/d/a/w;->v:Le/a/d/d/a/a/c/a;

    invoke-virtual {v1, v5}, Le/a/d/d/a/a/c/a;->C(Z)V

    .line 33
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 34
    iget-object v1, v1, Le/a/d/d/a/w;->w:Le/a/d/d/a/a/d/a;

    .line 35
    invoke-virtual {v1, v5}, Le/a/d/d/a/a/d/a;->A(Z)V

    goto/16 :goto_4

    .line 36
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 37
    iget-object v11, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 38
    iget-object v12, v11, Le/a/d/d/a/w;->s:Le/a/d/d/c/b;

    .line 39
    iput-object v2, v0, Le/a/d/d/a/v;->e:Ljava/lang/Object;

    iput-object v11, v0, Le/a/d/d/a/v;->f:Ljava/lang/Object;

    iput-object v10, v0, Le/a/d/d/a/v;->g:Ljava/lang/Object;

    iput-wide v8, v0, Le/a/d/d/a/v;->h:J

    iput-wide v6, v0, Le/a/d/d/a/v;->i:J

    iput v4, v0, Le/a/d/d/a/v;->j:I

    check-cast v12, Le/a/d/d/c/c;

    invoke-virtual {v12, v10, v0}, Le/a/d/d/c/c;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, v10

    :goto_1
    check-cast v2, Ljava/util/List;

    .line 40
    iput-object v2, v11, Le/a/d/d/a/w;->j:Ljava/util/List;

    .line 41
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 42
    iget-object v2, v1, Le/a/d/d/a/w;->j:Ljava/util/List;

    .line 43
    iput-object v2, v1, Le/a/d/d/a/w;->k:Ljava/util/List;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    .line 45
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 46
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 47
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 48
    iput-boolean v3, v1, Le/a/d/d/a/w;->g:Z

    .line 49
    iput-object v4, v1, Le/a/d/d/a/w;->i:Ljava/util/List;

    .line 50
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/d/a/u;

    if-eqz v1, :cond_7

    .line 51
    invoke-interface {v1, v5}, Le/a/d/d/a/u;->i(Z)V

    .line 52
    :cond_7
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 53
    invoke-virtual {v1}, Le/a/d/d/a/w;->Tj()V

    .line 54
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 55
    iget-object v1, v1, Le/a/d/d/a/w;->w:Le/a/d/d/a/a/d/a;

    .line 56
    invoke-virtual {v1}, Le/a/d/d/a/a/d/a;->B0()V

    .line 57
    iget-object v2, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 58
    iget-object v2, v2, Le/a/d/d/a/w;->k:Ljava/util/List;

    .line 59
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Le/a/d/d/a/a/d/a;->A(Z)V

    .line 60
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 61
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/d/a/u;

    if-eqz v1, :cond_8

    .line 62
    invoke-interface {v1, v5}, Le/a/d/d/a/u;->b4(Z)V

    .line 63
    invoke-interface {v1, v3}, Le/a/d/d/a/u;->p7(Z)V

    .line 64
    invoke-interface {v1, v3}, Le/a/d/d/a/u;->G2(Z)V

    .line 65
    iget-object v2, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 66
    invoke-virtual {v2}, Le/a/d/d/a/w;->Nj()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 67
    invoke-interface {v1, v3}, Le/a/d/d/a/u;->P3(Z)V

    .line 68
    invoke-interface {v1, v3}, Le/a/d/d/a/u;->Y9(Z)V

    .line 69
    :cond_8
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 70
    invoke-virtual {v1}, Le/a/d/d/a/w;->Mj()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 71
    invoke-virtual {v1}, Le/a/d/d/a/w;->Jj()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 72
    iget-object v3, v1, Le/a/d/d/a/w;->i:Ljava/util/List;

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    if-ltz v6, :cond_b

    .line 75
    check-cast v7, Le/a/d/d/c/a;

    .line 76
    iget-boolean v12, v7, Le/a/d/d/c/a;->e:Z

    if-eqz v12, :cond_9

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 78
    new-instance v11, Ls1/k;

    invoke-direct {v11, v7, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    if-eqz v11, :cond_a

    .line 79
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v6, v10

    goto :goto_2

    .line 80
    :cond_b
    invoke-static {}, Ls1/u/i;->N0()V

    throw v11

    .line 81
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/k;

    .line 82
    iget-object v6, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 83
    check-cast v6, Le/a/d/d/c/a;

    .line 84
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 85
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 86
    iget-object v7, v6, Le/a/d/d/c/a;->b:Lcom/truecaller/data/entity/Number;

    .line 87
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 88
    iget-object v7, v6, Le/a/d/d/c/a;->b:Lcom/truecaller/data/entity/Number;

    .line 89
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    iput-boolean v5, v6, Le/a/d/d/c/a;->d:Z

    .line 91
    sget-object v7, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;->CONTACTS_LIST:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;

    invoke-virtual {v1, v6, v4, v7}, Le/a/d/d/a/w;->Ch(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    goto :goto_3

    .line 92
    :cond_e
    :goto_4
    iget-object v1, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 93
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/d/a/u;

    if-eqz v1, :cond_f

    .line 94
    invoke-interface {v1}, Le/a/d/d/a/u;->D0()V

    .line 95
    :cond_f
    sget-object v1, Ls1/s;->a:Ls1/s;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 97
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 98
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 99
    iget-object v4, v0, Le/a/d/d/a/v;->k:Le/a/d/d/a/w;

    .line 100
    iget-object v4, v4, Le/a/d/d/a/w;->y:Le/a/q2/a;

    .line 101
    new-instance v5, Le/a/q2/g$b;

    const-string v6, "ContactsLoaded"

    invoke-direct {v5, v6}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v6, "Context"

    const-string v7, "voiceLauncher"

    .line 102
    invoke-virtual {v5, v6, v7}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v6, "Duration"

    .line 103
    invoke-virtual {v5, v6, v2, v3}, Le/a/q2/g$b;->c(Ljava/lang/String;J)Le/a/q2/g$b;

    long-to-double v2, v2

    .line 104
    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 105
    iput-object v6, v5, Le/a/q2/g$b;->c:Ljava/lang/Double;

    .line 106
    invoke-virtual {v5}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v2

    const-string v3, "AnalyticsEvent.Builder(A\u2026                 .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-interface {v4, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-object v1
.end method
