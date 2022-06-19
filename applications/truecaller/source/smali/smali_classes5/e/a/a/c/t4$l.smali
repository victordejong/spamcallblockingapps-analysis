.class public final Le/a/a/c/t4$l;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->F9(Ljava/lang/String;)V
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onMentionClicked$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x27c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/t4;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$l;->f:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$l;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/a/c/t4$l;

    iget-object v0, p0, Le/a/a/c/t4$l;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$l;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/t4$l;-><init>(Le/a/a/c/t4;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/t4$l;

    iget-object v0, p0, Le/a/a/c/t4$l;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$l;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/t4$l;-><init>(Le/a/a/c/t4;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/t4$l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/t4$l;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/t4$l;->f:Le/a/a/c/t4;

    .line 5
    iget-object p1, p1, Le/a/a/c/t4;->w0:Le/a/k3/j/b;

    .line 6
    iget-object v1, p0, Le/a/a/c/t4$l;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Le/a/k3/j/b;->g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v1, "$this$mapToParticipant"

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_8

    const-string v4, "defaultNumber ?: imId ?: return null"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v4, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_5

    const/4 v6, 0x3

    :cond_5
    invoke-direct {v4, v6}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 10
    iput-object v1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A()Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1

    .line 14
    iput-object v1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_3
    const-string v5, "phonebookId ?: -1"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 16
    iput-wide v5, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const-string v1, ""

    .line 18
    :goto_4
    iput-object v1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v1

    .line 20
    iput-object v1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result p1

    .line 22
    iput p1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    .line 23
    invoke-virtual {v4}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    goto :goto_5

    :cond_8
    move-object p1, v3

    :goto_5
    if-eqz p1, :cond_9

    .line 24
    invoke-static {p1}, Le/a/a/i1/h;->a(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 25
    iget-object v1, p0, Le/a/a/c/t4$l;->f:Le/a/a/c/t4;

    .line 26
    iget-object v1, v1, Le/a/a/c/t4;->v:Ls1/w/f;

    .line 27
    new-instance v4, Le/a/a/c/t4$l$a;

    invoke-direct {v4, p1, v3, p0}, Le/a/a/c/t4$l$a;-><init>(Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;Le/a/a/c/t4$l;)V

    iput v2, p0, Le/a/a/c/t4$l;->e:I

    invoke-static {v1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 28
    :cond_9
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
