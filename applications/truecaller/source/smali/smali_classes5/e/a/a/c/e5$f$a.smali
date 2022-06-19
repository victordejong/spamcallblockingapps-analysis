.class public final Le/a/a/c/e5$f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e5$f;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/truecaller/data/entity/Contact;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$onInviteActionClicked$1$1"
    f = "ConversationPresenterImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/c/e5$f;


# direct methods
.method public constructor <init>(Le/a/a/c/e5$f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e5$f$a;->e:Le/a/a/c/e5$f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/a/c/e5$f$a;

    iget-object v0, p0, Le/a/a/c/e5$f$a;->e:Le/a/a/c/e5$f;

    invoke-direct {p1, v0, p2}, Le/a/a/c/e5$f$a;-><init>(Le/a/a/c/e5$f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/c/e5$f$a;->e:Le/a/a/c/e5$f;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/a/c/e5$f;->f:Le/a/a/c/e5;

    .line 6
    iget-object p2, p2, Le/a/a/c/e5;->D0:Le/a/k3/j/b;

    .line 7
    iget-object p1, p1, Le/a/a/c/e5$f;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {p2, v0, v1}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/e5$f$a;->e:Le/a/a/c/e5$f;

    iget-object v0, p1, Le/a/a/c/e5$f;->f:Le/a/a/c/e5;

    .line 3
    iget-object v0, v0, Le/a/a/c/e5;->D0:Le/a/k3/j/b;

    .line 4
    iget-object p1, p1, Le/a/a/c/e5$f;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {v0, v1, v2}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method
