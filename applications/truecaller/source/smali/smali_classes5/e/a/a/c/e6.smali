.class public final Le/a/a/c/e6;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/d6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/a/c/f6;",
        ">;",
        "Le/a/a/c/d6;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/c/n5;

.field public final c:Le/a/a/c/s4;

.field public final d:Le/a/a/c/h3;

.field public final e:Le/a/a/k/t;

.field public final f:Le/a/a/c/l5;

.field public final g:Le/a/a/c/t3;


# direct methods
.method public constructor <init>(Le/a/a/c/n5;Le/a/a/c/s4;Le/a/a/c/h3;Le/a/a/k/t;Le/a/a/c/l5;Le/a/a/c/t3;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "conversationState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationMessagesPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModePresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationBubbleInteractions"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    iput-object p2, p0, Le/a/a/c/e6;->c:Le/a/a/c/s4;

    iput-object p3, p0, Le/a/a/c/e6;->d:Le/a/a/c/h3;

    iput-object p4, p0, Le/a/a/c/e6;->e:Le/a/a/k/t;

    iput-object p5, p0, Le/a/a/c/e6;->f:Le/a/a/c/l5;

    iput-object p6, p0, Le/a/a/c/e6;->g:Le/a/a/c/t3;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/a/c/f6;

    const-string v2, "presenterView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v2}, Le/a/a/c/m5;->E()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v1}, Le/a/a/c/f6;->dismiss()V

    goto/16 :goto_9

    .line 6
    :cond_0
    iget-object v2, v0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v2}, Le/a/a/c/n5;->g()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    .line 7
    iget v3, v2, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget v3, v2, Lcom/truecaller/messaging/data/types/Message;->l:I

    .line 9
    :goto_0
    iget-object v5, v0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v5}, Le/a/a/c/n5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 10
    iget-object v6, v0, Le/a/a/c/e6;->e:Le/a/a/k/t;

    invoke-interface {v6, v2, v5}, Le/a/a/k/t;->t(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v4

    .line 11
    :goto_1
    iget-object v6, v0, Le/a/a/c/e6;->e:Le/a/a/k/t;

    invoke-interface {v6, v3}, Le/a/a/k/t;->x(I)Le/a/a/k/q;

    move-result-object v6

    invoke-interface {v6, v2}, Le/a/a/k/q;->v(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v4, :cond_7

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v7, :cond_3

    move v4, v8

    move v5, v4

    move v7, v5

    move v3, v9

    goto :goto_2

    :cond_3
    move v3, v8

    move v4, v3

    move v5, v4

    move v7, v9

    goto :goto_2

    :cond_4
    move v3, v8

    move v4, v3

    move v7, v4

    move v5, v9

    goto :goto_2

    :cond_5
    move v3, v8

    move v5, v3

    move v7, v5

    move v4, v9

    :goto_2
    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v7

    move v11, v8

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    if-eq v3, v7, :cond_9

    :goto_3
    move v3, v8

    move v4, v3

    move v5, v4

    move v7, v5

    :goto_4
    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v7

    move v11, v9

    goto :goto_5

    :cond_9
    move v11, v8

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    .line 12
    :goto_5
    iget-object v10, v0, Le/a/a/c/e6;->f:Le/a/a/c/l5;

    .line 13
    iget-object v3, v0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v3}, Le/a/a/c/m5;->H()Z

    move-result v16

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buildMessageText()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    move v3, v9

    goto :goto_6

    :cond_a
    move v3, v8

    :goto_6
    if-eqz v3, :cond_b

    invoke-static {v2}, Le/a/c/p/a;->i1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v3

    if-nez v3, :cond_b

    move/from16 v17, v9

    goto :goto_7

    :cond_b
    move/from16 v17, v8

    .line 15
    :goto_7
    iget v2, v2, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_c

    move/from16 v18, v9

    goto :goto_8

    :cond_c
    move/from16 v18, v8

    .line 16
    :goto_8
    iget-object v2, v0, Le/a/a/c/e6;->d:Le/a/a/c/h3;

    invoke-interface {v2}, Le/a/a/c/h3;->Ig()Z

    move-result v19

    .line 17
    iget-object v2, v0, Le/a/a/c/e6;->d:Le/a/a/c/h3;

    invoke-interface {v2}, Le/a/a/c/h3;->g9()Z

    move-result v20

    .line 18
    invoke-interface/range {v10 .. v20}, Le/a/a/c/l5;->a(ZZZZZZZZZZ)Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Le/a/a/c/f6;->Jz(Ljava/util/List;)V

    :goto_9
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v0}, Le/a/a/c/m5;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/c/e6;->d:Le/a/a/c/h3;

    invoke-interface {v0}, Le/a/a/c/h3;->L6()V

    :cond_0
    return-void
.end method

.method public f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v0}, Le/a/a/c/m5;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/e6;->g:Le/a/a/c/t3;

    iget-object v1, p0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v1}, Le/a/a/c/n5;->g()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/t3;->r0(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v0}, Le/a/a/c/m5;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/e6;->c:Le/a/a/c/s4;

    iget-object v1, p0, Le/a/a/c/e6;->b:Le/a/a/c/n5;

    invoke-interface {v1}, Le/a/a/c/n5;->g()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Le/a/a/c/s4;->n0(Lcom/truecaller/messaging/data/types/Message;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/f6;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/c/f6;->dismiss()V

    :cond_1
    return-void
.end method
