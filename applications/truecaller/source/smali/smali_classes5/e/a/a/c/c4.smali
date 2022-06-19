.class public final Le/a/a/c/c4;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/b4;
.implements Le/a/a/k/a/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/e4;",
        ">;",
        "Le/a/a/c/b4;",
        "Le/a/a/k/a/o0;"
    }
.end annotation


# instance fields
.field public final A:Ls1/w/f;

.field public final B:Le/a/p5/c;

.field public d:Le/a/a/k/a/z1;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Le/a/r2/a;

.field public h:I

.field public i:Landroid/net/Uri;

.field public j:Z

.field public final k:Le/a/a/c/m5;

.field public final l:Le/a/a/c/f4;

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Le/a/u3/g;

.field public final q:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/c/b4$a;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Le/a/a/k/a/p0;

.field public final s:Le/a/p5/h0;

.field public final t:Le/a/h0/m;

.field public final u:Le/a/l4/c;

.field public final v:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Le/a/r2/j;

.field public final x:Le/a/z2/a;

.field public final y:Le/a/a/k/a/a/q;

.field public final z:Le/a/o5/f0;


# direct methods
.method public constructor <init>(Le/a/a/c/m5;Le/a/a/c/f4;ZZZLe/a/u3/g;Lo3/a;Le/a/a/k/a/p0;Le/a/p5/h0;Le/a/h0/m;Le/a/l4/c;Le/a/r2/f;Le/a/r2/j;Le/a/z2/a;Le/a/a/k/a/a/q;Le/a/o5/f0;Ls1/w/f;Le/a/p5/c;)V
    .locals 16
    .param p3    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsHiddenNumberIntent"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsBubbleIntent"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsUrgentIntent"
        .end annotation
    .end param
    .param p13    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "UiThread"
        .end annotation
    .end param
    .param p17    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/c/m5;",
            "Le/a/a/c/f4;",
            "ZZZ",
            "Le/a/u3/g;",
            "Lo3/a<",
            "Le/a/a/c/b4$a;",
            ">;",
            "Le/a/a/k/a/p0;",
            "Le/a/p5/h0;",
            "Le/a/h0/m;",
            "Le/a/l4/c;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/r2/j;",
            "Le/a/z2/a;",
            "Le/a/a/k/a/a/q;",
            "Le/a/o5/f0;",
            "Ls1/w/f;",
            "Le/a/p5/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    const-string v0, "conversationState"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputPresenter"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imTypingManager"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    invoke-direct {v0, v14}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object v1, v0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    iput-object v2, v0, Le/a/a/c/c4;->l:Le/a/a/c/f4;

    move/from16 v1, p3

    iput-boolean v1, v0, Le/a/a/c/c4;->m:Z

    move/from16 v1, p4

    iput-boolean v1, v0, Le/a/a/c/c4;->n:Z

    move/from16 v1, p5

    iput-boolean v1, v0, Le/a/a/c/c4;->o:Z

    iput-object v3, v0, Le/a/a/c/c4;->p:Le/a/u3/g;

    iput-object v4, v0, Le/a/a/c/c4;->q:Lo3/a;

    iput-object v5, v0, Le/a/a/c/c4;->r:Le/a/a/k/a/p0;

    iput-object v6, v0, Le/a/a/c/c4;->s:Le/a/p5/h0;

    iput-object v7, v0, Le/a/a/c/c4;->t:Le/a/h0/m;

    iput-object v8, v0, Le/a/a/c/c4;->u:Le/a/l4/c;

    iput-object v9, v0, Le/a/a/c/c4;->v:Le/a/r2/f;

    iput-object v10, v0, Le/a/a/c/c4;->w:Le/a/r2/j;

    iput-object v11, v0, Le/a/a/c/c4;->x:Le/a/z2/a;

    iput-object v12, v0, Le/a/a/c/c4;->y:Le/a/a/k/a/a/q;

    iput-object v13, v0, Le/a/a/c/c4;->z:Le/a/o5/f0;

    iput-object v14, v0, Le/a/a/c/c4;->A:Ls1/w/f;

    iput-object v15, v0, Le/a/a/c/c4;->B:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/c4;->Ij()V

    return-void
.end method

.method public G6(Ljava/lang/String;Le/a/a/k/a/z1;)V
    .locals 1

    const-string v0, "imPeerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->d1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    return-void

    .line 3
    :cond_2
    iput-object p2, p0, Le/a/a/c/c4;->d:Le/a/a/k/a/z1;

    .line 4
    invoke-virtual {p0}, Le/a/a/c/c4;->Kj()V

    return-void
