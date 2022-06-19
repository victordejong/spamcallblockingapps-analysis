.class public final Le/a/a/c/o/e$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o/e;->c2(Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;)V
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
    c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$onMutePeriodSelected$1"
    f = "ConversationNotificationSettingsPresenter.kt"
    l = {
        0x56,
        0x5a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/o/e;

.field public final synthetic g:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;


# direct methods
.method public constructor <init>(Le/a/a/c/o/e;Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/e$e;->f:Le/a/a/c/o/e;

    iput-object p2, p0, Le/a/a/c/o/e$e;->g:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

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

    new-instance p1, Le/a/a/c/o/e$e;

    iget-object v0, p0, Le/a/a/c/o/e$e;->f:Le/a/a/c/o/e;

    iget-object v1, p0, Le/a/a/c/o/e$e;->g:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/o/e$e;-><init>(Le/a/a/c/o/e;Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/o/e$e;

    iget-object v0, p0, Le/a/a/c/o/e$e;->f:Le/a/a/c/o/e;

    iget-object v1, p0, Le/a/a/c/o/e$e;->g:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/o/e$e;-><init>(Le/a/a/c/o/e;Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/o/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/o/e$e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/o/e$e;->f:Le/a/a/c/o/e;

    .line 5
    iget-object v4, p1, Le/a/a/c/o/e;->j:Le/a/a/c/o/h;

    .line 6
    iget-object p1, p1, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 7
    iget-wide v5, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 8
    iget-object p1, p0, Le/a/a/c/o/e$e;->g:Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    const/4 p1, -0x1

    int-to-long v7, p1

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/a/c/o/e$e;->f:Le/a/a/c/o/e;

    .line 11
    iget-object p1, p1, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    .line 12
    invoke-interface {p1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p1

    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object p1

    const-string v1, "dateHelper.now().plusHours(24)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v7, p1, Lw3/b/a/e0/e;->a:J

    goto :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Le/a/a/c/o/e$e;->f:Le/a/a/c/o/e;

    .line 15
    iget-object p1, p1, Le/a/a/c/o/e;->k:Le/a/o5/b0;

    .line 16
    invoke-interface {p1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p1

    invoke-virtual {p1, v3}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object p1

    const-string v1, "dateHelper.now().plusHours(1)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-wide v7, p1, Lw3/b/a/e0/e;->a:J

    .line 18
    :goto_0
    iput v3, p0, Le/a/a/c/o/e$e;->e:I

    move-object v9, p0

    .line 19
    invoke-interface/range {v4 .. v9}, Le/a/a/c/o/h;->e(JJLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 20
    :cond_6
    :goto_1
    iget-object p1, p0, Le/a/a/c/o/e$e;->f:Le/a/a/c/o/e;

    iput v2, p0, Le/a/a/c/o/e$e;->e:I

    invoke-virtual {p1, p0}, Le/a/a/c/o/e;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 21
    :cond_7
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
