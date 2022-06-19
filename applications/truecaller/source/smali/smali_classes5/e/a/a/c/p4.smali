.class public final Le/a/a/c/p4;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/n4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/r4;",
        ">;",
        "Le/a/a/c/n4;"
    }
.end annotation


# instance fields
.field public final A:Le/a/a/i0;

.field public final B:Z

.field public final C:Le/a/a/i1/b;

.field public d:Z

.field public final e:Ls1/w/f;

.field public final f:Le/a/a/c/m5;

.field public final g:Le/a/a/c/s4;

.field public final h:Le/a/d/c0/s1;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/c/n4$a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/a/c/r3;

.field public final k:Le/a/p5/h0;

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/r2/j;

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Le/a/u3/g;

.field public final r:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Le/a/a/c/b4;

.field public final t:Le/a/c/b/j;

.field public final u:Le/a/c/i/e/c;

.field public final v:Le/a/a/c/a/n;

.field public final w:Le/a/a/c/a/g;

.field public final x:Le/a/b0/e/r/a;

.field public final y:Le/a/a/c/f4;

.field public final z:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/a/c/m5;Le/a/a/c/s4;Le/a/d/c0/s1;Lo3/a;Le/a/a/c/r3;Le/a/p5/h0;Lo3/a;Le/a/r2/j;ZZZLe/a/u3/g;Le/a/r2/f;Le/a/a/c/b4;Le/a/c/b/j;Le/a/c/i/e/c;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/b0/e/r/a;Le/a/a/c/f4;Le/a/q2/a;Le/a/a/i0;ZLe/a/a/i1/b;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p9    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "UiThread"
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsHiddenNumberIntent"
        .end annotation
    .end param
    .param p11    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsBubbleIntent"
        .end annotation
    .end param
    .param p12    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsUrgentIntent"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/a/c/m5;",
            "Le/a/a/c/s4;",
            "Le/a/d/c0/s1;",
            "Lo3/a<",
            "Le/a/a/c/n4$a;",
            ">;",
            "Le/a/a/c/r3;",
            "Le/a/p5/h0;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/r2/j;",
            "ZZZ",
            "Le/a/u3/g;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/a/c/b4;",
            "Le/a/c/b/j;",
            "Le/a/c/i/e/c;",
            "Le/a/a/c/a/n;",
            "Le/a/a/c/a/g;",
            "Le/a/b0/e/r/a;",
            "Le/a/a/c/f4;",
            "Le/a/q2/a;",
            "Le/a/a/i0;",
            "Z",
            "Le/a/a/i1/b;",
            ")V"
        }
    .end annotation

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

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v0, p19

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationState"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesPresenter"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationAnalytics"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerPresenter"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFeedbackManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartCardsManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCardsManagerRevamp"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputPresenter"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p19

    iput-object v1, v0, Le/a/a/c/p4;->e:Ls1/w/f;

    iput-object v2, v0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    iput-object v3, v0, Le/a/a/c/p4;->g:Le/a/a/c/s4;

    iput-object v4, v0, Le/a/a/c/p4;->h:Le/a/d/c0/s1;

    iput-object v5, v0, Le/a/a/c/p4;->i:Lo3/a;

    iput-object v6, v0, Le/a/a/c/p4;->j:Le/a/a/c/r3;

    iput-object v7, v0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    iput-object v8, v0, Le/a/a/c/p4;->l:Lo3/a;

    iput-object v9, v0, Le/a/a/c/p4;->m:Le/a/r2/j;

    move/from16 v1, p10

    iput-boolean v1, v0, Le/a/a/c/p4;->n:Z

    move/from16 v1, p11

    iput-boolean v1, v0, Le/a/a/c/p4;->o:Z

    move/from16 v1, p12

    iput-boolean v1, v0, Le/a/a/c/p4;->p:Z

    iput-object v10, v0, Le/a/a/c/p4;->q:Le/a/u3/g;

    iput-object v11, v0, Le/a/a/c/p4;->r:Le/a/r2/f;

    iput-object v12, v0, Le/a/a/c/p4;->s:Le/a/a/c/b4;

    iput-object v13, v0, Le/a/a/c/p4;->t:Le/a/c/b/j;

    iput-object v14, v0, Le/a/a/c/p4;->u:Le/a/c/i/e/c;

    move-object/from16 v1, p18

    iput-object v1, v0, Le/a/a/c/p4;->v:Le/a/a/c/a/n;

    iput-object v15, v0, Le/a/a/c/p4;->w:Le/a/a/c/a/g;

    move-object/from16 v1, p20

    move-object/from16 v2, p21

    iput-object v1, v0, Le/a/a/c/p4;->x:Le/a/b0/e/r/a;

    iput-object v2, v0, Le/a/a/c/p4;->y:Le/a/a/c/f4;

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    iput-object v1, v0, Le/a/a/c/p4;->z:Le/a/q2/a;

    iput-object v2, v0, Le/a/a/c/p4;->A:Le/a/a/i0;

    move/from16 v1, p24

    iput-boolean v1, v0, Le/a/a/c/p4;->B:Z

    move-object/from16 v1, p25

    iput-object v1, v0, Le/a/a/c/p4;->C:Le/a/a/i1/b;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    :goto_0
    const-string v0, "if (isBusinessIm) {\n    \u2026ess\n    } else rawAddress"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final Jj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/a/c/p4;->Lj()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 4
    iget v0, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Kj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Le/a/a/c/p4;->n:Z

    :goto_0
    return v0
