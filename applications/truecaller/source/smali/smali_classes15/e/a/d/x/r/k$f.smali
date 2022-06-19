.class public final Le/a/d/x/r/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/RtmChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/k;->c(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/x/r/k;


# direct methods
.method public constructor <init>(Le/a/d/x/r/k;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttributesUpdated(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute update event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lio/agora/rtm/RtmChannelAttribute;

    .line 5
    iget-object v2, p0, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    invoke-static {v2, v1}, Le/a/d/x/r/k;->b(Le/a/d/x/r/k;Lio/agora/rtm/RtmChannelAttribute;)Le/a/d/x/r/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    .line 8
    iget-object v1, v0, Le/a/d/x/r/k;->g:Lq3/a/i0;

    const/4 v2, 0x0

    .line 9
    sget-object v3, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v4, Le/a/d/x/r/k$f$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/x/r/k$f$a;-><init>(Le/a/d/x/r/k$f;Ljava/util/Set;Ls1/w/d;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onFileMessageReceived(Lio/agora/rtm/RtmFileMessage;Lio/agora/rtm/RtmChannelMember;)V
    .locals 0

    return-void
.end method

.method public onImageMessageReceived(Lio/agora/rtm/RtmImageMessage;Lio/agora/rtm/RtmChannelMember;)V
    .locals 0

    return-void
.end method

.method public onMemberCountUpdated(I)V
    .locals 0

    return-void
.end method

.method public onMemberJoined(Lio/agora/rtm/RtmChannelMember;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Member joined "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Le/a/d/x/r/l;

    invoke-virtual {p1}, Lio/agora/rtm/RtmChannelMember;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "agoraMember.userId"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/d/x/r/l;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    .line 4
    iget-object v1, p1, Le/a/d/x/r/k;->g:Lq3/a/i0;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v4, Le/a/d/x/r/k$f$c;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Le/a/d/x/r/k$f$c;-><init>(Le/a/d/x/r/k$f;Le/a/d/x/r/l;Ls1/w/d;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onMemberLeft(Lio/agora/rtm/RtmChannelMember;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Member left "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Le/a/d/x/r/l;

    invoke-virtual {p1}, Lio/agora/rtm/RtmChannelMember;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "agoraMember.userId"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Le/a/d/x/r/l;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    .line 4
    iget-object v1, p1, Le/a/d/x/r/k;->g:Lq3/a/i0;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v4, Le/a/d/x/r/k$f$d;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Le/a/d/x/r/k$f$d;-><init>(Le/a/d/x/r/k$f;Le/a/d/x/r/l;Ls1/w/d;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public onMessageReceived(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message is received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from member "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d/x/r/k$f;->a:Le/a/d/x/r/k;

    .line 3
    iget-object v1, v0, Le/a/d/x/r/k;->g:Lq3/a/i0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    new-instance v4, Le/a/d/x/r/k$f$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/d/x/r/k$f$b;-><init>(Le/a/d/x/r/k$f;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method
