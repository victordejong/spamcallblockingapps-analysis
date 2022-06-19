.class public final Le/a/a/c/t4$m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->i1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Le/a/a/c/s8/i;)V
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
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onPlayPauseVoiceClipClicked$1"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x28c,
        0x28e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/c/t4;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/Entity;

.field public final synthetic h:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

.field public final synthetic i:Le/a/a/c/s8/i;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Le/a/a/c/s8/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$m;->g:Lcom/truecaller/messaging/data/types/Entity;

    iput-object p3, p0, Le/a/a/c/t4$m;->h:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    iput-object p4, p0, Le/a/a/c/t4$m;->i:Le/a/a/c/s8/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/c/t4$m;

    iget-object v1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    iget-object v2, p0, Le/a/a/c/t4$m;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v3, p0, Le/a/a/c/t4$m;->h:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    iget-object v4, p0, Le/a/a/c/t4$m;->i:Le/a/a/c/s8/i;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/t4$m;-><init>(Le/a/a/c/t4;Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Le/a/a/c/s8/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/c/t4$m;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/c/t4$m;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/t4$m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/c/t4$m;->e:I

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
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    iput v4, p0, Le/a/a/c/t4$m;->e:I

    invoke-virtual {p1, p0}, Le/a/a/c/t4;->Rj(Ls1/w/d;)Ljava/lang/Object;

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

    .line 5
    :cond_4
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 6
    iget-object p1, p1, Le/a/a/c/t4;->O:Le/a/a/c/p5;

    .line 7
    iget-object v2, p0, Le/a/a/c/t4$m;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast v2, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iput v3, p0, Le/a/a/c/t4$m;->e:I

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

    if-nez p1, :cond_7

    .line 8
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_6

    const v1, 0x7f1201d9

    .line 10
    invoke-interface {p1, v1}, Le/a/a/c/z4;->a(I)V

    :cond_6
    return-object v0

    .line 11
    :cond_7
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 12
    iget-wide v1, p1, Le/a/a/c/t4;->i:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_8

    .line 13
    iget-object v3, p0, Le/a/a/c/t4$m;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Entity;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    .line 14
    iget-object p1, p1, Le/a/a/c/t4;->R:Le/a/a/c/s8/j;

    .line 15
    invoke-interface {p1}, Le/a/a/c/s8/j;->reset()V

    .line 16
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 17
    iget-object p1, p1, Le/a/a/c/t4;->R:Le/a/a/c/s8/j;

    .line 18
    invoke-interface {p1}, Le/a/a/c/s8/j;->release()V

    .line 19
    :cond_8
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    iget-object v1, p0, Le/a/a/c/t4$m;->g:Lcom/truecaller/messaging/data/types/Entity;

    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    .line 20
    iput-wide v1, p1, Le/a/a/c/t4;->i:J

    .line 21
    iget-object p1, p1, Le/a/a/c/t4;->R:Le/a/a/c/s8/j;

    .line 22
    invoke-interface {p1}, Le/a/a/c/s8/j;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 23
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 24
    iget-object p1, p1, Le/a/a/c/t4;->R:Le/a/a/c/s8/j;

    .line 25
    invoke-interface {p1}, Le/a/a/c/s8/j;->pause()V

    .line 26
    iget-object p1, p0, Le/a/a/c/t4$m;->h:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->setEnabled(Z)V

    goto :goto_2

    .line 27
    :cond_9
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 28
    iget-object p1, p1, Le/a/a/c/t4;->R:Le/a/a/c/s8/j;

    .line 29
    iget-object v1, p0, Le/a/a/c/t4$m;->i:Le/a/a/c/s8/i;

    invoke-interface {p1, v1}, Le/a/a/c/s8/j;->b(Le/a/a/c/s8/i;)V

    .line 30
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 31
    iget-object p1, p1, Le/a/a/c/t4;->R:Le/a/a/c/s8/j;

    .line 32
    iget-object v1, p0, Le/a/a/c/t4$m;->g:Lcom/truecaller/messaging/data/types/Entity;

    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {p1, v1}, Le/a/a/c/s8/j;->a(Landroid/net/Uri;)V

    .line 33
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 34
    iget-object p1, p1, Le/a/a/c/t4;->R:Le/a/a/c/s8/j;

    .line 35
    iget-object v1, p0, Le/a/a/c/t4$m;->h:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    invoke-interface {p1, v1}, Le/a/a/c/s8/j;->c(Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;)V

    .line 36
    iget-object p1, p0, Le/a/a/c/t4$m;->f:Le/a/a/c/t4;

    .line 37
    iget-object p1, p1, Le/a/a/c/t4;->S:Le/a/a/c/r3;

    .line 38
    check-cast p1, Le/a/a/c/s3;

    const-string v1, "Start"

    invoke-virtual {p1, v1}, Le/a/a/c/s3;->e(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
