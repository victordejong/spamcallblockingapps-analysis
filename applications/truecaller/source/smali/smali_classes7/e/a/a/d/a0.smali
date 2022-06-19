.class public final Le/a/a/d/a0;
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
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$scheduleBackendSearch$1"
    f = "NewConversationPresenter.kt"
    l = {
        0x1bd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iput-object p2, p0, Le/a/a/d/a0;->j:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/a/d/a0;

    iget-object v0, p0, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v1, p0, Le/a/a/d/a0;->j:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/d/a0;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/d/a0;

    iget-object v0, p0, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v1, p0, Le/a/a/d/a0;->j:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/d/a0;-><init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/d/a0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/d/a0;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/d/a0;->g:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v1, p0, Le/a/a/d/a0;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/y;

    iget-object v3, p0, Le/a/a/d/a0;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    new-instance v1, Ls1/z/c/y;

    invoke-direct {v1}, Ls1/z/c/y;-><init>()V

    .line 5
    new-instance v9, Ls1/z/c/c0;

    invoke-direct {v9}, Ls1/z/c/c0;-><init>()V

    .line 6
    iget-object v3, p0, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 7
    iget-object v10, v3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->l:Ls1/w/f;

    .line 8
    new-instance v11, Le/a/a/d/a0$a;

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, p0

    move-object v5, p1

    move-object v6, v9

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Le/a/a/d/a0$a;-><init>(Le/a/a/d/a0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/y;Ls1/w/d;)V

    iput-object p1, p0, Le/a/a/d/a0;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/d/a0;->f:Ljava/lang/Object;

    iput-object v9, p0, Le/a/a/d/a0;->g:Ljava/lang/Object;

    iput v2, p0, Le/a/a/d/a0;->h:I

    invoke-static {v10, v11, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object v0, v9

    .line 9
    :goto_0
    iget-object p1, p0, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v4, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/data/entity/Contact;

    iget-boolean v1, v1, Ls1/z/c/y;->a:Z

    iget-object v5, p0, Le/a/a/d/a0;->j:Ljava/lang/String;

    const/4 v6, 0x0

    .line 10
    iput-object v6, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->g:Lq3/a/p1;

    .line 11
    iget-object v7, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Le/a/a/d/n;->M(Z)V

    .line 12
    iget-object v7, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    invoke-virtual {v7}, Le/a/a/d/p;->Ij()Ljava/lang/String;

    move-result-object v7

    const-string v9, "im_group_type"

    invoke-static {v7, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "contact.numbers"

    if-eqz v7, :cond_7

    if-eqz v4, :cond_6

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->A()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v2

    :goto_2
    if-nez v7, :cond_6

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/data/entity/Number;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    :cond_5
    iget-object v7, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->E:Le/a/b0/e/r/a;

    const-string v9, "profileNumber"

    invoke-interface {v7, v9}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v2, v6

    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 15
    iget-object v1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1, v4}, Le/a/a/d/n;->H(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object v1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1, v5}, Le/a/a/d/n;->I(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_9

    if-eqz v1, :cond_8

    .line 17
    iget-object v1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1, v5}, Le/a/a/d/n;->I(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_8
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    if-eqz v1, :cond_9

    .line 19
    iget-object v1, p1, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->x:Le/a/a/d/n;

    invoke-virtual {v1, v4}, Le/a/a/d/n;->H(Lcom/truecaller/data/entity/Contact;)V

    .line 20
    :cond_9
    :goto_3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/a/d/v;->l2()V

    .line 21
    :cond_a
    iget-object p1, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-nez p1, :cond_f

    .line 22
    iget-object p1, p0, Le/a/a/d/a0;->i:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_b

    goto :goto_4

    .line 24
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_c

    goto :goto_5

    :cond_c
    :goto_4
    if-eqz v0, :cond_d

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_d
    if-lez v8, :cond_e

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_f

    const v1, 0x7f12027e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v1, v0}, Le/a/a/d/v;->J1(II)V

    goto :goto_5

    :cond_e
    if-nez v0, :cond_f

    .line 26
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/v;

    if-eqz p1, :cond_f

    const v0, 0x7f12027d

    invoke-interface {p1, v0}, Le/a/a/d/v;->w2(I)V

    .line 27
    :cond_f
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
