.class public final Le/a/a/b/s$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/s;->Lj()V
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
    c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$loadConversations$1"
    f = "MessagingListPresenterImpl.kt"
    l = {
        0x149,
        0x14a,
        0x14c,
        0x14f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/b/s;


# direct methods
.method public constructor <init>(Le/a/a/b/s;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

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

    new-instance p1, Le/a/a/b/s$c;

    iget-object v0, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    invoke-direct {p1, v0, p2}, Le/a/a/b/s$c;-><init>(Le/a/a/b/s;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/b/s$c;

    iget-object v0, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    invoke-direct {p1, v0, p2}, Le/a/a/b/s$c;-><init>(Le/a/a/b/s;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/b/s$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/b/s$c;->f:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/b/s$c;->e:Ljava/lang/Object;

    check-cast v0, Le/a/a/b/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    .line 5
    iget-object v1, p1, Le/a/a/b/s;->w:Lcom/truecaller/messaging/messaginglist/MarkAsReadBannerState;

    .line 6
    sget-object v6, Lcom/truecaller/messaging/messaginglist/MarkAsReadBannerState;->UNREAD:Lcom/truecaller/messaging/messaginglist/MarkAsReadBannerState;

    if-ne v1, v6, :cond_6

    .line 7
    iget-object p1, p1, Le/a/a/b/s;->N:Lo3/a;

    .line 8
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    .line 9
    iget-object v3, v1, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 10
    iget-object v1, v1, Le/a/a/b/s;->v:Ljava/util/Set;

    .line 11
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput v5, p0, Le/a/a/b/s$c;->f:I

    invoke-interface {p1, v3, v1, p0}, Le/a/a/g/w;->o(Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 12
    :cond_5
    :goto_0
    check-cast p1, Le/a/a/g/j0/a;

    .line 13
    iget-object v1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    invoke-static {v1, p1}, Le/a/a/b/s;->Ij(Le/a/a/b/s;Le/a/a/g/j0/a;)V

    goto :goto_3

    .line 14
    :cond_6
    iget-object v1, p1, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 15
    sget-object v5, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v1, v5, :cond_8

    .line 16
    iget-boolean v1, p1, Le/a/a/b/s;->x0:Z

    if-eqz v1, :cond_8

    .line 17
    iget-object p1, p1, Le/a/a/b/s;->N:Lo3/a;

    .line 18
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iput v4, p0, Le/a/a/b/s$c;->f:I

    invoke-interface {p1, p0}, Le/a/a/g/w;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 19
    :cond_7
    :goto_1
    check-cast p1, Le/a/a/g/j0/a;

    iget-object v1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    invoke-static {v1, p1}, Le/a/a/b/s;->Ij(Le/a/a/b/s;Le/a/a/g/j0/a;)V

    goto :goto_3

    .line 20
    :cond_8
    iget-object p1, p1, Le/a/a/b/s;->N:Lo3/a;

    .line 21
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    .line 22
    iget-object v1, v1, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 23
    iput v3, p0, Le/a/a/b/s$c;->f:I

    invoke-interface {p1, v1, p0}, Le/a/a/g/w;->p(Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 24
    :cond_9
    :goto_2
    check-cast p1, Le/a/a/g/j0/a;

    .line 25
    iget-object v1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    invoke-static {v1, p1}, Le/a/a/b/s;->Ij(Le/a/a/b/s;Le/a/a/g/j0/a;)V

    .line 26
    :goto_3
    iget-object p1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    .line 27
    iget-object v1, p1, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 28
    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne v1, v3, :cond_b

    .line 29
    iget-object p1, p1, Le/a/a/b/s;->j0:Le/a/u3/g;

    .line 30
    invoke-virtual {p1}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    iget-object p1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    .line 32
    iget-object v1, p1, Le/a/a/b/s;->N:Lo3/a;

    .line 33
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/w;

    iput-object p1, p0, Le/a/a/b/s$c;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/a/b/s$c;->f:I

    invoke-interface {v1, p0}, Le/a/a/g/w;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v0, p1

    move-object p1, v1

    :goto_4
    check-cast p1, Le/a/a/g/v;

    .line 34
    iput-object p1, v0, Le/a/a/b/s;->z:Le/a/a/g/v;

    .line 35
    iget-object p1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    .line 36
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/b/r;

    if-eqz p1, :cond_c

    .line 37
    invoke-interface {p1}, Le/a/a/b/r;->D0()V

    goto :goto_5

    .line 38
    :cond_b
    iget-object p1, p0, Le/a/a/b/s$c;->g:Le/a/a/b/s;

    .line 39
    iget-object v0, p1, Le/a/a/b/s;->z:Le/a/a/g/v;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, Le/a/a/b/s;->z:Le/a/a/g/v;

    .line 41
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/b/r;

    if-eqz p1, :cond_c

    .line 42
    invoke-interface {p1}, Le/a/a/b/r;->D0()V

    .line 43
    :cond_c
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
