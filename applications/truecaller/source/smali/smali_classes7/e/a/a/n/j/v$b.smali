.class public final Le/a/a/n/j/v$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/n/j/v;->o8(Le/a/a/g/l0/c;)Z
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
    c = "com.truecaller.messaging.mediamanager.medialist.MediaListPresenter$onAttachmentClick$3"
    f = "MediaListPresenter.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/n/j/v;

.field public final synthetic g:Le/a/a/g/l0/c;


# direct methods
.method public constructor <init>(Le/a/a/n/j/v;Le/a/a/g/l0/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    iput-object p2, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

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

    new-instance p1, Le/a/a/n/j/v$b;

    iget-object v0, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    iget-object v1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/n/j/v$b;-><init>(Le/a/a/n/j/v;Le/a/a/g/l0/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/n/j/v$b;

    iget-object v0, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    iget-object v1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/n/j/v$b;-><init>(Le/a/a/n/j/v;Le/a/a/g/l0/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/n/j/v$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/n/j/v$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 5
    iget-object p1, p1, Le/a/a/n/j/v;->u:Le/a/a/c/p5;

    .line 6
    iget-object v2, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    .line 7
    iget-object v2, v2, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 8
    iput v3, p0, Le/a/a/n/j/v$b;->e:I

    check-cast p1, Le/a/a/c/q5;

    invoke-virtual {p1, v2, p0}, Le/a/a/c/q5;->a(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 9
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_3

    const v1, 0x7f1201d9

    .line 11
    invoke-interface {p1, v1}, Le/a/a/n/j/t;->a(I)V

    :cond_3
    return-object v0

    .line 12
    :cond_4
    iget-object p1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    .line 13
    iget-object p1, p1, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    const-string v1, "contentType"

    .line 14
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "image/"

    .line 15
    invoke-static {p1, v2, v3}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_b

    .line 16
    iget-object p1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    .line 17
    iget-object p1, p1, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 18
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "video/"

    .line 19
    invoke-static {p1, v2, v3}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_1

    .line 20
    :cond_5
    iget-object p1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    .line 21
    iget-object p1, p1, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 22
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audio/"

    .line 23
    invoke-static {p1, v1, v3}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    iget-object v1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    .line 25
    iget-wide v2, p1, Le/a/a/n/j/v;->g:J

    .line 26
    iget-wide v4, v1, Le/a/a/g/l0/c;->f:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 27
    iget-object v2, p1, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    invoke-interface {v2}, Le/a/a/c/s8/j;->reset()V

    .line 28
    iget-object v2, p1, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    invoke-interface {v2}, Le/a/a/c/s8/j;->release()V

    .line 29
    :cond_6
    iget-wide v2, v1, Le/a/a/g/l0/c;->f:J

    .line 30
    iput-wide v2, p1, Le/a/a/n/j/v;->g:J

    .line 31
    iget-object v2, p1, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    invoke-interface {v2}, Le/a/a/c/s8/j;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32
    iget-object p1, p1, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    invoke-interface {p1}, Le/a/a/c/s8/j;->pause()V

    goto/16 :goto_2

    .line 33
    :cond_7
    iget-object v2, p1, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    .line 34
    iget-object v3, p1, Le/a/a/n/j/v;->k:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/c/s8/i;

    .line 35
    invoke-interface {v2, v3}, Le/a/a/c/s8/j;->b(Le/a/a/c/s8/i;)V

    .line 36
    iget-object v2, p1, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    .line 37
    iget-object v1, v1, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 38
    invoke-interface {v2, v1}, Le/a/a/c/s8/j;->a(Landroid/net/Uri;)V

    .line 39
    iget-object p1, p1, Le/a/a/n/j/v;->q:Le/a/a/c/s8/j;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Le/a/a/c/s8/j;->c(Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;)V

    goto/16 :goto_2

    .line 40
    :cond_8
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 41
    iget-object p1, p1, Le/a/a/n/j/v;->v:Le/a/a/g/k0/b;

    .line 42
    iget-object v1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    invoke-static {v1}, Le/a/c/p/a;->R2(Le/a/a/g/l0/c;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/a/g/k0/b;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_a

    .line 43
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 44
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_9

    const v1, 0x7f1201da

    .line 45
    invoke-interface {p1, v1}, Le/a/a/n/j/t;->a(I)V

    :cond_9
    return-object v0

    .line 46
    :cond_a
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 47
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_c

    .line 48
    iget-object v1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    .line 49
    iget-object v2, v1, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 50
    iget-object v1, v1, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 51
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2, v1}, Le/a/a/n/j/t;->w6(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 52
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 53
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_c

    const v1, 0x7f1206f7

    .line 54
    invoke-interface {p1, v1}, Le/a/a/n/j/t;->a(I)V

    goto :goto_2

    .line 55
    :cond_b
    :goto_1
    iget-object p1, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 56
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_c

    .line 57
    iget-object v1, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    invoke-static {v1}, Le/a/c/p/a;->R2(Le/a/a/g/l0/c;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    iget-object v2, p0, Le/a/a/n/j/v$b;->g:Le/a/a/g/l0/c;

    iget-object v3, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 58
    iget-object v3, v3, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    .line 59
    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v2, v3, v4}, Le/a/c/p/a;->f3(Le/a/a/g/l0/c;J)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    iget-object v3, p0, Le/a/a/n/j/v$b;->f:Le/a/a/n/j/v;

    .line 60
    iget-object v3, v3, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    .line 61
    invoke-interface {p1, v1, v2, v3}, Le/a/a/n/j/t;->br(Lcom/truecaller/messaging/data/types/BinaryEntity;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_c
    :goto_2
    return-object v0
.end method