.end method

.method public final Ij()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/c4;->g:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/a/c/c4;->g:Le/a/r2/a;

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {v0}, Le/a/c/p/a;->a1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Le/a/a/c/c4;->Kj()V

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Le/a/a/c/c4;->v:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a/m;

    .line 8
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v0}, Le/a/a/k/a/a/m;->l(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/a/a/c/c4;->w:Le/a/r2/j;

    new-instance v2, Le/a/a/c/c4$a;

    invoke-direct {v2, p0}, Le/a/a/c/c4$a;-><init>(Le/a/a/c/c4;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/c4;->g:Le/a/r2/a;

    :cond_3
    return-void
.end method

.method public J9()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/c4;->Ij()V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/c4;->Lj()V

    return-void
.end method

.method public final Jj()[Lcom/truecaller/data/entity/messaging/Participant;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public final Kj()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v1, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object v1

    sget-object v2, Lcom/truecaller/messaging/conversation/ConversationMode;->SCHEDULE:Lcom/truecaller/messaging/conversation/ConversationMode;

    const v3, 0x7f04068f

    if-ne v1, v2, :cond_3

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Le/a/a/c/c4;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    :goto_0
    const-string v2, "conversationState.imGrou\u2026tString(participantsText)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v1, v3}, Le/a/a/c/e4;->Yp(Ljava/lang/String;I)V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget-object v1, p0, Le/a/a/c/c4;->d:Le/a/a/k/a/z1;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 9
    iget v0, v1, Le/a/a/k/a/z1;->a:I

    .line 10
    iget v3, p0, Le/a/a/c/c4;->e:I

    if-eq v0, v3, :cond_5

    .line 11
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/c/e4;

    if-eqz v3, :cond_4

    invoke-interface {v3, v0}, Le/a/a/c/e4;->Ar(I)V

    .line 12
    :cond_4
    iget v0, v1, Le/a/a/k/a/z1;->a:I

    .line 13
    iput v0, p0, Le/a/a/c/c4;->e:I

    .line 14
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Le/a/a/c/e4;->M7(Z)V

    .line 15
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_7

    .line 16
    iget-object v1, v1, Le/a/a/k/a/z1;->b:Ljava/lang/String;

    const v2, 0x7f0405a1

    .line 17
    invoke-interface {v0, v1, v2}, Le/a/a/c/e4;->Yp(Ljava/lang/String;I)V

    :cond_7
    return-void

    .line 18
    :cond_8
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v1, v4}, Le/a/a/c/e4;->M7(Z)V

    .line 19
    :cond_9
    array-length v1, v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_16

    invoke-static {v0}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 20
    aget-object v6, v0, v4

    .line 21
    iget-object v0, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->getFilter()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 22
    iget-object v1, p0, Le/a/a/c/c4;->p:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_1

    :cond_a
    move v0, v4

    goto :goto_2

    :cond_b
    :goto_1
    move v0, v2

    .line 23
    :goto_2
    iget-object v1, p0, Le/a/a/c/c4;->s:Le/a/p5/h0;

    .line 24
    iget-object v7, p0, Le/a/a/c/c4;->t:Le/a/h0/m;

    invoke-interface {v7}, Le/a/h0/m;->u()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Le/a/a/c/c4;->p:Le/a/u3/g;

    invoke-virtual {v7}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v2

    goto :goto_3

    :cond_c
    move v7, v4

    .line 25
    :goto_3
    iget v8, v6, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    .line 26
    invoke-virtual {v6, v7}, Lcom/truecaller/data/entity/messaging/Participant;->k(Z)Z

    move-result v7

    if-eqz v7, :cond_e

    if-lez v8, :cond_d

    .line 27
    sget v5, Lcom/truecaller/messaging/R$string;->BlockCallerIDMySpamWithScore:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v1, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 28
    :cond_d
    sget v5, Lcom/truecaller/messaging/R$string;->BlockCallerIDMySpam:I

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 29
    :cond_e
    invoke-virtual {v6}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 30
    sget v5, Lcom/truecaller/messaging/R$string;->BlockCallerIDPeopleReportedThis:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v1, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_f
    :goto_4
    if-eqz v5, :cond_10

    if-eqz v0, :cond_10

    .line 31
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_1c

    const v1, 0x7f04058a

    invoke-interface {v0, v5, v1}, Le/a/a/c/e4;->Yp(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 32
    :cond_10
    iget-object v0, p0, Le/a/a/c/c4;->p:Le/a/u3/g;

    .line 33
    iget-object v1, v0, Le/a/u3/g;->o5:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0x14c

    aget-object v5, v5, v7

    invoke-virtual {v1, v0, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const-wide/16 v7, 0xbb8

    .line 34
    invoke-interface {v0, v7, v8}, Le/a/u3/i;->d(J)J

    move-result-wide v7

    .line 35
    iget v0, v6, Lcom/truecaller/data/entity/messaging/Participant;->A:I

    if-le v0, v2, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_15

    .line 36
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    const-string v1, "participant.normalizedAddress"

    if-eqz v0, :cond_11

    iget-object v5, v6, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5, v3}, Le/a/a/c/e4;->Yp(Ljava/lang/String;I)V

    .line 37
    :cond_11
    iget-object v0, p0, Le/a/a/c/c4;->u:Le/a/l4/c;

    new-array v3, v2, [Ljava/lang/String;

    .line 38
    iget-object v5, v6, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-interface {v0, v3}, Le/a/l4/c;->b([Ljava/lang/String;)Le/a/l4/e;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 39
    iget-object v0, v0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v0, :cond_14

    .line 40
    invoke-virtual {v0}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 41
    sget-object v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-eq v0, v1, :cond_13

    sget-object v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-ne v0, v1, :cond_12

    goto :goto_5

    :cond_12
    move v2, v4

    :cond_13
    :goto_5
    move v4, v2

    :cond_14
    if-eqz v4, :cond_1c

    .line 42
    new-instance v9, Le/a/a/c/d4;

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Le/a/a/c/d4;-><init>(Le/a/a/c/c4;JLcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    move-object v0, p0

    move-object v3, v9

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_9

    .line 43
    :cond_15
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Le/a/a/c/c4;->u:Le/a/l4/c;

    invoke-static {v1, v6}, Le/a/c/p/a;->g(Le/a/l4/c;Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l4/c$a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/e4;->xs(Le/a/l4/c$a;)V

    goto :goto_9

    .line 44
    :cond_16
    invoke-static {v0}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 45
    iget-object v0, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    .line 46
    iget-object v1, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v1

    if-eqz v0, :cond_19

    .line 47
    invoke-virtual {p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    :cond_17
    move-object v0, v5

    :goto_6
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz v1, :cond_18

    .line 48
    iget v0, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    if-nez v0, :cond_19

    :cond_18
    move v0, v2

    goto :goto_7

    :cond_19
    move v0, v4

    :goto_7
    if-eqz v0, :cond_1a

    goto :goto_8

    .line 49
    :cond_1a
    iget v0, p0, Le/a/a/c/c4;->h:I

    if-eqz v0, :cond_1c

    .line 50
    iget-object v1, p0, Le/a/a/c/c4;->s:Le/a/p5/h0;

    const v5, 0x7f10001b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-interface {v1, v5, v0, v2}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getQuan\u2026 imGroupParticipantCount)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    if-eqz v1, :cond_1c

    invoke-interface {v1, v0, v3}, Le/a/a/c/e4;->Yp(Ljava/lang/String;I)V

    goto :goto_9

    .line 52
    :cond_1b
    :goto_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_1c

    invoke-interface {v0, v5}, Le/a/a/c/e4;->xs(Le/a/l4/c$a;)V

    :cond_1c
    :goto_9
    return-void
.end method

.method public final Lj()V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 3
    invoke-static {v2}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v3

    const v4, 0x7f08074d

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_8

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 5
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/c/e4;

    if-eqz v3, :cond_2

    .line 6
    iget-object v9, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v9

    :goto_1
    const-string v9, "StringUtils.defaultString(groupInfo.title)"

    .line 7
    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Le/a/a/c/e4;->sa(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 9
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 10
    :goto_2
    iget-object v5, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/a/c/e4;

    if-eqz v5, :cond_d

    invoke-static {v1}, Le/a/c/p/a;->w1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v8

    :goto_3
    invoke-interface {v5, v4, v6}, Le/a/a/c/e4;->Qt(IZ)V

    goto :goto_7

    .line 11
    :cond_5
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    if-eqz v1, :cond_6

    iget-object v3, v0, Le/a/a/c/c4;->y:Le/a/a/k/a/a/q;

    aget-object v4, v2, v8

    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v5, "participants[0].normalizedAddress"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Le/a/a/k/a/a/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/a/c/e4;->sa(Ljava/lang/String;)V

    .line 12
    :cond_6
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    if-eqz v1, :cond_7

    invoke-interface {v1, v8, v8}, Le/a/a/c/e4;->Qt(IZ)V

    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .line 13
    :cond_8
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/c/e4;

    if-eqz v3, :cond_a

    .line 14
    iget-object v9, v0, Le/a/a/c/c4;->f:Ljava/lang/String;

    if-nez v9, :cond_9

    goto :goto_4

    :cond_9
    move-object v5, v9

    :goto_4
    const-string v9, "StringUtils.defaultString(getParticipantsText())"

    .line 15
    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Le/a/a/c/e4;->sa(Ljava/lang/String;)V

    .line 16
    :cond_a
    iget-object v3, v0, Le/a/a/c/c4;->i:Landroid/net/Uri;

    if-eqz v1, :cond_b

    .line 17
    iget-object v5, v0, Le/a/a/c/c4;->B:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v9

    invoke-static {v1, v9, v10}, Le/a/c/p/a;->v1(Lcom/truecaller/messaging/data/types/Conversation;J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v1

    .line 18
    iget-object v5, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/a/c/e4;

    if-eqz v5, :cond_d

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move v4, v8

    :goto_6
    invoke-interface {v5, v4, v8}, Le/a/a/c/e4;->Qt(IZ)V

    :cond_d
    :goto_7
    move-object v10, v3

    .line 19
    :goto_8
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 20
    aget-object v3, v1, v8

    .line 21
    invoke-static {v1}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 22
    iget v4, v3, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object v5, v3, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v4, v5}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v4

    goto :goto_9

    :cond_e
    move v4, v8

    .line 23
    :goto_9
    new-instance v5, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 24
    iget-object v11, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 25
    iget-object v3, v0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v3}, Le/a/a/c/m5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 26
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    move-object v12, v3

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    :goto_a
    if-eqz v15, :cond_10

    const/4 v13, 0x0

    goto :goto_b

    .line 27
    :cond_10
    invoke-static {v1}, Le/m/d/y/n;->N([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 28
    :goto_b
    iget-object v1, v0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->getFilter()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_11

    move v14, v6

    goto :goto_c

    :cond_11
    move v14, v8

    .line 29
    :goto_c
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 30
    array-length v3, v1

    move v9, v8

    :goto_d
    if-ge v9, v3, :cond_13

    aget-object v6, v1, v9

    .line 31
    iget-object v7, v6, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v8, "it.normalizedAddress"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/b0/q/g0;->K(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v17, v1

    .line 32
    iget-object v1, v6, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v6, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-static {v1, v6, v7}, Le/a/b0/q/g0;->c(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_e

    :cond_12
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v17

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    .line 33
    :goto_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_f

    :cond_14
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v1

    const/16 v17, 0x0

    const/4 v3, 0x4

    if-ne v4, v3, :cond_15

    const/16 v18, 0x1

    goto :goto_10

    :cond_15
    const/16 v18, 0x0

    :goto_10
    const/16 v3, 0x20

    if-ne v4, v3, :cond_16

    const/16 v19, 0x1

    goto :goto_11

    :cond_16
    const/16 v19, 0x0

    :goto_11
    const/16 v3, 0x80

    if-ne v4, v3, :cond_17

    const/16 v20, 0x1

    goto :goto_12

    :cond_17
    const/16 v20, 0x0

    :goto_12
    const/16 v3, 0x100

    if-ne v4, v3, :cond_18

    const/16 v21, 0x1

    goto :goto_13

    :cond_18
    const/16 v21, 0x0

    :goto_13
    const/16 v3, 0x10

    if-ne v4, v3, :cond_19

    const/16 v22, 0x1

    goto :goto_14

    :cond_19
    const/16 v22, 0x0

    :goto_14
    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xc000

    move-object v9, v5

    move/from16 v16, v1

    .line 34
    invoke-direct/range {v9 .. v26}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    goto :goto_15

    :cond_1a
    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_1b

    .line 35
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v5}, Le/a/a/c/e4;->v1(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 36
    :cond_1b
    iget-object v1, v0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object v1

    sget-object v3, Lcom/truecaller/messaging/conversation/ConversationMode;->SCHEDULE:Lcom/truecaller/messaging/conversation/ConversationMode;

    if-ne v1, v3, :cond_1d

    .line 37
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    if-eqz v1, :cond_1c

    iget-object v2, v0, Le/a/a/c/c4;->s:Le/a/p5/h0;

    const v3, 0x7f12021b

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026rsationScheduledMessages)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/a/c/e4;->sa(Ljava/lang/String;)V

    :cond_1c
    return-void

    :cond_1d
    const/4 v4, 0x0

    .line 38
    array-length v1, v2

    move v8, v4

    :goto_16
    if-ge v8, v1, :cond_1f

    aget-object v3, v2, v8

    iget-object v4, v0, Le/a/a/c/c4;->x:Le/a/z2/a;

    invoke-interface {v4, v3}, Le/a/z2/a;->d(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v7, v3

    goto :goto_17

    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_1f
    const/4 v7, 0x0

    :goto_17
    if-eqz v7, :cond_20

    .line 39
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Le/a/a/c/e4;->e4()V

    :cond_20
    return-void
.end method

.method public Qc([Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 6

    const-string v0, "participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->F1([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/c4;->f:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4
    aget-object p1, p1, v1

    .line 5
    iget-object v1, p0, Le/a/a/c/c4;->z:Le/a/o5/f0;

    iget-wide v4, p1, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-interface {v1, v4, v5, p1, v3}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 6
    :goto_0
    iput-object p1, p0, Le/a/a/c/c4;->i:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/e4;

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Le/a/a/c/e4;->xs(Le/a/l4/c$a;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/c4;->Kj()V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/c/e4;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/c/c4;->r:Le/a/a/k/a/p0;

    invoke-interface {v0, p0}, Le/a/a/k/a/p0;->e(Le/a/a/k/a/o0;)V

    .line 5
    iget-boolean v0, p0, Le/a/a/c/c4;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/a/a/c/c4;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Le/a/a/c/e4;->Wo(Z)V

    .line 6
    iget-boolean v0, p0, Le/a/a/c/c4;->o:Z

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Le/a/a/c/e4;->Yd(Z)V

    return-void
.end method

.method public Yh(Ljava/lang/String;Le/a/a/k/a/z1;)V
    .locals 2

    const-string v0, "imGroupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p2, p0, Le/a/a/c/c4;->d:Le/a/a/k/a/z1;

    .line 4
    invoke-virtual {p0}, Le/a/a/c/c4;->Kj()V

    .line 5
    invoke-virtual {p0}, Le/a/a/c/c4;->Lj()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/a/c/c4;->r:Le/a/a/k/a/p0;

    invoke-interface {v0, p0}, Le/a/a/k/a/p0;->f(Le/a/a/k/a/o0;)V

    return-void
.end method

.method public hi()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {v0}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/c/c4;->q:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/b4$a;

    invoke-interface {v0}, Le/a/a/c/b4$a;->l0()V

    goto/16 :goto_1

    .line 4
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5
    invoke-static {v0}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    .line 6
    invoke-static {v0}, Le/a/a/i1/h;->a(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Le/a/a/c/e4;

    if-eqz v2, :cond_4

    .line 8
    iget-object v3, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v1, "participant.normalizedAddress"

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v4, v0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    .line 10
    iget-object v5, v0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 11
    iget-object v6, v0, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Le/a/a/c/c4;->m:Z

    :goto_0
    move v7, v0

    .line 13
    iget-object v0, p0, Le/a/a/c/c4;->l:Le/a/a/c/f4;

    invoke-interface {v0}, Le/a/a/c/f4;->d1()Z

    move-result v8

    .line 14
    invoke-interface/range {v2 .. v8}, Le/a/a/c/e4;->Kr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 15
    :cond_2
    array-length v0, v0

    if-le v0, v2, :cond_4

    .line 16
    iget-object v0, p0, Le/a/a/c/c4;->k:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Le/a/a/c/c4;->Jj()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 18
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/e4;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Le/a/a/c/e4;->a1(Lcom/truecaller/messaging/data/types/Conversation;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 19
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/e4;

    if-eqz v0, :cond_4

    .line 20
    new-instance v2, Lcom/truecaller/messaging/data/types/Conversation$b;

    invoke-direct {v2}, Lcom/truecaller/messaging/data/types/Conversation$b;-><init>()V

    const-wide/16 v3, -0x1

    .line 21
    iput-wide v3, v2, Lcom/truecaller/messaging/data/types/Conversation$b;->a:J

    .line 22
    invoke-static {v1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 23
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 24
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Conversation$b;->b()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    const-string v2, "Conversation.Builder()\n \u2026                 .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v1}, Le/a/a/c/e4;->a1(Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c4;->u:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->I1()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c4;->u:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->Y()V

    return-void
.end method

.method public qa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c4;->f:Ljava/lang/String;

    return-object v0
.end method
