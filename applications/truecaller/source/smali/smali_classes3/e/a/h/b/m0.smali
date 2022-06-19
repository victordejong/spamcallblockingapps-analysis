.class public final Le/a/h/b/m0;
.super Le/a/u2/a/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/c<",
        "Le/a/h/b/i0;",
        "Le/a/h/b/j0;",
        ">;",
        "Le/a/h/b/h0;"
    }
.end annotation


# static fields
.field public static final synthetic C:[Ls1/a/l;


# instance fields
.field public final A:Le/a/e4/p;

.field public final B:Le/a/h/b/e/b;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/h/b/y0/b/a;

.field public l:Z

.field public m:Le/a/b0/q/v;

.field public final n:Ls1/w/f;

.field public final o:Ls1/w/f;

.field public final p:Lcom/truecaller/calling/dialer/DialerMode;

.field public final q:Le/a/h/b/p0;

.field public final r:Le/a/b0/e/l;

.field public final s:Le/a/o5/q1;

.field public final t:Le/a/o5/f0;

.field public final u:Le/a/h/c/t;

.field public final v:Le/a/h/b/g0$a;

.field public final w:Le/a/q2/a;

.field public final x:Le/a/k3/l/f;

.field public final y:Le/a/h3/b/a;

.field public final z:Le/a/h/b/d/a/b/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/m0;

    const-string v2, "searchState"

    const-string v3, "getSearchState()Lkotlin/Pair;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/m0;->C:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/calling/dialer/DialerMode;Le/a/h/b/p0;Le/a/b0/e/l;Le/a/o5/q1;Le/a/o5/f0;Le/a/h/c/t;Le/a/h/b/g0$a;Le/a/q2/a;Le/a/k3/l/f;Le/a/h3/b/a;Le/a/h/b/d/a/b/b;Le/a/e4/p;Le/a/h/b/e/b;Le/a/h/b/y0/b/a;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "uiCoroutineContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerMode"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneActionsHandler"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialCharSequenceManager"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speedDialSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialInputListener"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipboardDataManager"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryDataHolder"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerState"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchStateHolder"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/c;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/h/b/m0;->n:Ls1/w/f;

    iput-object v2, v0, Le/a/h/b/m0;->o:Ls1/w/f;

    iput-object v3, v0, Le/a/h/b/m0;->p:Lcom/truecaller/calling/dialer/DialerMode;

    iput-object v4, v0, Le/a/h/b/m0;->q:Le/a/h/b/p0;

    iput-object v5, v0, Le/a/h/b/m0;->r:Le/a/b0/e/l;

    iput-object v6, v0, Le/a/h/b/m0;->s:Le/a/o5/q1;

    iput-object v7, v0, Le/a/h/b/m0;->t:Le/a/o5/f0;

    iput-object v8, v0, Le/a/h/b/m0;->u:Le/a/h/c/t;

    iput-object v9, v0, Le/a/h/b/m0;->v:Le/a/h/b/g0$a;

    iput-object v10, v0, Le/a/h/b/m0;->w:Le/a/q2/a;

    iput-object v11, v0, Le/a/h/b/m0;->x:Le/a/k3/l/f;

    iput-object v12, v0, Le/a/h/b/m0;->y:Le/a/h3/b/a;

    iput-object v13, v0, Le/a/h/b/m0;->z:Le/a/h/b/d/a/b/b;

    iput-object v14, v0, Le/a/h/b/m0;->A:Le/a/e4/p;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    .line 2
    sget-object v1, Lcom/truecaller/calling/dialer/DialerMode;->INSIDE_TAB:Lcom/truecaller/calling/dialer/DialerMode;

    if-eq v3, v1, :cond_0

    invoke-interface/range {p13 .. p13}, Le/a/h/b/d/a/b/b;->K7()Lcom/truecaller/callhistory/data/FilterType;

    move-result-object v1

    sget-object v2, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Le/a/h/b/m0;->e:Z

    const-string v1, ""

    .line 3
    iput-object v1, v0, Le/a/h/b/m0;->f:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Le/a/h/b/m0;->g:I

    .line 5
    iput v1, v0, Le/a/h/b/m0;->h:I

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Le/a/h/b/m0;->j:Ljava/util/HashSet;

    .line 7
    iput-object v15, v0, Le/a/h/b/m0;->k:Le/a/h/b/y0/b/a;

    .line 8
    new-instance v1, Le/a/b0/q/v;

    new-instance v2, Le/a/h/b/m0$c;

    invoke-direct {v2, v0}, Le/a/h/b/m0$c;-><init>(Le/a/h/b/m0;)V

    invoke-direct {v1, v2}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;)V

    iput-object v1, v0, Le/a/h/b/m0;->m:Le/a/b0/q/v;

    return-void
