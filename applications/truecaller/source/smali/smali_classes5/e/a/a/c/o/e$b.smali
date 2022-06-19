.class public final Le/a/a/c/o/e$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o/e;->Ij(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$loadData$2"
    f = "ConversationNotificationSettingsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/c/o/e;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/a/c/o/e;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/e$b;->e:Le/a/a/c/o/e;

    iput-object p2, p0, Le/a/a/c/o/e$b;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/a/c/o/e$b;

    iget-object v0, p0, Le/a/a/c/o/e$b;->e:Le/a/a/c/o/e;

    iget-object v1, p0, Le/a/a/c/o/e$b;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/o/e$b;-><init>(Le/a/a/c/o/e;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/c/o/e$b;->e:Le/a/a/c/o/e;

    iget-object v0, p0, Le/a/a/c/o/e$b;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/messaging/data/types/Conversation;

    .line 5
    iput-object p2, v1, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 6
    invoke-virtual {v1}, Le/a/a/c/o/e;->Kj()V

    .line 7
    iget-object v2, v1, Le/a/a/c/o/e;->g:Ls1/w/f;

    new-instance v4, Le/a/a/c/o/g;

    const/4 p2, 0x0

    invoke-direct {v4, v1, p2}, Le/a/a/c/o/g;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/o/e$b;->e:Le/a/a/c/o/e;

    iget-object v0, p0, Le/a/a/c/o/e$b;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/data/types/Conversation;

    .line 3
    iput-object v0, p1, Le/a/a/c/o/e;->h:Lcom/truecaller/messaging/data/types/Conversation;

    .line 4
    invoke-virtual {p1}, Le/a/a/c/o/e;->Kj()V

    .line 5
    iget-object v1, p0, Le/a/a/c/o/e$b;->e:Le/a/a/c/o/e;

    .line 6
    iget-object v2, v1, Le/a/a/c/o/e;->g:Ls1/w/f;

    new-instance v4, Le/a/a/c/o/g;

    const/4 p1, 0x0

    invoke-direct {v4, v1, p1}, Le/a/a/c/o/g;-><init>(Le/a/a/c/o/e;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
