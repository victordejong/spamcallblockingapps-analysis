.class public final Le/a/c/a/n/b/e$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/n/b/e$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$execute$1$1"
    f = "RemindersPageFlowUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Le/a/c/a/n/b/e$b;


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/e$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/b/e$b$a;->g:Le/a/c/a/n/b/e$b;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ls1/w/d;

    const-string v0, "pastReminders"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upcomingReminders"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/n/b/e$b$a;

    iget-object v1, p0, Le/a/c/a/n/b/e$b$a;->g:Le/a/c/a/n/b/e$b;

    invoke-direct {v0, v1, p3}, Le/a/c/a/n/b/e$b$a;-><init>(Le/a/c/a/n/b/e$b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/n/b/e$b$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a/n/b/e$b$a;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/n/b/e$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v1, v0, Le/a/c/a/n/b/e$b$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Le/a/c/a/n/b/e$b$a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "Reminders inner: past rem :"

    .line 2
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " upcoming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v5, v0, Le/a/c/a/n/b/e$b$a;->g:Le/a/c/a/n/b/e$b;

    iget-object v5, v5, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 9
    move-object v9, v8

    check-cast v9, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 10
    instance-of v10, v9, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v10, :cond_0

    check-cast v9, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 11
    iget-object v9, v9, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 12
    instance-of v10, v9, Le/a/c/a/l/b$g;

    if-eqz v10, :cond_0

    check-cast v9, Le/a/c/a/l/b$g;

    .line 13
    iget-boolean v9, v9, Le/a/c/a/l/b$g;->u:Z

    if-eqz v9, :cond_0

    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    if-eqz v9, :cond_1

    .line 14
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v5, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 18
    check-cast v5, Lcom/truecaller/insights/ui/models/AdapterItem;

    const-string v6, "$this$upcomingToPastReminder"

    .line 19
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v6, v5, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v6, :cond_5

    .line 21
    check-cast v5, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 22
    iget-object v6, v5, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    const-string v8, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpcomingItem"

    .line 23
    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Le/a/c/a/l/b$g;

    .line 24
    new-instance v15, Le/a/c/a/l/b$e;

    .line 25
    iget-wide v9, v6, Le/a/c/a/l/b$g;->a:J

    .line 26
    iget-wide v11, v6, Le/a/c/a/l/b$g;->m:J

    .line 27
    iget-object v14, v6, Le/a/c/a/l/b$g;->b:Le/a/c/r/c;

    .line 28
    iget-object v8, v6, Le/a/c/a/l/b$g;->c:Le/a/c/r/c;

    .line 29
    iget-object v13, v6, Le/a/c/a/l/b$g;->e:Ljava/lang/String;

    move-object/from16 p1, v3

    .line 30
    iget-boolean v3, v6, Le/a/c/a/l/b$g;->u:Z

    if-nez v3, :cond_3

    move-object/from16 v16, v8

    .line 31
    iget-object v8, v6, Le/a/c/a/l/b$g;->g:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v16, v8

    .line 32
    iget-object v8, v6, Le/a/c/a/l/b$g;->h:Ljava/lang/String;

    :goto_3
    move-object/from16 v17, v8

    .line 33
    sget v21, Lcom/truecaller/insights/ui/R$attr;->tcx_textSecondary:I

    .line 34
    iget-object v8, v6, Le/a/c/a/l/b$g;->j:Le/a/c/a/l/c;

    move-object/from16 v18, v13

    .line 35
    iget-object v13, v6, Le/a/c/a/l/b$g;->i:Le/a/c/a/l/c;

    move-object/from16 v19, v13

    .line 36
    iget-object v13, v6, Le/a/c/a/l/b$g;->k:Ljava/util/List;

    move-object/from16 v20, v13

    .line 37
    iget-object v13, v6, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 38
    iget-object v3, v6, Le/a/c/a/l/b$g;->h:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v3, ""

    .line 39
    :goto_4
    sget v22, Lcom/truecaller/insights/ui/R$attr;->tcx_textPrimary:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v22, v8

    .line 40
    iget-object v8, v6, Le/a/c/a/l/b$g;->n:Ljava/lang/String;

    move-object/from16 v24, v8

    .line 41
    iget-object v8, v6, Le/a/c/a/l/b$g;->p:Ljava/lang/String;

    move-object/from16 v26, v8

    .line 42
    iget v8, v6, Le/a/c/a/l/b$g;->q:I

    move/from16 v27, v8

    .line 43
    iget-boolean v8, v6, Le/a/c/a/l/b$g;->r:Z

    move/from16 v28, v8

    .line 44
    iget-object v8, v6, Le/a/c/a/l/b$g;->s:Le/a/c/r/j/p;

    move-object/from16 v29, v8

    .line 45
    new-instance v8, Lw3/b/a/b;

    invoke-direct {v8}, Lw3/b/a/b;-><init>()V

    move-wide/from16 v36, v11

    const-string v11, "DateTime.now()"

    .line 46
    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/c/a/c/h/m/a;->a(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v30

    .line 47
    iget-boolean v8, v6, Le/a/c/a/l/b$g;->u:Z

    move/from16 v33, v8

    .line 48
    iget-wide v11, v6, Le/a/c/a/l/b$g;->t:J

    move-wide/from16 v31, v11

    const/16 v34, 0x0

    const v35, 0x400008

    const/4 v6, 0x0

    move-object/from16 v23, v13

    move-object v13, v6

    move-object/from16 v6, v16

    move-object v8, v15

    move-object v11, v14

    move-object v12, v6

    move-object/from16 v14, v18

    move-object v6, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    move-wide/from16 v22, v36

    .line 49
    invoke-direct/range {v8 .. v35}, Le/a/c/a/l/b$e;-><init>(JLe/a/c/r/c;Le/a/c/r/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/a/l/c;Le/a/c/a/l/c;Ljava/util/List;IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLe/a/c/r/j/p;Ljava/lang/String;JZZI)V

    .line 50
    iget-wide v8, v5, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

    const-string v3, "businessTabItem"

    .line 51
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    invoke-direct {v5, v6, v8, v9}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;J)V

    goto :goto_5

    :cond_5
    move-object/from16 p1, v3

    .line 52
    :goto_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    goto/16 :goto_2

    .line 53
    :cond_6
    check-cast v2, Ljava/util/List;

    check-cast v7, Ljava/util/List;

    .line 54
    iget-object v3, v0, Le/a/c/a/n/b/e$b$a;->g:Le/a/c/a/n/b/e$b;

    iget-object v3, v3, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    .line 55
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 57
    new-instance v3, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    .line 58
    sget v9, Lcom/truecaller/insights/ui/R$string;->no_upcoming_items_yet:I

    .line 59
    sget v10, Lcom/truecaller/insights/ui/R$string;->no_upcoming_reminders_as_of_now:I

    .line 60
    sget v11, Lcom/truecaller/insights/ui/R$attr;->ic_reminderSectionEmpty:I

    const-wide/16 v12, -0x456

    move-object v8, v3

    .line 61
    invoke-direct/range {v8 .. v13}, Lcom/truecaller/insights/ui/models/AdapterItem$e;-><init>(IIIJ)V

    .line 62
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 63
    :cond_7
    new-instance v3, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    sget v17, Lcom/truecaller/insights/ui/R$string;->reminders_details_page_upcoming:I

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xd

    move-object v14, v3

    invoke-direct/range {v14 .. v20}, Lcom/truecaller/insights/ui/models/AdapterItem$b;-><init>(JILjava/lang/Integer;ZI)V

    .line 64
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    :goto_6
    iget-object v3, v0, Le/a/c/a/n/b/e$b$a;->g:Le/a/c/a/n/b/e$b;

    iget-object v3, v3, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    invoke-static {v2, v1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    sget v8, Lcom/truecaller/insights/ui/R$string;->reminders_details_page_past:I

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x5

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/truecaller/insights/ui/models/AdapterItem$b;-><init>(JILjava/lang/Integer;ZI)V

    .line 69
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v3, v1}, Le/a/c/a/n/b/e;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v4
.end method
