.class public final Le/a/a/d/x$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/x;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Le/a/a/g/j0/a0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.newconversation.NewConversationPresenter$loadCursor$1$cursor$1"
    f = "NewConversationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/d/x;


# direct methods
.method public constructor <init>(Le/a/a/d/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/x$a;->e:Le/a/a/d/x;

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

    new-instance p1, Le/a/a/d/x$a;

    iget-object v0, p0, Le/a/a/d/x$a;->e:Le/a/a/d/x;

    invoke-direct {p1, v0, p2}, Le/a/a/d/x$a;-><init>(Le/a/a/d/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/d/x$a;

    iget-object v0, p0, Le/a/a/d/x$a;->e:Le/a/a/d/x;

    invoke-direct {p1, v0, p2}, Le/a/a/d/x$a;-><init>(Le/a/a/d/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/d/x$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/d/x$a;->e:Le/a/a/d/x;

    iget-object v0, p1, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 3
    iget-object v1, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->u:Le/a/a/d/f;

    .line 4
    iget-object v2, p1, Le/a/a/d/x;->g:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Le/a/a/d/x;->h:Landroid/os/CancellationSignal;

    .line 6
    iget-object v0, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->y:Le/a/a/d/p;

    .line 7
    invoke-virtual {v0}, Le/a/a/d/p;->Ij()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v3, p0, Le/a/a/d/x$a;->e:Le/a/a/d/x;

    iget-object v3, v3, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 9
    iget-object v4, v3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->z:Le/a/a/d/s;

    .line 10
    instance-of v5, v4, Le/a/a/d/s$c;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    check-cast v5, Le/a/a/d/s$c;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    .line 11
    iget-object v5, v5, Le/a/a/d/s$c;->a:Ljava/util/ArrayList;

    .line 12
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/truecaller/messaging/ForwardContentItem;

    .line 13
    iget-object v11, v10, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v11, :cond_3

    .line 14
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result v11

    if-nez v11, :cond_2

    .line 15
    iget-object v10, v10, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 16
    invoke-virtual {v10}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move v10, v8

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    if-eqz v10, :cond_1

    goto :goto_2

    :cond_4
    move-object v9, v6

    :goto_2
    if-eqz v9, :cond_5

    move v5, v8

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    if-nez v5, :cond_11

    instance-of v5, v4, Le/a/a/d/s$b;

    if-nez v5, :cond_6

    move-object v4, v6

    :cond_6
    check-cast v4, Le/a/a/d/s$b;

    if-eqz v4, :cond_f

    .line 17
    iget-object v4, v4, Le/a/a/d/s$b;->a:Landroid/content/Intent;

    .line 18
    invoke-static {v4}, Le/a/b0/q/t;->a(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/net/Uri;

    const-string v10, "uri"

    .line 19
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->K:Landroid/content/Context;

    invoke-static {v9, v10}, Le/a/p5/s0/f;->i(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    const-string v10, "contentType"

    .line 20
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "image/"

    .line 21
    invoke-static {v9, v11, v8}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 22
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "tenor/gif"

    .line 23
    invoke-static {v11, v9, v8}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "image/gif"

    invoke-static {v11, v9, v8}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    move v11, v7

    goto :goto_5

    :cond_9
    :goto_4
    move v11, v8

    :goto_5
    if-eqz v11, :cond_b

    .line 24
    :cond_a
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "video/"

    .line 25
    invoke-static {v9, v10, v8}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    move v9, v8

    goto :goto_6

    :cond_c
    move v9, v7

    :goto_6
    if-eqz v9, :cond_7

    move-object v6, v5

    .line 26
    :cond_d
    check-cast v6, Landroid/net/Uri;

    :cond_e
    if-eqz v6, :cond_f

    move v3, v8

    goto :goto_7

    :cond_f
    move v3, v7

    :goto_7
    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    move v3, v7

    goto :goto_9

    :cond_11
    :goto_8
    move v3, v8

    :goto_9
    if-eqz v3, :cond_12

    .line 27
    iget-object v3, p0, Le/a/a/d/x$a;->e:Le/a/a/d/x;

    iget-object v3, v3, Le/a/a/d/x;->f:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    .line 28
    iget-object v3, v3, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->A:Le/a/u3/g;

    .line 29
    iget-object v4, v3, Le/a/u3/g;->m3:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0xdd

    aget-object v5, v5, v6

    invoke-virtual {v4, v3, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    check-cast v3, Le/a/u3/i;

    .line 30
    invoke-interface {v3}, Le/a/u3/i;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_12

    move v7, v8

    .line 31
    :cond_12
    invoke-interface {v1, v2, p1, v0, v7}, Le/a/a/d/f;->a(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/String;Z)Le/a/a/g/j0/a0;

    move-result-object p1

    return-object p1
.end method