.end method

.method public final Lj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public final Mj(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/c/p4;->r:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v1, v0, p1}, Le/a/a/k/a/a/m;->o(Ljava/lang/String;I)Le/a/r2/x;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/a/c/p4;->m:Le/a/r2/j;

    new-instance v1, Le/a/a/c/p4$d;

    invoke-direct {v1, p0}, Le/a/a/c/p4$d;-><init>(Le/a/a/c/p4;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public final Nj(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    iget-object p3, p0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    new-array v1, v2, [Ljava/lang/Object;

    aget-object v0, v0, v3

    invoke-static {v0}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-interface {p3, p2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resourceProvider.getStri\u2026layName(participants[0]))"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resourceProvider.getString(messageMultiple)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/a/c/r4;

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Le/a/a/c/r4;->h4(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Og(Landroid/view/Menu;)V
    .locals 9

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    const v1, 0x7f04068f

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    const v2, 0x7f04068d

    invoke-interface {v1, v2}, Le/a/p5/h0;->l(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    const v3, 0x7f04056e

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v2

    .line 4
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 5
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const-string v6, "menu.getItem(i)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v7, 0x7f0a00ab

    if-eq v5, v7, :cond_2

    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v7, 0x7f0a00a9

    if-eq v5, v7, :cond_2

    .line 6
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v7, 0x7f0a00a5

    if-eq v5, v7, :cond_2

    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v7, 0x7f0a00bd

    if-ne v5, v7, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v7, 0x7f0a00e0

    if-ne v5, v7, :cond_1

    invoke-virtual {p0}, Le/a/a/c/p4;->Y8()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f080629

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Le/a/p5/s0/f;->f(Landroid/view/MenuItem;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    goto :goto_2

    .line 10
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Le/a/p5/s0/f;->e(Landroid/view/MenuItem;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Le/a/p5/s0/f;->e(Landroid/view/MenuItem;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public R1()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/r4;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/a/c/r4;->W3()V

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/a/c/p4;->r:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Le/a/a/k/a/a/m;->v(Ljava/lang/String;Z)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/p4;->m:Le/a/r2/j;

    new-instance v2, Le/a/a/c/p4$a;

    invoke-direct {v2, p0}, Le/a/a/c/p4$a;-><init>(Le/a/a/c/p4;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_1
    return-void
.end method

.method public Tb()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object v0

    sget-object v1, Lcom/truecaller/messaging/conversation/ConversationMode;->SCHEDULE:Lcom/truecaller/messaging/conversation/ConversationMode;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0e0031

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Le/a/a/c/p4;->o:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0e0004

    goto :goto_0

    :cond_1
    const v0, 0x7f0e000e

    :goto_0
    return v0
.end method

.method public V2()V
    .locals 3

    const v0, 0x7f1203d1

    const v1, 0x7f120326

    const v2, 0x7f120325

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/a/c/p4;->Nj(III)V

    return-void
.end method

.method public Y8()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/a/c/p4;->A:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->z1()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public d2()V
    .locals 3

    const v0, 0x7f1203d0

    const v1, 0x7f120324

    const v2, 0x7f120323

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/a/c/p4;->Nj(III)V

    return-void
.end method

.method public o2(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/a/c/p4;->r:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-interface {v1, v0, p1}, Le/a/a/k/a/a/m;->g(Ljava/lang/String;Z)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    :cond_1
    return-void
.end method

.method public q9(I)Z
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Le/a/a/c/r4;

    const/4 v0, 0x0

    if-eqz v6, :cond_7

    .line 2
    iget-object v1, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/a/c/p4;->g:Le/a/a/c/s4;

    invoke-interface {v2}, Le/a/a/c/k/a/j$b;->r4()V

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "viewAllMedia"

    goto :goto_0

    :sswitch_1
    const-string v2, "unMuteNotifications"

    goto :goto_0

    :sswitch_2
    const-string v2, "unblock"

    goto :goto_0

    :sswitch_3
    const-string v2, "conversationSearch"

    goto :goto_0

    :sswitch_4
    const-string v2, "save"

    goto :goto_0

    :sswitch_5
    const-string v2, "neverMarkAsSpam"

    goto :goto_0

    :sswitch_6
    const-string v2, "muteNotifications"

    goto :goto_0

    :sswitch_7
    const-string v2, "markAsUnread"

    goto :goto_0

    :sswitch_8
    const-string v2, "leaveGroup"

    goto :goto_0

    :sswitch_9
    const-string v2, "groupInfo"

    goto :goto_0

    :sswitch_a
    const-string v2, "enableSmartSms"

    goto :goto_0

    :sswitch_b
    const-string v2, "disableSmartSms"

    goto :goto_0

    :sswitch_c
    const-string v2, "deleteScheduledMessages"

    goto :goto_0

    :sswitch_d
    const-string v2, "deleteHistory"

    goto :goto_0

    :sswitch_e
    const-string v2, "delete"

    goto :goto_0

    :sswitch_f
    const-string v2, "call"

    goto :goto_0

    :sswitch_10
    const-string v2, "block"

    goto :goto_0

    :sswitch_11
    const-string v2, "addParticipant"

    :goto_0
    move-object v13, v2

    .line 4
    iget-object v2, p0, Le/a/a/c/p4;->z:Le/a/q2/a;

    const-string v3, "ConversationOverflowMenu"

    const-string v4, "type"

    .line 5
    invoke-static {v3, v4}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v12, "menuItem"

    const-string v8, "name"

    const-string v10, "value"

    move-object v7, v12

    move-object v9, v13

    move-object v11, v4

    .line 6
    invoke-static/range {v7 .. v13}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v7, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 7
    invoke-static {v3, v5, v4, v7, v2}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    :goto_1
    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_1

    .line 8
    iget-object v0, p0, Le/a/a/c/p4;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/n4$a;

    invoke-interface {v0, p1}, Le/a/a/c/n4$a;->R0(I)V

    goto/16 :goto_3

    :sswitch_12
    if-eqz v1, :cond_6

    .line 9
    invoke-interface {v6, v1}, Le/a/a/c/r4;->l1(Lcom/truecaller/messaging/data/types/Conversation;)V

    goto/16 :goto_3

    .line 10
    :sswitch_13
    invoke-virtual {p0, v0}, Le/a/a/c/p4;->Mj(I)V

    goto/16 :goto_3

    :sswitch_14
    if-eqz v1, :cond_6

    .line 11
    iget-object p1, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {p1}, Le/a/a/c/m5;->getFilter()I

    move-result p1

    invoke-interface {v6, v1, p1}, Le/a/a/c/r4;->Q6(Lcom/truecaller/messaging/data/types/Conversation;I)V

    goto/16 :goto_3

    :sswitch_15
    if-eqz v1, :cond_6

    .line 12
    iget-object p1, p0, Le/a/a/c/p4;->i:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/n4$a;

    invoke-interface {p1}, Le/a/a/c/n4$a;->L0()V

    .line 13
    iget-wide v0, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-interface {v6, v0, v1}, Le/a/a/c/r4;->Mq(J)V

    goto/16 :goto_3

    :sswitch_16
    if-eqz v1, :cond_6

    .line 14
    invoke-interface {v6, v1}, Le/a/a/c/r4;->b7(Lcom/truecaller/messaging/data/types/Conversation;)V

    goto/16 :goto_3

    :sswitch_17
    const p1, 0x7f1203d1

    const v0, 0x7f120326

    const v1, 0x7f120325

    .line 15
    invoke-virtual {p0, p1, v0, v1}, Le/a/a/c/p4;->Nj(III)V

    goto/16 :goto_3

    :sswitch_18
    const p1, 0x7f1203d0

    const v0, 0x7f120324

    const v1, 0x7f120323

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Le/a/a/c/p4;->Nj(III)V

    goto/16 :goto_3

    .line 17
    :sswitch_19
    invoke-virtual {p0, v7}, Le/a/a/c/p4;->Mj(I)V

    goto/16 :goto_3

    .line 18
    :sswitch_1a
    iput-boolean v7, p0, Le/a/a/c/p4;->d:Z

    .line 19
    iget-object p1, p0, Le/a/a/c/p4;->g:Le/a/a/c/s4;

    invoke-interface {p1}, Le/a/a/c/s4;->p7()V

    goto/16 :goto_3

    :sswitch_1b
    if-eqz v1, :cond_1

    .line 20
    iget-object p1, v1, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, ""

    .line 22
    :goto_2
    invoke-interface {v6, p1}, Le/a/a/c/r4;->x5(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    return v0

    .line 23
    :sswitch_1c
    iget-object p1, p0, Le/a/a/c/p4;->i:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/n4$a;

    invoke-interface {p1}, Le/a/a/c/n4$a;->l0()V

    goto/16 :goto_3

    :sswitch_1d
    if-eqz v1, :cond_6

    .line 24
    iget-object p1, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_6

    invoke-static {p1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Le/a/a/c/p4;->Ij(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result p1

    invoke-interface {v6, v0, p1}, Le/a/a/c/r4;->Ya(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :sswitch_1e
    if-eqz v1, :cond_6

    .line 25
    iget-object p1, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_6

    invoke-static {p1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Le/a/a/c/p4;->Ij(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result p1

    invoke-interface {v6, v0, p1}, Le/a/a/c/r4;->Sd(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 26
    :sswitch_1f
    invoke-interface {v6}, Le/a/a/c/r4;->Io()V

    goto/16 :goto_3

    :sswitch_20
    if-eqz v1, :cond_2

    .line 27
    iget-wide v2, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 28
    new-instance v11, Le/a/a/c/p4$c;

    const/4 v4, 0x0

    move-object v1, v11

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Le/a/a/c/p4$c;-><init>(JLs1/w/d;Le/a/a/c/p4;Le/a/a/c/r4;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_3

    :cond_2
    return v0

    .line 29
    :sswitch_21
    iget-object p1, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {p1}, Le/a/a/c/m5;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 30
    new-instance v11, Le/a/a/c/p4$b;

    const/4 v4, 0x0

    move-object v1, v11

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Le/a/a/c/p4$b;-><init>(JLs1/w/d;Le/a/a/c/p4;Le/a/a/c/r4;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_3

    :cond_3
    return v0

    .line 31
    :sswitch_22
    iget-object p1, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {p1}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_6

    .line 32
    iget-object v0, p0, Le/a/a/c/p4;->h:Le/a/d/c0/s1;

    new-instance v1, Le/a/a/c/o4;

    invoke-direct {v1, p0, p1}, Le/a/a/c/o4;-><init>(Le/a/a/c/p4;Lcom/truecaller/data/entity/messaging/Participant;)V

    invoke-interface {v0, p1, v1}, Le/a/d/c0/s1;->i(Lcom/truecaller/data/entity/messaging/Participant;Le/a/d/c0/l0;)V

    goto :goto_3

    .line 33
    :sswitch_23
    iget-object p1, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {p1}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_6

    .line 34
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/r4;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Le/a/a/c/r4;->Ix(Lcom/truecaller/data/entity/messaging/Participant;)V

    .line 35
    :cond_4
    iget-object p1, p0, Le/a/a/c/p4;->j:Le/a/a/c/r3;

    const-string v0, "im"

    check-cast p1, Le/a/a/c/s3;

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "chatType"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p1, p1, Le/a/a/c/s3;->b:Le/a/q2/i0;

    invoke-interface {p1, v0}, Le/a/q2/i0;->r(Ljava/lang/String;)V

    goto :goto_3

    .line 38
    :sswitch_24
    iget-boolean p1, p0, Le/a/a/c/p4;->o:Z

    if-eqz p1, :cond_5

    invoke-interface {v6}, Le/a/a/c/r4;->k1()V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Le/a/a/c/r4;->finish()V

    :cond_6
    :goto_3
    return v7

    :cond_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0088 -> :sswitch_11
        0x7f0a0094 -> :sswitch_10
        0x7f0a009a -> :sswitch_f
        0x7f0a00a5 -> :sswitch_e
        0x7f0a00a9 -> :sswitch_d
        0x7f0a00ab -> :sswitch_c
        0x7f0a00ac -> :sswitch_b
        0x7f0a00b4 -> :sswitch_a
        0x7f0a00b8 -> :sswitch_9
        0x7f0a00bd -> :sswitch_8
        0x7f0a00c4 -> :sswitch_7
        0x7f0a00cf -> :sswitch_6
        0x7f0a00d1 -> :sswitch_5
        0x7f0a00dd -> :sswitch_4
        0x7f0a00e0 -> :sswitch_3
        0x7f0a00ec -> :sswitch_2
        0x7f0a00f0 -> :sswitch_1
        0x7f0a00f3 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x102002c -> :sswitch_24
        0x7f0a0088 -> :sswitch_23
        0x7f0a009a -> :sswitch_22
        0x7f0a00a5 -> :sswitch_21
        0x7f0a00a9 -> :sswitch_20
        0x7f0a00ab -> :sswitch_1f
        0x7f0a00ac -> :sswitch_1e
        0x7f0a00b4 -> :sswitch_1d
        0x7f0a00b8 -> :sswitch_1c
        0x7f0a00bd -> :sswitch_1b
        0x7f0a00c4 -> :sswitch_1a
        0x7f0a00cf -> :sswitch_19
        0x7f0a00d0 -> :sswitch_18
        0x7f0a00d1 -> :sswitch_17
        0x7f0a00d2 -> :sswitch_16
        0x7f0a00d3 -> :sswitch_15
        0x7f0a00e0 -> :sswitch_14
        0x7f0a00f0 -> :sswitch_13
        0x7f0a00f3 -> :sswitch_12
    .end sparse-switch
.end method

.method public vc(Landroid/view/Menu;)V
    .locals 12

    const-string v0, "menu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1d

    .line 4
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const-string v6, "menuItem"

    .line 5
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const-string v7, "conversation.participants[0]"

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_0

    .line 6
    iget-object v6, p0, Le/a/a/c/p4;->i:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/c/n4$a;

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/c/n4$a;->z7(I)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    :sswitch_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v9, v3

    .line 7
    :goto_1
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    :sswitch_1
    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Le/a/c/p/a;->w1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Le/a/a/c/p4;->Jj()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 9
    :sswitch_2
    iget-object v6, p0, Le/a/a/c/p4;->C:Le/a/a/i1/b;

    iget-object v7, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v7}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v7

    invoke-interface {v6, v7}, Le/a/a/i1/b;->i(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    iget-object v7, p0, Le/a/a/c/p4;->q:Le/a/u3/g;

    invoke-virtual {v7}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    iget-object v7, p0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    const v8, 0x7f1201a0

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Le/a/a/c/p4;->s:Le/a/a/c/b4;

    invoke-interface {v10}, Le/a/a/c/b4;->qa()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-interface {v7, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 12
    :cond_2
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 13
    :sswitch_3
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->getId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v9, v3

    .line 14
    :goto_3
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 15
    :sswitch_4
    iget-boolean v6, p0, Le/a/a/c/p4;->p:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 16
    :sswitch_5
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 17
    invoke-static {v6}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v8

    :goto_4
    invoke-static {v7}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v6, :cond_8

    .line 18
    array-length v7, v6

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_7

    aget-object v10, v6, v8

    .line 19
    iget v10, v10, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_5

    move v10, v9

    goto :goto_6

    :cond_5
    move v10, v3

    :goto_6
    if-eqz v10, :cond_6

    move v6, v3

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    move v6, v9

    .line 20
    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_8
    invoke-static {v8}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->getId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    move v9, v3

    :goto_8
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 21
    :sswitch_6
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->getFilter()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Le/a/a/c/p4;->C:Le/a/a/i1/b;

    iget-object v7, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v7}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v7

    invoke-interface {v6, v7}, Le/a/a/i1/b;->u(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    move v9, v3

    .line 22
    :goto_9
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 23
    :sswitch_7
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->getFilter()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    goto :goto_a

    :cond_b
    move v9, v3

    :goto_a
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    :sswitch_8
    if-eqz v1, :cond_c

    .line 24
    invoke-static {v1}, Le/a/c/p/a;->w1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p0}, Le/a/a/c/p4;->Jj()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_b

    :cond_c
    move v9, v3

    :goto_b
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 25
    :sswitch_9
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Le/a/a/c/p4;->d:Z

    if-nez v6, :cond_d

    goto :goto_c

    :cond_d
    move v9, v3

    :goto_c
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 26
    :sswitch_a
    invoke-virtual {p0}, Le/a/a/c/p4;->Lj()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Le/a/a/c/p4;->Jj()Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_d

    :cond_e
    move v9, v3

    :goto_d
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 27
    :sswitch_b
    invoke-virtual {p0}, Le/a/a/c/p4;->Lj()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Le/a/a/c/p4;->Jj()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_e

    :cond_f
    move v9, v3

    :goto_e
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 28
    :sswitch_c
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v6

    .line 29
    iget-object v8, p0, Le/a/a/c/p4;->t:Le/a/c/b/j;

    invoke-interface {v8}, Le/a/c/b/j;->T()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v6, :cond_10

    iget-object v8, p0, Le/a/a/c/p4;->u:Le/a/c/i/e/c;

    .line 30
    iget-object v6, v6, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    aget-object v6, v6, v3

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Le/a/a/c/p4;->Ij(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-interface {v8, v6}, Le/a/c/i/e/c;->k(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_f

    :cond_10
    move v9, v3

    :goto_f
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 32
    :sswitch_d
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v6

    .line 33
    iget-object v8, p0, Le/a/a/c/p4;->t:Le/a/c/b/j;

    invoke-interface {v8}, Le/a/c/b/j;->T()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 34
    iget-object v8, p0, Le/a/a/c/p4;->t:Le/a/c/b/j;

    invoke-interface {v8}, Le/a/c/b/j;->d()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 35
    iget-object v8, p0, Le/a/a/c/p4;->w:Le/a/a/c/a/g;

    invoke-interface {v8}, Le/a/a/c/a/g;->f()Z

    move-result v8

    goto :goto_10

    .line 36
    :cond_11
    iget-object v8, p0, Le/a/a/c/p4;->v:Le/a/a/c/a/n;

    invoke-interface {v8}, Le/a/a/c/a/n;->f()Z

    move-result v8

    :goto_10
    if-eqz v8, :cond_12

    if-eqz v6, :cond_12

    .line 37
    iget-object v8, p0, Le/a/a/c/p4;->u:Le/a/c/i/e/c;

    iget-object v6, v6, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    aget-object v6, v6, v3

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Le/a/a/c/p4;->Ij(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Le/a/c/i/e/c;->k(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_11

    :cond_12
    move v9, v3

    :goto_11
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 38
    :sswitch_e
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->r()Le/a/a/g/f;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 39
    iget v6, v6, Le/a/a/g/f;->a:I

    goto :goto_12

    :cond_13
    move v6, v3

    :goto_12
    if-lez v6, :cond_14

    goto :goto_13

    :cond_14
    move v9, v3

    .line 40
    :goto_13
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 41
    :sswitch_f
    invoke-virtual {p0}, Le/a/a/c/p4;->Lj()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 42
    :sswitch_10
    invoke-virtual {p0}, Le/a/a/c/p4;->Lj()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {p0}, Le/a/a/c/p4;->Jj()Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_14

    :cond_15
    move v9, v3

    :cond_16
    :goto_14
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 43
    :sswitch_11
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 44
    array-length v7, v6

    if-ne v7, v9, :cond_18

    aget-object v7, v6, v3

    iget v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-nez v7, :cond_18

    .line 45
    invoke-virtual {p0}, Le/a/a/c/p4;->Kj()Z

    move-result v7

    if-nez v7, :cond_18

    .line 46
    aget-object v6, v6, v3

    invoke-virtual {v6, v3}, Lcom/truecaller/data/entity/messaging/Participant;->k(Z)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_15

    .line 47
    :cond_17
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 48
    :cond_18
    :goto_15
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_18

    .line 49
    :sswitch_12
    iget-object v6, p0, Le/a/a/c/p4;->C:Le/a/a/i1/b;

    iget-object v7, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v7}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v7

    invoke-interface {v6, v7}, Le/a/a/i1/b;->u(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 50
    iget-object v7, p0, Le/a/a/c/p4;->q:Le/a/u3/g;

    invoke-virtual {v7}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 51
    iget-object v7, p0, Le/a/a/c/p4;->k:Le/a/p5/h0;

    const v8, 0x7f120198

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Le/a/a/c/p4;->s:Le/a/a/c/b4;

    invoke-interface {v10}, Le/a/a/c/b4;->qa()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-interface {v7, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 52
    :cond_19
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_18

    .line 53
    :sswitch_13
    iget-object v6, p0, Le/a/a/c/p4;->f:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 54
    invoke-static {v6}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v7, :cond_1a

    iget-object v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    goto :goto_16

    :cond_1a
    move-object v7, v8

    :goto_16
    iget-object v10, p0, Le/a/a/c/p4;->x:Le/a/b0/e/r/a;

    const-string v11, "profileNumber"

    invoke-interface {v10, v11}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 55
    invoke-virtual {p0}, Le/a/a/c/p4;->Lj()Z

    move-result v10

    if-nez v10, :cond_1c

    .line 56
    iget-object v10, p0, Le/a/a/c/p4;->y:Le/a/a/c/f4;

    invoke-interface {v10}, Le/a/a/c/f4;->Se()Z

    move-result v10

    if-eqz v10, :cond_1c

    if-nez v7, :cond_1c

    .line 57
    invoke-virtual {p0}, Le/a/a/c/p4;->Kj()Z

    move-result v7

    if-nez v7, :cond_1c

    if-eqz v6, :cond_1c

    aget-object v7, v6, v3

    iget v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-nez v7, :cond_1c

    .line 58
    iget-object v7, p0, Le/a/a/c/p4;->y:Le/a/a/c/f4;

    invoke-interface {v7}, Le/a/a/c/f4;->d1()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 59
    invoke-static {v6}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v6, :cond_1b

    invoke-virtual {v6, v3}, Lcom/truecaller/data/entity/messaging/Participant;->k(Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_1b
    invoke-static {v8}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_17

    :cond_1c
    move v9, v3

    :goto_17
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1d
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0088 -> :sswitch_13
        0x7f0a0094 -> :sswitch_12
        0x7f0a009a -> :sswitch_11
        0x7f0a00a5 -> :sswitch_10
        0x7f0a00a9 -> :sswitch_f
        0x7f0a00ab -> :sswitch_e
        0x7f0a00ac -> :sswitch_d
        0x7f0a00b4 -> :sswitch_c
        0x7f0a00b8 -> :sswitch_b
        0x7f0a00bd -> :sswitch_a
        0x7f0a00c4 -> :sswitch_9
        0x7f0a00cf -> :sswitch_8
        0x7f0a00d0 -> :sswitch_7
        0x7f0a00d1 -> :sswitch_6
        0x7f0a00d2 -> :sswitch_5
        0x7f0a00d3 -> :sswitch_4
        0x7f0a00e0 -> :sswitch_3
        0x7f0a00ec -> :sswitch_2
        0x7f0a00f0 -> :sswitch_1
        0x7f0a00f3 -> :sswitch_0
    .end sparse-switch
.end method
