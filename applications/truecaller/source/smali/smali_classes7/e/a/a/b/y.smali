.class public final Le/a/a/b/y;
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
    c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$onSelectAllConversations$1"
    f = "MessagingListPresenterImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/b/s;


# direct methods
.method public constructor <init>(Le/a/a/b/s;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

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

    new-instance p1, Le/a/a/b/y;

    iget-object v0, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    invoke-direct {p1, v0, p2}, Le/a/a/b/y;-><init>(Le/a/a/b/s;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/a/b/s;->e:Le/a/a/g/j0/a;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    iget-object v1, v0, Le/a/a/b/s;->l:Ljava/util/Map;

    .line 7
    invoke-interface {p2}, Le/a/a/g/j0/a;->getId()J

    move-result-wide v2

    .line 8
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 9
    invoke-interface {p2}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    :cond_1
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/b/r;

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p2}, Le/a/a/b/r;->D0()V

    .line 13
    :cond_2
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/b/r;

    if-eqz p2, :cond_3

    .line 14
    invoke-interface {p2}, Le/a/a/b/r;->g0()V

    .line 15
    :cond_3
    iget-object p2, v0, Le/a/a/b/s;->i0:Le/a/q2/i0;

    .line 16
    iget-object v1, v0, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 17
    iget-object v2, v0, Le/a/a/b/s;->e:Le/a/a/g/j0/a;

    if-eqz v2, :cond_4

    .line 18
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 19
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 20
    :goto_0
    iget-object v0, v0, Le/a/a/b/s;->l:Ljava/util/Map;

    .line 21
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v2, "markAll"

    .line 22
    invoke-interface {p2, v2, v1, v3, v0}, Le/a/q2/i0;->n(Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/Integer;I)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    .line 3
    iget-object p1, p1, Le/a/a/b/s;->e:Le/a/a/g/j0/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    .line 6
    iget-object v0, v0, Le/a/a/b/s;->l:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Le/a/a/g/j0/a;->getId()J

    move-result-wide v1

    .line 8
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 9
    invoke-interface {p1}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/b/r;

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Le/a/a/b/r;->D0()V

    .line 14
    :cond_2
    iget-object p1, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/b/r;

    if-eqz p1, :cond_3

    .line 16
    invoke-interface {p1}, Le/a/a/b/r;->g0()V

    .line 17
    :cond_3
    iget-object p1, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    .line 18
    iget-object v0, p1, Le/a/a/b/s;->i0:Le/a/q2/i0;

    .line 19
    iget-object v1, p1, Le/a/a/b/s;->D:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 20
    iget-object p1, p1, Le/a/a/b/s;->e:Le/a/a/g/j0/a;

    if-eqz p1, :cond_4

    .line 21
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 22
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-object p1, p0, Le/a/a/b/y;->e:Le/a/a/b/s;

    .line 24
    iget-object p1, p1, Le/a/a/b/s;->l:Ljava/util/Map;

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const-string v3, "markAll"

    .line 26
    invoke-interface {v0, v3, v1, v2, p1}, Le/a/q2/i0;->n(Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/Integer;I)V

    .line 27
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
