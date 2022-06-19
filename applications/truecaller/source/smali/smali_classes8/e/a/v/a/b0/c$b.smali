.class public final Le/a/v/a/b0/c$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/b0/c;->Jj()V
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
    c = "com.truecaller.details_view.ui.callhistory.CallHistoryExpandedPresenter$loadCallHistory$1$1"
    f = "CallHistoryExpandedPresenter.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/data/entity/Contact;

.field public final synthetic g:Le/a/v/a/b0/c;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Ls1/w/d;Le/a/v/a/b0/c;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/b0/c$b;

    iget-object v0, p0, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    invoke-direct {p1, v0, p2, v1}, Le/a/v/a/b0/c$b;-><init>(Lcom/truecaller/data/entity/Contact;Ls1/w/d;Le/a/v/a/b0/c;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/b0/c$b;

    iget-object v0, p0, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    invoke-direct {p1, v0, p2, v1}, Le/a/v/a/b0/c$b;-><init>(Lcom/truecaller/data/entity/Contact;Ls1/w/d;Le/a/v/a/b0/c;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/b0/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/v/a/b0/c$b;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 5
    iget-object v3, v3, Le/a/v/a/b0/c;->h:Ls1/w/f;

    .line 6
    new-instance v6, Le/a/v/a/b0/c$b$a;

    invoke-direct {v6, v0, v4}, Le/a/v/a/b0/c$b$a;-><init>(Le/a/v/a/b0/c$b;Ls1/w/d;)V

    iput v5, v0, Le/a/v/a/b0/c$b;->e:I

    invoke-static {v3, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    return-object v2

    .line 7
    :cond_2
    :goto_0
    check-cast v3, Ljava/util/List;

    const/4 v2, 0x3

    const/4 v6, 0x2

    if-eqz v3, :cond_12

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 10
    check-cast v8, Lcom/truecaller/data/entity/HistoryEvent;

    .line 11
    new-instance v15, Le/a/v/a/b0/e;

    .line 12
    iget-object v9, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 13
    invoke-virtual {v9, v8}, Le/a/v/a/b0/c;->Ij(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v10

    const-string v11, "resourceProvider.getDraw\u2026e.ic_tcx_event_voip_16dp)"

    if-eqz v10, :cond_3

    .line 14
    iget v10, v8, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v10, v2, :cond_3

    .line 15
    iget-object v10, v9, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v12, Lcom/truecaller/details_view/R$drawable;->ic_tcx_event_voip_16dp:I

    invoke-interface {v10, v12}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v9, v9, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_alertBackgroundRed:I

    invoke-interface {v9, v11}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 17
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_2

    .line 18
    :cond_3
    invoke-virtual {v9, v8}, Le/a/v/a/b0/c;->Ij(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 19
    iget-object v10, v9, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v12, Lcom/truecaller/details_view/R$drawable;->ic_tcx_event_voip_16dp:I

    invoke-interface {v10, v12}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v9, v9, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {v9, v11}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 21
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_2

    .line 22
    :cond_4
    iget v10, v8, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const-string v11, "resourceProvider.getDraw\u2026c_tcx_event_blocked_16dp)"

    if-ne v10, v5, :cond_5

    .line 23
    iget-object v10, v9, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v12, Lcom/truecaller/details_view/R$drawable;->ic_tcx_event_blocked_16dp:I

    invoke-interface {v10, v12}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v9, v9, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_alertBackgroundRed:I

    invoke-interface {v9, v11}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 25
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_5
    if-ne v10, v2, :cond_6

    .line 26
    iget-object v10, v9, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v12, Lcom/truecaller/details_view/R$drawable;->ic_tcx_event_blocked_16dp:I

    invoke-interface {v10, v12}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v9, v9, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_alertBackgroundRed:I

    invoke-interface {v9, v11}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 28
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    .line 29
    :cond_6
    iget v10, v8, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v10, v5, :cond_7

    .line 30
    iget-object v10, v9, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v11, Lcom/truecaller/details_view/R$drawable;->ic_tcx_event_incoming_call_16dp:I

    invoke-interface {v10, v11}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v11, "resourceProvider.getDraw\u2026event_incoming_call_16dp)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v9, v9, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {v9, v11}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 32
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_7
    if-ne v10, v6, :cond_8

    .line 33
    iget-object v10, v9, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v11, Lcom/truecaller/details_view/R$drawable;->ic_tcx_event_outgoing_call_16dp:I

    invoke-interface {v10, v11}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v11, "resourceProvider.getDraw\u2026event_outgoing_call_16dp)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v9, v9, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {v9, v11}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 35
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_8
    if-ne v10, v2, :cond_9

    .line 36
    iget-object v10, v9, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v11, Lcom/truecaller/details_view/R$drawable;->ic_tcx_event_missed_call_16dp:I

    invoke-interface {v10, v11}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v11, "resourceProvider.getDraw\u2026x_event_missed_call_16dp)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v9, v9, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_alertBackgroundRed:I

    invoke-interface {v9, v11}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 38
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_9
    move-object v10, v4

    .line 39
    :goto_2
    iget-object v9, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 40
    iget-object v11, v8, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 41
    iget-object v12, v8, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    const-string v13, "it.rawNumber"

    .line 42
    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_a

    .line 44
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    goto :goto_3

    :cond_a
    move-object v11, v12

    .line 45
    :goto_3
    iget-object v9, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 46
    iget-wide v12, v8, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    move-object/from16 v16, v3

    .line 47
    iget-wide v2, v8, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 48
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v4, v9, Le/a/v/a/b0/c;->j:Le/a/o5/b0;

    invoke-interface {v4, v12, v13}, Le/a/o5/b0;->n(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x0

    cmp-long v4, v2, v12

    if-lez v4, :cond_b

    const-string v4, " ("

    .line 50
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v4, v9, Le/a/v/a/b0/c;->j:Le/a/o5/b0;

    invoke-interface {v4, v2, v3}, Le/a/o5/b0;->i(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 52
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v2, "stringBuilder.toString()"

    invoke-static {v12, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v2, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 55
    iget-object v3, v8, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const-string v4, "it.subscriptionId"

    .line 56
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v4, v2, Le/a/v/a/b0/c;->m:Le/a/e4/b0;

    invoke-interface {v4, v3}, Le/a/e4/b0;->get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 58
    iget v3, v3, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_d

    goto :goto_5

    .line 59
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_e

    .line 60
    iget-object v3, v2, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v4, Lcom/truecaller/details_view/R$drawable;->ic_sim1:I

    invoke-interface {v3, v4}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "resourceProvider.getDrawable(R.drawable.ic_sim1)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v2, v2, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {v2, v4}, Le/a/p5/h0;->l(I)I

    move-result v2

    .line 62
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_6

    :cond_e
    :goto_5
    if-nez v3, :cond_f

    goto :goto_7

    .line 63
    :cond_f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 64
    iget-object v3, v2, Le/a/v/a/b0/c;->k:Le/a/p5/c0;

    sget v4, Lcom/truecaller/details_view/R$drawable;->ic_sim2:I

    invoke-interface {v3, v4}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "resourceProvider.getDrawable(R.drawable.ic_sim2)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v2, v2, Le/a/v/a/b0/c;->l:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {v2, v4}, Le/a/p5/h0;->l(I)I

    move-result v2

    .line 66
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_6
    move-object v13, v3

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v13, 0x0

    .line 67
    :goto_8
    new-instance v14, Le/a/v/a/b0/c$b$b;

    invoke-direct {v14, v8, v0}, Le/a/v/a/b0/c$b$b;-><init>(Lcom/truecaller/data/entity/HistoryEvent;Le/a/v/a/b0/c$b;)V

    move-object v9, v15

    .line 68
    invoke-direct/range {v9 .. v14}, Le/a/v/a/b0/e;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ls1/z/b/a;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    const/4 v2, 0x3

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_11
    move-object v4, v7

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    const/4 v2, 0x0

    if-eqz v4, :cond_14

    .line 69
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_a

    :cond_13
    move v3, v2

    goto :goto_b

    :cond_14
    :goto_a
    move v3, v5

    :goto_b
    if-eqz v3, :cond_16

    .line 70
    iget-object v2, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 71
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/b0/b;

    if-eqz v2, :cond_15

    .line 72
    invoke-interface {v2}, Le/a/v/a/b0/b;->b()V

    :cond_15
    return-object v1

    .line 73
    :cond_16
    iget-object v3, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 74
    iget-object v3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/v/a/b0/b;

    if-eqz v3, :cond_17

    .line 75
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/v/a/b0/e;

    invoke-static {v4, v5}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/v/a/b0/e;

    invoke-static {v4, v6}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/v/a/b0/e;

    invoke-interface {v3, v2, v5, v6}, Le/a/v/a/b0/b;->f(Le/a/v/a/b0/e;Le/a/v/a/b0/e;Le/a/v/a/b0/e;)V

    .line 76
    :cond_17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_18

    .line 77
    iget-object v2, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 78
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/b0/b;

    if-eqz v2, :cond_19

    .line 79
    iget-object v3, v0, Le/a/v/a/b0/c$b;->f:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v2, v3}, Le/a/v/a/b0/b;->c(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_c

    .line 80
    :cond_18
    iget-object v2, v0, Le/a/v/a/b0/c$b;->g:Le/a/v/a/b0/c;

    .line 81
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/b0/b;

    if-eqz v2, :cond_19

    .line 82
    invoke-interface {v2}, Le/a/v/a/b0/b;->g()V

    :cond_19
    :goto_c
    return-object v1
.end method
