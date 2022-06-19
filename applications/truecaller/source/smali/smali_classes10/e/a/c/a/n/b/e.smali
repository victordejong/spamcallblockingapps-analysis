.class public final Le/a/c/a/n/b/e;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/n/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/q/f;",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/a/c/f/f;

.field public final d:Le/a/c/q/d;

.field public final e:Le/a/c/a/c/f/g;

.field public final f:Ls1/w/f;

.field public final g:Le/a/c/h/e;


# direct methods
.method public constructor <init>(Le/a/c/q/d;Le/a/c/a/c/f/g;Ls1/w/f;Le/a/c/h/e;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsUiBridge"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upcomingUseCase"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/n/b/e;->d:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/n/b/e;->e:Le/a/c/a/c/f/g;

    iput-object p3, p0, Le/a/c/a/n/b/e;->f:Ls1/w/f;

    iput-object p4, p0, Le/a/c/a/n/b/e;->g:Le/a/c/h/e;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/c/a/n/b/e;->b:Ljava/util/Set;

    .line 3
    new-instance p1, Le/a/c/a/c/f/f;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Le/a/c/a/c/f/f;-><init>(Z)V

    iput-object p1, p0, Le/a/c/a/n/b/e;->c:Le/a/c/a/c/f/f;

    return-void
.end method

.method public static final d(Le/a/c/a/n/b/e;Ljava/util/List;)Ljava/util/List;
    .locals 37

    move-object/from16 v0, p0

    .line 1
    iget-object v0, v0, Le/a/c/a/n/b/e;->g:Le/a/c/h/e;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Le/a/c/p/a;->f0(Ljava/lang/Iterable;Le/a/c/h/e;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Le/a/c/q/j;

    .line 5
    new-instance v4, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const-string v5, "$this$upcomingToPastReminder"

    .line 6
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    instance-of v5, v3, Le/a/c/q/j$a;

    if-eqz v5, :cond_8

    check-cast v3, Le/a/c/q/j$a;

    .line 8
    iget-wide v8, v3, Le/a/c/q/j$a;->a:J

    .line 9
    iget-wide v14, v3, Le/a/c/q/j$a;->b:J

    .line 10
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 11
    iget-object v5, v5, Le/a/c/r/b$b;->n:Ljava/util/List;

    .line 12
    invoke-static {v5}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Le/a/c/r/c;

    .line 13
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 14
    iget-object v5, v5, Le/a/c/r/b$b;->n:Ljava/util/List;

    .line 15
    invoke-static {v5}, Le/a/c/p/a;->z2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Le/a/c/r/c;

    .line 16
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 17
    iget-object v5, v5, Le/a/c/r/b$b;->k:Ljava/lang/String;

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 19
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 20
    iget-object v5, v5, Le/a/c/r/b$b;->b:Ljava/lang/String;

    goto :goto_2

    .line 21
    :cond_1
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 22
    iget-object v5, v5, Le/a/c/r/b$b;->k:Ljava/lang/String;

    :goto_2
    move-object v13, v5

    .line 23
    invoke-virtual {v3}, Le/a/c/q/j$a;->a()Z

    move-result v5

    const-string v7, ""

    const-string v12, "PrepaidExpiry"

    if-eqz v5, :cond_3

    .line 24
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 25
    iget-object v5, v5, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 26
    invoke-static {v5, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v7

    goto :goto_3

    .line 27
    :cond_2
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 28
    iget-object v5, v5, Le/a/c/r/b$b;->q:Ljava/lang/String;

    goto :goto_3

    .line 29
    :cond_3
    iget-object v5, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 30
    iget-object v5, v5, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 31
    invoke-static {v5, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Recharged"

    goto :goto_3

    :cond_4
    const-string v5, "Paid"

    .line 32
    :goto_3
    sget v20, Lcom/truecaller/insights/ui/R$attr;->tcx_textSecondary:I

    .line 33
    iget-object v6, v3, Le/a/c/q/j$a;->f:Le/a/c/r/j/a;

    .line 34
    invoke-static {v6}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v18

    .line 35
    iget-object v6, v3, Le/a/c/q/j$a;->e:Le/a/c/r/j/a;

    .line 36
    invoke-static {v6}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v17

    .line 37
    iget-object v6, v3, Le/a/c/q/j$a;->g:Ljava/util/List;

    move-object/from16 p1, v0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v16, v7

    invoke-static {v6, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 40
    check-cast v7, Le/a/c/r/j/a;

    .line 41
    invoke-static {v7}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_5
    iget-object v6, v3, Le/a/c/q/j$a;->c:Ljava/lang/String;

    .line 43
    iget-object v7, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 44
    iget-object v7, v7, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 45
    invoke-static {v7, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Le/a/c/q/j$a;->a()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 46
    iget-object v7, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 47
    iget-object v7, v7, Le/a/c/r/b$b;->q:Ljava/lang/String;

    .line 48
    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v12, 0x1

    xor-int/2addr v7, v12

    if-eqz v7, :cond_6

    .line 49
    iget-object v7, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 50
    iget-object v7, v7, Le/a/c/r/b$b;->q:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const-string v7, "Expiring"

    :goto_5
    move-object/from16 v16, v7

    .line 51
    :cond_7
    sget v7, Lcom/truecaller/insights/ui/R$attr;->tcx_textPrimary:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 52
    iget-object v7, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 53
    iget-object v12, v7, Le/a/c/r/b$b;->g:Ljava/lang/String;

    move-object/from16 v23, v12

    .line 54
    iget-object v12, v7, Le/a/c/r/b$b;->n:Ljava/util/List;

    .line 55
    invoke-static {v12}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/c/r/c;

    .line 56
    iget-object v12, v12, Le/a/c/r/c;->a:Ljava/lang/String;

    .line 57
    invoke-static {v7, v12}, Le/a/m0/a1$k;->w(Le/a/c/r/b$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 58
    iget v7, v3, Le/a/c/q/j$a;->i:I

    move/from16 v26, v7

    .line 59
    iget-boolean v7, v3, Le/a/c/q/j$a;->j:Z

    move/from16 v27, v7

    .line 60
    sget-object v28, Le/a/c/r/j/p$b;->b:Le/a/c/r/j/p$b;

    .line 61
    iget-object v7, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 62
    iget-object v7, v7, Le/a/c/r/b$b;->p:Lw3/b/a/b;

    .line 63
    invoke-static {v7}, Le/a/c/a/c/h/m/a;->a(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v29

    .line 64
    invoke-virtual {v3}, Le/a/c/q/j$a;->a()Z

    move-result v7

    const/4 v12, 0x1

    xor-int/lit8 v32, v7, 0x1

    .line 65
    iget-object v3, v3, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 66
    iget-object v3, v3, Le/a/c/r/b$b;->p:Lw3/b/a/b;

    .line 67
    invoke-virtual {v3}, Lw3/b/a/e0/c;->S1()Lw3/b/a/n;

    move-result-object v3

    const-string v7, "data.billUiSchema.billDateTime.toInstant()"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-wide v2, v3, Lw3/b/a/n;->a:J

    move-wide/from16 v30, v2

    const/16 v33, 0x0

    const v34, 0x400008

    .line 69
    new-instance v2, Le/a/c/a/l/b$e;

    move-object v7, v2

    const/4 v12, 0x0

    move-wide/from16 v21, v14

    move-object v14, v6

    move-object v15, v5

    move-object/from16 v19, v0

    invoke-direct/range {v7 .. v34}, Le/a/c/a/l/b$e;-><init>(JLe/a/c/r/c;Le/a/c/r/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/a/l/c;Le/a/c/a/l/c;Ljava/util/List;IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLe/a/c/r/j/p;Ljava/lang/String;JZZI)V

    move-object/from16 v33, v1

    goto/16 :goto_8

    :cond_8
    move-object/from16 p1, v0

    .line 70
    instance-of v0, v3, Le/a/c/q/j$b;

    if-eqz v0, :cond_b

    check-cast v3, Le/a/c/q/j$b;

    .line 71
    invoke-static {v3}, Le/a/c/a/c/h/m/a;->c(Le/a/c/q/j$b;)Ls1/k;

    move-result-object v0

    .line 72
    iget-wide v6, v3, Le/a/c/q/j$b;->a:J

    .line 73
    iget-wide v14, v3, Le/a/c/q/j$b;->b:J

    .line 74
    iget-object v2, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 75
    iget-object v10, v2, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 76
    iget-object v11, v2, Le/a/c/r/b$f;->f:Ljava/lang/String;

    const-string v2, "Travelled"

    .line 77
    invoke-static {v11, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 78
    iget-object v2, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 79
    iget-object v2, v2, Le/a/c/r/b$f;->d:Ljava/lang/String;

    goto :goto_6

    .line 80
    :cond_9
    iget-object v2, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 81
    iget-object v2, v2, Le/a/c/r/b$f;->e:Ljava/lang/String;

    :goto_6
    move-object v13, v2

    .line 82
    iget-object v2, v3, Le/a/c/q/j$b;->e:Le/a/c/r/j/a;

    .line 83
    invoke-static {v2}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v2

    .line 84
    iget-object v5, v3, Le/a/c/q/j$b;->f:Le/a/c/r/j/a;

    .line 85
    invoke-static {v5}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v16

    .line 86
    iget-object v12, v3, Le/a/c/q/j$b;->c:Ljava/lang/String;

    .line 87
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    sget v5, Lcom/truecaller/insights/ui/R$attr;->tcx_textPrimary:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 90
    iget-object v5, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 91
    iget-object v5, v5, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 92
    invoke-static {v5, v9, v8}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 93
    iget-object v5, v3, Le/a/c/q/j$b;->g:Ljava/util/List;

    .line 94
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v33, v1

    const/16 v1, 0xa

    invoke-static {v5, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 96
    check-cast v9, Le/a/c/r/j/a;

    .line 97
    invoke-static {v9}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 98
    :cond_a
    iget-object v5, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 99
    iget-object v5, v5, Le/a/c/r/b$f;->q:Ljava/util/List;

    .line 100
    invoke-static {v5}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/r/c;

    move-object/from16 v19, v8

    move-object v8, v5

    const/16 v21, 0x0

    .line 101
    iget-object v5, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 102
    iget-object v5, v5, Le/a/c/r/b$f;->q:Ljava/util/List;

    .line 103
    invoke-static {v5}, Le/a/c/p/a;->z2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Le/a/c/r/c;

    const/4 v5, 0x0

    .line 104
    sget v18, Lcom/truecaller/insights/ui/R$attr;->tcx_textSecondary:I

    .line 105
    iget v1, v3, Le/a/c/q/j$b;->i:I

    move/from16 v24, v1

    .line 106
    iget-boolean v1, v3, Le/a/c/q/j$b;->j:Z

    move/from16 v25, v1

    .line 107
    new-instance v1, Le/a/c/r/j/p$h;

    move-object/from16 v26, v1

    move-wide/from16 v35, v14

    .line 108
    iget-object v14, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 109
    iget-object v14, v14, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v15, 0x1

    .line 110
    invoke-static {v14, v5, v15}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Le/a/c/r/j/p$h;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v1, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 112
    iget-object v1, v1, Le/a/c/r/b$f;->x:Lw3/b/a/b;

    .line 113
    invoke-static {v1}, Le/a/c/a/c/h/m/a;->a(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v27

    .line 114
    iget-object v1, v3, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 115
    iget-object v1, v1, Le/a/c/r/b$f;->x:Lw3/b/a/b;

    .line 116
    invoke-virtual {v1}, Lw3/b/a/e0/c;->S1()Lw3/b/a/n;

    move-result-object v1

    const-string v3, "data.uiSchema.travelDateTime.toInstant()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-wide v14, v1, Lw3/b/a/n;->a:J

    move-wide/from16 v28, v14

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x602000

    .line 118
    new-instance v1, Le/a/c/a/l/b$e;

    move-object v5, v1

    move-object v14, v0

    move-object v15, v2

    move-object/from16 v17, v19

    move-wide/from16 v19, v35

    invoke-direct/range {v5 .. v32}, Le/a/c/a/l/b$e;-><init>(JLe/a/c/r/c;Le/a/c/r/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/a/l/c;Le/a/c/a/l/c;Ljava/util/List;IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLe/a/c/r/j/p;Ljava/lang/String;JZZI)V

    move-object v2, v1

    :goto_8
    const-wide/16 v0, 0x0

    const/4 v3, 0x2

    .line 119
    invoke-direct {v4, v2, v0, v1, v3}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    const/16 v2, 0xa

    move-object/from16 v0, p1

    goto/16 :goto_0

    .line 120
    :cond_b
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_c
    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 0

    .line 1
    check-cast p1, Le/a/c/q/f;

    invoke-virtual {p0, p1}, Le/a/c/a/n/b/e;->e(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/d0/i;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ls1/d0/i;-><init>(II)V

    .line 2
    new-instance v1, Lq3/a/x2/i;

    invoke-direct {v1, v0}, Lq3/a/x2/i;-><init>(Ls1/d0/i;)V

    .line 3
    new-instance v0, Le/a/c/a/n/b/f;

    invoke-direct {v0, v1}, Le/a/c/a/n/b/f;-><init>(Lq3/a/x2/f;)V

    .line 4
    new-instance v1, Le/a/c/a/n/b/e$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/c/a/n/b/e$b;-><init>(Le/a/c/a/n/b/e;Le/a/c/q/f;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->R0(Lq3/a/x2/f;Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 4
    instance-of v3, v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 5
    iget-object v2, v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 6
    instance-of v3, v2, Le/a/c/a/l/b$e;

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Le/a/c/a/l/b$e;

    .line 8
    iget-object v2, v2, Le/a/c/a/l/b$e;->t:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, ""

    .line 9
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 10
    invoke-static {v0, v2}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_1
    check-cast v3, Ljava/util/List;

    .line 11
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 16
    instance-of v3, v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 17
    iget-object v3, v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 18
    instance-of v3, v3, Le/a/c/a/l/b$e;

    if-eqz v3, :cond_4

    .line 19
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v3, p0, Le/a/c/a/n/b/e;->b:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    iget-object v3, p0, Le/a/c/a/n/b/e;->b:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v12, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    const-wide/16 v5, 0x0

    .line 23
    iget-object v2, v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 24
    check-cast v2, Le/a/c/a/l/b$e;

    .line 25
    iget-wide v7, v2, Le/a/c/a/l/b$e;->u:J

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v3, v12

    .line 26
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/insights/ui/models/AdapterItem$d;-><init>(Ljava/lang/String;JJZI)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_3
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v1, v11

    .line 28
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
