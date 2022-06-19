.class public final Le/a/a/c/t4$l$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4$l;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onMentionClicked$1$1$1"
    f = "ConversationMessagesPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic f:Le/a/a/c/t4$l;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;Le/a/a/c/t4$l;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$l$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p3, p0, Le/a/a/c/t4$l$a;->f:Le/a/a/c/t4$l;

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

    new-instance p1, Le/a/a/c/t4$l$a;

    iget-object v0, p0, Le/a/a/c/t4$l$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, p0, Le/a/a/c/t4$l$a;->f:Le/a/a/c/t4$l;

    invoke-direct {p1, v0, p2, v1}, Le/a/a/c/t4$l$a;-><init>(Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;Le/a/a/c/t4$l;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/c/t4$l$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, p0, Le/a/a/c/t4$l$a;->f:Le/a/a/c/t4$l;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v1, Le/a/a/c/t4$l;->f:Le/a/a/c/t4;

    .line 5
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/c/z4;

    if-eqz p2, :cond_1

    .line 6
    iget v1, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v0, v1}, Le/a/a/c/z4;->n8(Lcom/truecaller/data/entity/messaging/Participant;Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/t4$l$a;->f:Le/a/a/c/t4$l;

    iget-object p1, p1, Le/a/a/c/t4$l;->f:Le/a/a/c/t4;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/c/t4$l$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    iget v1, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1}, Le/a/a/c/z4;->n8(Lcom/truecaller/data/entity/messaging/Participant;Z)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