.end method


# virtual methods
.method public Dc()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/h/b/m0;->Kj()V

    return-void
.end method

.method public E7()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->k:Le/a/h/b/y0/b/a;

    sget-object v1, Le/a/h/b/m0;->C:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/y0/b/a;->Si(Le/a/h/b/y0/b/j;Ls1/a/l;)Ls1/k;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/h/b/y0/a/d;

    .line 4
    instance-of v1, v0, Le/a/h/b/y0/a/d$c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Le/a/h/b/y0/a/d$c;

    .line 5
    iget-object v3, v0, Le/a/h/b/y0/a/d$c;->a:Lcom/truecaller/data/entity/Contact;

    goto :goto_2

    .line 6
    :cond_0
    instance-of v1, v0, Le/a/h/b/y0/a/d$a;

    if-eqz v1, :cond_3

    check-cast v0, Le/a/h/b/y0/a/d$a;

    .line 7
    iget-object v0, v0, Le/a/h/b/y0/a/d$a;->a:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/b/y0/a/a;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, v0, Le/a/h/b/y0/a/a;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v3, v0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    new-instance v3, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v3}, Lcom/truecaller/data/entity/Contact;-><init>()V

    iget-object v0, p0, Le/a/h/b/m0;->x:Le/a/k3/l/f;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-interface {v0, v1}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 12
    :goto_3
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 13
    check-cast v0, Le/a/h/b/i0;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Le/a/h/b/i0;->Tq(Lcom/truecaller/data/entity/Contact;)V

    .line 14
    :cond_5
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;->SAVE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;

    const-string v2, "dialpad"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/h/b/m0;->w:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public Ed()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/h/b/m0;->l:Z

    .line 2
    iget-object v1, p0, Le/a/h/b/m0;->A:Le/a/e4/p;

    .line 3
    invoke-static {v1}, Le/a/n/g0;->b0(Le/a/e4/p;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/h/b/j0;->f(Z)V

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    invoke-interface {v1}, Le/a/h/b/e/b;->b()Lq3/a/w2/h;

    move-result-object v1

    iget-object v3, p0, Le/a/h/b/m0;->p:Lcom/truecaller/calling/dialer/DialerMode;

    sget-object v4, Lcom/truecaller/calling/dialer/DialerMode;->STANDALONE_TRANSPARENT:Lcom/truecaller/calling/dialer/DialerMode;

    if-eq v3, v4, :cond_1

    move v0, v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Le/a/h/b/j0;->q(Z)V

    .line 7
    :cond_3
    iget-object v0, p0, Le/a/h/b/m0;->p:Lcom/truecaller/calling/dialer/DialerMode;

    sget-object v1, Lcom/truecaller/calling/dialer/DialerMode;->STANDALONE_TRANSPARENT:Lcom/truecaller/calling/dialer/DialerMode;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Le/a/h/b/m0;->Lj()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/h/b/m0;->z:Le/a/h/b/d/a/b/b;

    invoke-interface {v0}, Le/a/h/b/d/a/b/b;->K7()Lcom/truecaller/callhistory/data/FilterType;

    move-result-object v0

    sget-object v1, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    if-ne v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Le/a/h/b/i0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/h/b/i0;->d0()V

    :cond_4
    return-void
.end method

.method public Fb()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/h/b/m0;->l:Z

    .line 2
    iget-object v0, p0, Le/a/h/b/m0;->A:Le/a/e4/p;

    .line 3
    invoke-static {v0}, Le/a/n/g0;->b0(Le/a/e4/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h/b/j0;->f(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    invoke-interface {v0}, Le/a/h/b/e/b;->b()Lq3/a/w2/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    new-instance v5, Le/a/h/b/m0$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Le/a/h/b/m0$a;-><init>(Le/a/h/b/m0;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Fc()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->m:Le/a/b0/q/v;

    invoke-virtual {v0}, Le/a/b0/q/v;->a()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h/b/j0;->q(Z)V

    :cond_0
    return-void
.end method

.method public I7()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/h/b/m0;->l:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h/b/j0;->q(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/h/b/m0;->A:Le/a/e4/p;

    .line 4
    invoke-static {v0}, Le/a/n/g0;->b0(Le/a/e4/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    invoke-interface {v0}, Le/a/h/b/e/b;->b()Lq3/a/w2/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public Ic(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Le/a/h/b/m0;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/h/b/m0;->Qj()V

    return-void
.end method

.method public final Ij(C)V
    .locals 3

    .line 1
    iget v0, p0, Le/a/h/b/m0;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/h/b/g0;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_1

    iget v2, p0, Le/a/h/b/m0;->h:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Le/a/h/b/g0;->k(IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public J7()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/h/b/m0;->Nj()V

    return-void
.end method

.method public final Jj(C)Z
    .locals 7

    const/16 v0, 0x2c

    const/16 v1, 0x3b

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    return v2

    .line 1
    :cond_0
    iget v3, p0, Le/a/h/b/m0;->g:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_8

    .line 2
    iget-object v6, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_4

    return v2

    .line 3
    :cond_4
    iget-object p1, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_5

    return v5

    .line 4
    :cond_5
    iget p1, p0, Le/a/h/b/m0;->h:I

    if-eq p1, v4, :cond_7

    iget-object v0, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    iget v0, p0, Le/a/h/b/m0;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v5

    :cond_7
    :goto_1
    return v2

    :cond_8
    :goto_2
    return v5
.end method

.method public K6(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->p:Lcom/truecaller/calling/dialer/DialerMode;

    sget-object v1, Lcom/truecaller/calling/dialer/DialerMode;->INSIDE_TAB:Lcom/truecaller/calling/dialer/DialerMode;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/h/b/i0;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/truecaller/calling/dialer/DialerMode;->STANDALONE_TRANSPARENT:Lcom/truecaller/calling/dialer/DialerMode;

    invoke-interface {v0, v1, p1}, Le/a/h/b/i0;->ml(Lcom/truecaller/calling/dialer/DialerMode;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-interface {v0, p1}, Le/a/h/b/j0;->c(Ljava/lang/String;)V

    .line 5
    :cond_3
    sget-object p1, Lcom/truecaller/calling/dialer/util/CallLogViewState;->VISIBLE:Lcom/truecaller/calling/dialer/util/CallLogViewState;

    iget-object v0, p0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    invoke-interface {v0}, Le/a/h/b/e/b;->a()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/calling/dialer/util/CallLogViewState;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Le/a/h/b/m0;->Oj(Z)V

    :cond_4
    return-void
.end method

.method public Kg(Le/a/h/b/e/e/f;)V
    .locals 2

    const-string v0, "editable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Le/a/h/b/e/e/a;

    invoke-virtual {p1}, Le/a/h/b/e/e/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object v0, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Le/a/h/b/m0;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Le/a/h/b/m0;->Qj()V

    .line 6
    iget-object v1, p0, Le/a/h/b/m0;->s:Le/a/o5/q1;

    invoke-interface {v1, v0}, Le/a/o5/q1;->a(Ljava/lang/String;)Le/a/o5/r1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p1, Le/a/h/b/e/e/a;->a:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 8
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/j0;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Le/a/h/b/j0;->i(Le/a/o5/r1;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/h/b/m0;->v:Le/a/h/b/g0$a;

    invoke-virtual {p0}, Le/a/h/b/m0;->Mj()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/h/b/g0$a;->na(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Kj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->j:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, v1}, Le/a/h/b/j0;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Lj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Mg(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v3, Le/a/h/b/m0$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/h/b/m0$b;-><init>(Le/a/h/b/m0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Mj()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 4
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-gt v7, v5, :cond_0

    if-ge v6, v5, :cond_1

    :cond_0
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-eqz v6, :cond_3

    .line 5
    invoke-interface {v1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public Nc()V
    .locals 3

    .line 1
    iget v0, p0, Le/a/h/b/m0;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Le/a/h/b/g0;->e(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Le/a/h/b/m0;->h:I

    if-gt v1, v0, :cond_1

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Le/a/h/b/g0;->e(II)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/h/b/j0;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Le/a/h/b/g0;->e(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Nj()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/h/b/m0;->e:Z

    iget-boolean v1, p0, Le/a/h/b/m0;->l:Z

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/h/b/m0;->e:Z

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/h/b/j0;->setVisible(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/h/b/m0;->Qj()V

    :cond_1
    return-void
.end method

.method public O8(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->q:Le/a/h/b/p0;

    .line 2
    sget-object v1, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_TCGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-interface {v0, p1, v2, v3, v1}, Le/a/h/b/p0;->Ow(Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V

    return-void
.end method

.method public final Oj(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/h/b/m0;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/h/b/m0;->e:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/h/b/m0$d;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/h/b/m0$d;-><init>(Le/a/h/b/m0;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/j0;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Le/a/h/b/j0;->setVisible(Z)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/a/h/b/m0;->Qj()V

    :cond_2
    return-void
.end method

.method public final Pj(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/b/m0;->q:Le/a/h/b/p0;

    invoke-interface {p1}, Le/a/h/b/p0;->Zx()V

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0x9

    const/4 v3, 0x2

    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    if-lt v2, p1, :cond_3

    .line 2
    iget-object v2, p0, Le/a/h/b/m0;->u:Le/a/h/c/t;

    invoke-interface {v2, p1}, Le/a/h/c/t;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    iget-object p1, p0, Le/a/h/b/m0;->q:Le/a/h/b/p0;

    const/4 v3, 0x0

    const-string v4, "dialpad"

    invoke-interface {p1, v2, v3, v0, v4}, Le/a/h/b/p0;->Md(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/h/b/m0;->q:Le/a/h/b/p0;

    invoke-interface {v0, p1}, Le/a/h/b/p0;->Cl(I)V

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final Qj()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Le/a/h/b/m0;->Lj()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Le/a/h/b/g0$b$b;->a:Le/a/h/b/g0$b$b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/a/h/b/m0;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v2, Le/a/h/b/g0$b$c;

    invoke-direct {v2, v1}, Le/a/h/b/g0$b$c;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    sget-object v1, Le/a/h/b/g0$b$a;->a:Le/a/h/b/g0$b$a;

    :goto_0
    invoke-interface {v0, v1}, Le/a/h/b/g0;->g(Le/a/h/b/g0$b;)V

    .line 3
    iget-object v1, p0, Le/a/h/b/m0;->p:Lcom/truecaller/calling/dialer/DialerMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 4
    iget-boolean v1, p0, Le/a/h/b/m0;->e:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Le/a/h/b/m0;->Mj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v1, :cond_6

    iget-object v1, p0, Le/a/h/b/m0;->z:Le/a/h/b/d/a/b/b;

    invoke-interface {v1}, Le/a/h/b/d/a/b/b;->K7()Lcom/truecaller/callhistory/data/FilterType;

    move-result-object v1

    sget-object v4, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    if-eq v1, v4, :cond_4

    goto :goto_2

    .line 5
    :cond_3
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_4
    move v2, v3

    goto :goto_2

    .line 6
    :cond_5
    iget-boolean v1, p0, Le/a/h/b/m0;->e:Z

    if-nez v1, :cond_4

    .line 7
    :cond_6
    :goto_2
    invoke-interface {v0, v2}, Le/a/h/b/j0;->r(Z)V

    .line 8
    sget-object v1, Lcom/truecaller/calling/dialer/DialpadState;->NUMBER_ENTERED:Lcom/truecaller/calling/dialer/DialpadState;

    invoke-interface {v0, v1}, Le/a/h/b/j0;->l(Lcom/truecaller/calling/dialer/DialpadState;)V

    .line 9
    iget-boolean v1, p0, Le/a/h/b/m0;->e:Z

    if-nez v1, :cond_7

    .line 10
    invoke-interface {v0, v3}, Le/a/h/b/j0;->p(Z)V

    :cond_7
    return-void
.end method

.method public U4(CLcom/truecaller/dialpad_view/DialpadKeyActionState;)V
    .locals 1

    const-string v0, "dialpadKeyState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/h/b/m0;->j:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Le/a/h/b/m0;->j:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Le/a/h/b/m0;->Ij(C)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p2, p0, Le/a/h/b/m0;->j:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public V(II)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/h/b/m0;->g:I

    .line 2
    iput p2, p0, Le/a/h/b/m0;->h:I

    return-void
.end method

.method public Wg()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->t:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/h/b/m0;->p:Lcom/truecaller/calling/dialer/DialerMode;

    sget-object v2, Lcom/truecaller/calling/dialer/DialerMode;->INSIDE_TAB:Lcom/truecaller/calling/dialer/DialerMode;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 4
    check-cast v1, Le/a/h/b/i0;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/truecaller/calling/dialer/DialerMode;->STANDALONE_TRANSPARENT:Lcom/truecaller/calling/dialer/DialerMode;

    invoke-interface {v1, v2, v0}, Le/a/h/b/i0;->ml(Lcom/truecaller/calling/dialer/DialerMode;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Le/a/h/b/j0;->c(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Le/a/h/b/m0;->Oj(Z)V

    :cond_2
    :goto_0
    const-string v0, "callLog"

    .line 7
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->PASTE:Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;

    const-string v2, "context"

    .line 8
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "subAction"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "menu"

    const-string v3, "action"

    .line 10
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v3, v2, v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Le/a/h/b/m0;->w:Le/a/q2/a;

    invoke-static {v3, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    const/4 v0, 0x1

    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/h/b/j0;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/h/b/j0;->m()V

    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, v0}, Le/a/h/b/j0;->o(Z)V

    .line 6
    invoke-virtual {p0}, Le/a/h/b/m0;->Qj()V

    .line 7
    iget-object v0, p0, Le/a/h/b/m0;->p:Lcom/truecaller/calling/dialer/DialerMode;

    sget-object v1, Lcom/truecaller/calling/dialer/DialerMode;->INSIDE_TAB:Lcom/truecaller/calling/dialer/DialerMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Le/a/h/b/m0;->z:Le/a/h/b/d/a/b/b;

    invoke-interface {v0}, Le/a/h/b/d/a/b/b;->K7()Lcom/truecaller/callhistory/data/FilterType;

    move-result-object v0

    sget-object v1, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    if-eq v0, v1, :cond_1

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/h/b/m0;->m:Le/a/b0/q/v;

    invoke-virtual {v0}, Le/a/b0/q/v;->a()V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    new-instance v4, Le/a/h/b/l0;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/h/b/l0;-><init>(Le/a/h/b/m0;Le/a/h/b/j0;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c3()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/m0;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/h/b/m0;->K6(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c7()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/m0;->Kj()V

    .line 2
    iget-object v0, p0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    invoke-interface {v0}, Le/a/h/b/e/b;->b()Lq3/a/w2/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Le/a/h/b/m0;->Oj(Z)V

    return-void
.end method

.method public de(II)Z
    .locals 2

    const/16 v0, -0x126d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, -0x126c

    if-eq p1, v0, :cond_2

    const/16 v0, -0x126a

    if-eq p1, v0, :cond_1

    const/16 v0, -0x1268

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Le/a/h/b/m0;->Pj(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/16 p1, 0x2b

    .line 2
    invoke-virtual {p0, p1}, Le/a/h/b/m0;->Ij(C)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x3b

    .line 3
    invoke-virtual {p0, p1}, Le/a/h/b/m0;->Jj(C)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p0, p1}, Le/a/h/b/m0;->Ij(C)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x2c

    .line 5
    invoke-virtual {p0, p1}, Le/a/h/b/m0;->Jj(C)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Le/a/h/b/m0;->Ij(C)V

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 7
    iget-object p1, p0, Le/a/h/b/m0;->j:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_5
    return v1
.end method

.method public e5()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/h/b/j0;->m()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/a/h/b/m0;->e:Z

    .line 4
    invoke-virtual {p0}, Le/a/h/b/m0;->Qj()V

    :cond_0
    return-void
.end method

.method public g1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/h/b/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/b/i0;->g1()V

    :cond_0
    return-void
.end method

.method public gg()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/h/b/m0;->l:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h/b/j0;->q(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/h/b/m0;->A:Le/a/e4/p;

    .line 4
    invoke-static {v0}, Le/a/n/g0;->b0(Le/a/e4/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    invoke-interface {v0}, Le/a/h/b/e/b;->b()Lq3/a/w2/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public ig()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/a/h/b/m0;->e:Z

    invoke-virtual {p0}, Le/a/h/b/m0;->Lj()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/h/b/m0;->z:Le/a/h/b/d/a/b/b;

    invoke-interface {v0}, Le/a/h/b/d/a/b/b;->db()Le/a/h/b/d/b/i;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, v0, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 5
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Le/a/h/b/j0;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-boolean v0, p0, Le/a/h/b/m0;->e:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Le/a/h/b/m0;->Lj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x39

    const/16 v2, 0x31

    iget-object v3, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, v3, :cond_2

    .line 8
    iget-object v0, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Integer.valueOf(\"${currentText[0]}\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Le/a/h/b/m0;->Pj(I)Z

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/h/b/m0;->q:Le/a/h/b/p0;

    iget-object v2, p0, Le/a/h/b/m0;->f:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialpad"

    invoke-interface {v0, v2, v3, v1, v4}, Le/a/h/b/p0;->Md(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "context"

    .line 10
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    const-string v1, "action"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v1, v0, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Le/a/h/b/m0;->w:Le/a/q2/a;

    invoke-static {v1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 14
    :goto_1
    invoke-virtual {p0}, Le/a/h/b/m0;->Kj()V

    goto :goto_2

    .line 15
    :cond_3
    iget-boolean v0, p0, Le/a/h/b/m0;->e:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Le/a/h/b/m0;->e:Z

    .line 16
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/j0;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Le/a/h/b/j0;->setVisible(Z)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Le/a/h/b/m0;->Qj()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/b/j0;->h()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/b/j0;->a()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/j0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/h/b/j0;->d()V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/h/b/m0;->y:Le/a/h3/b/a;

    invoke-interface {v0}, Le/a/h3/b/a;->g()V

    .line 4
    new-instance v4, Le/a/h/b/k0;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/h/b/k0;-><init>(Le/a/h/b/m0;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public s5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/h/b/m0;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/h/b/m0;->Nj()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v2()V
    .locals 4

    const/4 v0, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "callLog"

    :goto_0
    const-string v2, "xKeyPadFAB"

    const-string v3, "action"

    .line 1
    invoke-static {v2, v3, v2, v1, v0}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/h/b/m0;->w:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le/a/h/b/m0;->Oj(Z)V

    return-void
.end method

.method public vb()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/h/b/m0;->Nj()V

    return-void
.end method
