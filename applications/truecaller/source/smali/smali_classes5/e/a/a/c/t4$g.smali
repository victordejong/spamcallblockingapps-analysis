.class public final Le/a/a/c/t4$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->h1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;)V
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onAttachmentClicked$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x213,
        0x215
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/t4;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/Entity;

.field public final synthetic h:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    iput-object p3, p0, Le/a/a/c/t4$g;->h:Lcom/truecaller/messaging/data/types/Message;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/c/t4$g;

    iget-object v0, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v2, p0, Le/a/a/c/t4$g;->h:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$g;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/t4$g;

    iget-object v0, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v2, p0, Le/a/a/c/t4$g;->h:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/c/t4$g;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/t4$g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/c/t4$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    iget-object v2, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast v2, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    .line 5
    invoke-virtual {p1, v2}, Le/a/a/c/t4;->Sj(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    iput v4, p0, Le/a/a/c/t4$g;->e:I

    invoke-virtual {p1, p0}, Le/a/a/c/t4;->Qj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    .line 8
    iget-object p1, p1, Le/a/a/c/t4;->O:Le/a/a/c/p5;

    .line 9
    iget-object v2, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast v2, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iput v3, p0, Le/a/a/c/t4$g;->e:I

    check-cast p1, Le/a/a/c/q5;

    invoke-virtual {p1, v2, p0}, Le/a/a/c/q5;->a(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 10
    iget-object p1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-static {p1}, Le/a/p5/s0/f;->L(Landroid/net/Uri;)Lcom/truecaller/utils/extensions/Scheme;

    move-result-object p1

    sget-object v1, Lcom/truecaller/utils/extensions/Scheme;->FILE:Lcom/truecaller/utils/extensions/Scheme;

    if-ne p1, v1, :cond_6

    return-object v0

    .line 11
    :cond_6
    iget-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_7

    const v1, 0x7f1201d9

    .line 13
    invoke-interface {p1, v1}, Le/a/a/c/z4;->a(I)V

    :cond_7
    return-object v0

    .line 14
    :cond_8
    iget-object p1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Entity;->w()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_9
    iget-object p1, p0, Le/a/a/c/t4$g;->h:Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_c

    .line 15
    iget-object v1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    .line 16
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/z4;

    if-eqz v2, :cond_b

    .line 17
    iget-object v3, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 18
    iget-object v4, v1, Le/a/a/c/t4;->d:Lcom/truecaller/messaging/data/types/Draft;

    if-eqz v4, :cond_a

    .line 19
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    .line 20
    :goto_2
    iget-boolean v1, v1, Le/a/a/c/t4;->B:Z

    .line 21
    invoke-interface {v2, v3, p1, v4, v1}, Le/a/a/c/z4;->Lk(Lcom/truecaller/messaging/data/types/BinaryEntity;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Conversation;Z)V

    :cond_b
    return-object v0

    .line 22
    :cond_c
    iget-object p1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 23
    iget-object v5, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    iget-object p1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.data.types.LocationEntity"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/data/types/LocationEntity;

    .line 24
    iget-wide v6, p1, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    .line 25
    iget-wide v8, p1, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    .line 26
    iget-object v10, p1, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    .line 27
    iget-object v11, p0, Le/a/a/c/t4$g;->h:Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual/range {v5 .. v11}, Le/a/a/c/t4;->Ea(DDLjava/lang/String;Lcom/truecaller/messaging/data/types/Message;)V

    return-object v0

    .line 28
    :cond_d
    iget-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    .line 29
    iget-object p1, p1, Le/a/a/c/t4;->N:Le/a/a/g/k0/b;

    .line 30
    iget-object v1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {p1, v1}, Le/a/a/g/k0/b;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_10

    .line 31
    iget-object p1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-static {p1}, Le/a/p5/s0/f;->L(Landroid/net/Uri;)Lcom/truecaller/utils/extensions/Scheme;

    move-result-object p1

    sget-object v1, Lcom/truecaller/utils/extensions/Scheme;->FILE:Lcom/truecaller/utils/extensions/Scheme;

    if-ne p1, v1, :cond_e

    return-object v0

    .line 32
    :cond_e
    iget-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    .line 33
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_f

    const v1, 0x7f1201da

    .line 34
    invoke-interface {p1, v1}, Le/a/a/c/z4;->a(I)V

    :cond_f
    return-object v0

    .line 35
    :cond_10
    iget-object v1, p0, Le/a/a/c/t4$g;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v2, "contentType"

    .line 36
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "text/vnd.plain-file"

    .line 37
    invoke-static {v2, v1, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v1, "text/plain"

    .line 38
    :cond_11
    iget-object v2, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    .line 39
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/z4;

    if-eqz v2, :cond_12

    .line 40
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Locale.ENGLISH"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1}, Le/a/a/c/z4;->Qu(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 41
    iget-object p1, p0, Le/a/a/c/t4$g;->f:Le/a/a/c/t4;

    .line 42
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_12

    const v1, 0x7f1206f7

    .line 43
    invoke-interface {p1, v1}, Le/a/a/c/z4;->a(I)V

    :cond_12
    return-object v0
.end method
