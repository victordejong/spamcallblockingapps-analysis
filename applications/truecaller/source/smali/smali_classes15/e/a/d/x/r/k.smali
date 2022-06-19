.class public final Le/a/d/x/r/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/x/r/h;


# instance fields
.field public final a:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Ljava/util/Set<",
            "Le/a/d/x/r/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Ljava/util/Set<",
            "Le/a/d/x/r/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile c:Lio/agora/rtm/RtmChannel;

.field public final d:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/voip/manager/rtm/RtmMsg;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/b3/c;

.field public final f:Ljava/lang/String;

.field public final g:Lq3/a/i0;

.field public final h:Lio/agora/rtm/RtmClient;

.field public final i:Le/m/e/k;

.field public final j:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq3/a/i0;Lio/agora/rtm/RtmClient;Le/m/e/k;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq3/a/i0;",
            "Lio/agora/rtm/RtmClient;",
            "Le/m/e/k;",
            "Ls1/z/b/a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmClient"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/x/r/k;->f:Ljava/lang/String;

    iput-object p2, p0, Le/a/d/x/r/k;->g:Lq3/a/i0;

    iput-object p3, p0, Le/a/d/x/r/k;->h:Lio/agora/rtm/RtmClient;

    iput-object p4, p0, Le/a/d/x/r/k;->i:Le/m/e/k;

    iput-object p5, p0, Le/a/d/x/r/k;->j:Ls1/z/b/a;

    .line 2
    new-instance p1, Le/a/d/c0/r;

    sget-object p2, Ls1/u/u;->a:Ls1/u/u;

    invoke-direct {p1, p2}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/d/x/r/k;->a:Le/a/d/c0/r;

    .line 3
    new-instance p1, Le/a/d/c0/r;

    invoke-direct {p1, p2}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/d/x/r/k;->b:Le/a/d/c0/r;

    const/4 p1, -0x2

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p1

    iput-object p1, p0, Le/a/d/x/r/k;->d:Lq3/a/w2/h;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/d/x/r/k;->e:Lq3/a/b3/c;

    return-void
.end method

.method public static final b(Le/a/d/x/r/k;Lio/agora/rtm/RtmChannelAttribute;)Le/a/d/x/r/i;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v6, Le/a/d/x/r/i;

    .line 3
    invoke-virtual {p1}, Lio/agora/rtm/RtmChannelAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v0, "key"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lio/agora/rtm/RtmChannelAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v0, "value"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lio/agora/rtm/RtmChannelAttribute;->getLastUpdateUserId()Ljava/lang/String;

    move-result-object v3

    const-string v0, "lastUpdateUserId"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lio/agora/rtm/RtmChannelAttribute;->getLastUpdateTs()J

    move-result-wide v4

    .line 7
    iget-object p0, p0, Le/a/d/x/r/k;->j:Ls1/z/b/a;

    invoke-interface {p0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, v6

    .line 8
    invoke-direct/range {v0 .. v5}, Le/a/d/x/r/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v6
.end method


# virtual methods
.method public a()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/r/k;->b:Le/a/d/c0/r;

    return-object v0
.end method

.method public final c(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/o;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 3
    iget-object v1, p0, Le/a/d/x/r/k;->h:Lio/agora/rtm/RtmClient;

    .line 4
    iget-object v2, p0, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 5
    new-instance v3, Le/a/d/x/r/k$f;

    invoke-direct {v3, p0}, Le/a/d/x/r/k$f;-><init>(Le/a/d/x/r/k;)V

    invoke-virtual {v1, v2, v3}, Lio/agora/rtm/RtmClient;->createChannel(Ljava/lang/String;Lio/agora/rtm/RtmChannelListener;)Lio/agora/rtm/RtmChannel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0}, Lq3/a/o;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Le/a/d/x/r/k$g;

    invoke-direct {v2, v1, v0, p0}, Le/a/d/x/r/k$g;-><init>(Lio/agora/rtm/RtmChannel;Lq3/a/n;Le/a/d/x/r/k;)V

    invoke-virtual {v1, v2}, Lio/agora/rtm/RtmChannel;->join(Lio/agora/rtm/ResultCallback;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 10
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_2

    const-string v1, "frame"

    .line 11
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public final d(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/x/r/k$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/x/r/k$k;

    iget v1, v0, Le/a/d/x/r/k$k;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/x/r/k$k;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/x/r/k$k;

    invoke-direct {v0, p0, p1}, Le/a/d/x/r/k$k;-><init>(Le/a/d/x/r/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/x/r/k$k;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/x/r/k$k;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/d/x/r/k$k;->j:Ljava/lang/Object;

    check-cast v1, Le/a/d/x/r/k$k;

    iget-object v1, v0, Le/a/d/x/r/k$k;->i:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/d0;

    iget-object v2, v0, Le/a/d/x/r/k$k;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v0, v0, Le/a/d/x/r/k$k;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/x/r/k;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/d/x/r/k$k;->i:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v6, v0, Le/a/d/x/r/k$k;->h:Ljava/lang/Object;

    check-cast v6, Le/a/d/c0/r;

    iget-object v7, v0, Le/a/d/x/r/k$k;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/x/r/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v6, p0, Le/a/d/x/r/k;->b:Le/a/d/c0/r;

    .line 5
    iget-object p1, v6, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 6
    iput-object p0, v0, Le/a/d/x/r/k$k;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/d/x/r/k$k;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/x/r/k$k;->i:Ljava/lang/Object;

    iput v5, v0, Le/a/d/x/r/k$k;->e:I

    invoke-interface {p1, v4, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v7, p0

    move-object v2, p1

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 8
    iput-object v7, v0, Le/a/d/x/r/k$k;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/x/r/k$k;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/x/r/k$k;->i:Ljava/lang/Object;

    iput-object v0, v0, Le/a/d/x/r/k$k;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/d/x/r/k$k;->e:I

    .line 9
    new-instance v3, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v6

    invoke-direct {v3, v6, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 10
    invoke-virtual {v3}, Lq3/a/o;->z()V

    .line 11
    iget-object v5, v7, Le/a/d/x/r/k;->h:Lio/agora/rtm/RtmClient;

    .line 12
    iget-object v6, v7, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 13
    new-instance v8, Le/a/d/x/r/k$j;

    invoke-direct {v8, v3, v7, v0}, Le/a/d/x/r/k$j;-><init>(Lq3/a/n;Le/a/d/x/r/k;Ls1/w/d;)V

    invoke-virtual {v5, v6, v8}, Lio/agora/rtm/RtmClient;->getChannelAttributes(Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V

    .line 14
    invoke-virtual {v3}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    const-string v5, "frame"

    .line 15
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne v3, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, p1

    move-object p1, v3

    .line 16
    :goto_2
    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_7

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attributes are updated "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    invoke-interface {v1, p1}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 19
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-interface {v2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    .line 21
    :cond_7
    :try_start_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    invoke-interface {v2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public final e(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p1, Le/a/d/x/r/k$l;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/d/x/r/k$l;

    iget v2, v1, Le/a/d/x/r/k$l;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/x/r/k$l;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/x/r/k$l;

    invoke-direct {v1, p0, p1}, Le/a/d/x/r/k$l;-><init>(Le/a/d/x/r/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/d/x/r/k$l;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/x/r/k$l;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v1, Le/a/d/x/r/k$l;->j:Ljava/lang/Object;

    check-cast v2, Le/a/d/x/r/k$l;

    iget-object v2, v1, Le/a/d/x/r/k$l;->i:Ljava/lang/Object;

    check-cast v2, Lio/agora/rtm/RtmChannel;

    iget-object v2, v1, Le/a/d/x/r/k$l;->h:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/d0;

    iget-object v1, v1, Le/a/d/x/r/k$l;->g:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/d/x/r/k$l;->i:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v7, v1, Le/a/d/x/r/k$l;->h:Ljava/lang/Object;

    check-cast v7, Le/a/d/c0/r;

    iget-object v8, v1, Le/a/d/x/r/k$l;->g:Ljava/lang/Object;

    check-cast v8, Le/a/d/x/r/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v7, p0, Le/a/d/x/r/k;->a:Le/a/d/c0/r;

    .line 5
    iget-object v3, v7, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 6
    iput-object p0, v1, Le/a/d/x/r/k$l;->g:Ljava/lang/Object;

    iput-object v7, v1, Le/a/d/x/r/k$l;->h:Ljava/lang/Object;

    iput-object v3, v1, Le/a/d/x/r/k$l;->i:Ljava/lang/Object;

    iput v5, v1, Le/a/d/x/r/k$l;->e:I

    invoke-interface {v3, v6, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v8, p0

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual {v7}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 8
    iget-object v7, v8, Le/a/d/x/r/k;->c:Lio/agora/rtm/RtmChannel;

    if-eqz v7, :cond_8

    .line 9
    iput-object v3, v1, Le/a/d/x/r/k$l;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/x/r/k$l;->h:Ljava/lang/Object;

    iput-object v7, v1, Le/a/d/x/r/k$l;->i:Ljava/lang/Object;

    iput-object v1, v1, Le/a/d/x/r/k$l;->j:Ljava/lang/Object;

    iput v4, v1, Le/a/d/x/r/k$l;->e:I

    .line 10
    new-instance v4, Lq3/a/o;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v8

    invoke-direct {v4, v8, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 11
    invoke-virtual {v4}, Lq3/a/o;->z()V

    .line 12
    new-instance v5, Le/a/d/x/r/k$m;

    invoke-direct {v5, v4}, Le/a/d/x/r/k$m;-><init>(Lq3/a/n;)V

    invoke-virtual {v7, v5}, Lio/agora/rtm/RtmChannel;->getMembers(Lio/agora/rtm/ResultCallback;)V

    .line 13
    invoke-virtual {v4}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_5

    const-string v5, "frame"

    .line 14
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    if-ne v4, v2, :cond_6

    return-object v2

    :cond_6
    move-object v2, p1

    move-object v1, v3

    move-object p1, v4

    .line 15
    :goto_2
    :try_start_2
    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_7

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Members are updated "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    invoke-interface {v2, p1}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 18
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-interface {v1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :cond_7
    invoke-interface {v1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_8
    invoke-interface {v3, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception p1

    :goto_4
    invoke-interface {v3, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Le/a/d/x/r/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 3
    check-cast p1, Le/a/d/x/r/k;

    .line 4
    iget-object p1, p1, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/x/r/k;->g:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/r/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/x/r/k$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/x/r/k$e;

    iget v1, v0, Le/a/d/x/r/k$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/x/r/k$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/x/r/k$e;

    invoke-direct {v0, p0, p1}, Le/a/d/x/r/k$e;-><init>(Le/a/d/x/r/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/x/r/k$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/x/r/k$e;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/d/x/r/k$e;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v5, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    check-cast v5, Le/a/d/x/r/k;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :cond_3
    iget-object v2, v0, Le/a/d/x/r/k$e;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v6, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/x/r/k;

    :try_start_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :cond_4
    iget-object v2, v0, Le/a/d/x/r/k$e;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v9, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    check-cast v9, Le/a/d/x/r/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, p0, Le/a/d/x/r/k;->e:Lq3/a/b3/c;

    .line 4
    iput-object p0, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/x/r/k$e;->h:Ljava/lang/Object;

    iput v7, v0, Le/a/d/x/r/k$e;->e:I

    invoke-interface {v2, v8, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, p0

    .line 5
    :goto_1
    :try_start_3
    iget-object p1, v9, Le/a/d/x/r/k;->c:Lio/agora/rtm/RtmChannel;

    if-eqz p1, :cond_7

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    invoke-interface {v2, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_7
    :try_start_4
    iput-object v9, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/x/r/k$e;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/d/x/r/k$e;->e:I

    .line 9
    invoke-virtual {v9, v0}, Le/a/d/x/r/k;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v6, v9

    .line 10
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object v6, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/x/r/k$e;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/d/x/r/k$e;->e:I

    .line 11
    invoke-virtual {v6, v0}, Le/a/d/x/r/k;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v5, v6

    .line 12
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object v2, v0, Le/a/d/x/r/k$e;->g:Ljava/lang/Object;

    iput-object v8, v0, Le/a/d/x/r/k$e;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/d/x/r/k$e;->e:I

    .line 13
    invoke-virtual {v5, v0}, Le/a/d/x/r/k;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object v0, v2

    .line 14
    :goto_4
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    move v3, v7

    goto :goto_5

    :cond_b
    move-object v2, v0

    :cond_c
    move-object v0, v2

    .line 15
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    invoke-interface {v0, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_6
    move-object v2, v0

    :goto_7
    invoke-interface {v2, v8}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public l(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v1, p2, Le/a/d/x/r/k$d;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/x/r/k$d;

    iget v2, v1, Le/a/d/x/r/k$d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/x/r/k$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/x/r/k$d;

    invoke-direct {v1, p0, p2}, Le/a/d/x/r/k$d;-><init>(Le/a/d/x/r/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/x/r/k$d;->d:Ljava/lang/Object;

    .line 1
    iget v2, v1, Le/a/d/x/r/k$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/d/x/r/k$d;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v2, v1, Le/a/d/x/r/k$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/x/r/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting attributes "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_4
    iput-object p0, v1, Le/a/d/x/r/k$d;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/x/r/k$d;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/d/x/r/k$d;->e:I

    .line 8
    new-instance p2, Lq3/a/o;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {p2, v2, v4}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 9
    invoke-virtual {p2}, Lq3/a/o;->z()V

    .line 10
    new-instance v2, Lio/agora/rtm/ChannelAttributeOptions;

    invoke-direct {v2, v4}, Lio/agora/rtm/ChannelAttributeOptions;-><init>(Z)V

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 13
    check-cast v7, Ljava/lang/String;

    .line 14
    invoke-static {v7}, Le/a/p5/s0/g;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {v5}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting attributes for keys: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    iget-object v6, p0, Le/a/d/x/r/k;->h:Lio/agora/rtm/RtmClient;

    .line 18
    iget-object v7, p0, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 19
    new-instance v8, Le/a/d/x/r/k$c;

    invoke-direct {v8, p2, p0, p1}, Le/a/d/x/r/k$c;-><init>(Lq3/a/n;Le/a/d/x/r/k;Ljava/util/Set;)V

    invoke-virtual {v6, v7, v5, v2, v8}, Lio/agora/rtm/RtmClient;->deleteChannelAttributesByKeys(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V

    .line 20
    invoke-virtual {p2}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_6

    const-string v2, "frame"

    .line 21
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    if-ne p2, v0, :cond_7

    return-object v0

    :cond_7
    move-object v2, p0

    .line 22
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete attributes is completed result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " keys "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p2, :cond_9

    const/4 p1, 0x0

    .line 24
    iput-object p1, v1, Le/a/d/x/r/k$d;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/x/r/k$d;->h:Ljava/lang/Object;

    iput v3, v1, Le/a/d/x/r/k$d;->e:I

    invoke-virtual {v2, v1}, Le/a/d/x/r/k;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    .line 25
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public m(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/x/r/k$i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/x/r/k$i;

    iget v1, v0, Le/a/d/x/r/k$i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/x/r/k$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/x/r/k$i;

    invoke-direct {v0, p0, p1}, Le/a/d/x/r/k$i;-><init>(Le/a/d/x/r/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/x/r/k$i;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/x/r/k$i;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/d/x/r/k$i;->i:Ljava/lang/Object;

    check-cast v1, Le/a/d/x/r/k$i;

    iget-object v1, v0, Le/a/d/x/r/k$i;->h:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v0, v0, Le/a/d/x/r/k$i;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/x/r/k;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/d/x/r/k$i;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v6, v0, Le/a/d/x/r/k$i;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/x/r/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/x/r/k;->e:Lq3/a/b3/c;

    .line 4
    iput-object p0, v0, Le/a/d/x/r/k$i;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/x/r/k$i;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/d/x/r/k$i;->e:I

    invoke-interface {p1, v4, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    .line 5
    :goto_1
    :try_start_1
    iput-object v6, v0, Le/a/d/x/r/k$i;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/x/r/k$i;->h:Ljava/lang/Object;

    iput-object v0, v0, Le/a/d/x/r/k$i;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/x/r/k$i;->e:I

    .line 6
    new-instance v2, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 7
    invoke-virtual {v2}, Lq3/a/o;->z()V

    .line 8
    iget-object v3, v6, Le/a/d/x/r/k;->c:Lio/agora/rtm/RtmChannel;

    if-nez v3, :cond_5

    .line 9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v2}, Lq3/a/o;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v3}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_5
    iget-object v3, v6, Le/a/d/x/r/k;->c:Lio/agora/rtm/RtmChannel;

    if-eqz v3, :cond_6

    .line 12
    new-instance v5, Le/a/d/x/r/k$h;

    invoke-direct {v5, v2, v6, v0}, Le/a/d/x/r/k$h;-><init>(Lq3/a/n;Le/a/d/x/r/k;Ls1/w/d;)V

    .line 13
    invoke-virtual {v3, v5}, Lio/agora/rtm/RtmChannel;->leave(Lio/agora/rtm/ResultCallback;)V

    .line 14
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    const-string v3, "frame"

    .line 15
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, p1

    move-object p1, v2

    .line 16
    :goto_3
    invoke-interface {v1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    :goto_4
    invoke-interface {v1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/a/d/x/r/j;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v0, p2

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v1, v0, Le/a/d/x/r/k$b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/d/x/r/k$b;

    iget v2, v1, Le/a/d/x/r/k$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/x/r/k$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/x/r/k$b;

    invoke-direct {v1, v6, v0}, Le/a/d/x/r/k$b;-><init>(Le/a/d/x/r/k;Ls1/w/d;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Le/a/d/x/r/k$b;->d:Ljava/lang/Object;

    .line 1
    iget v1, v8, Le/a/d/x/r/k$b;->e:I

    const/4 v9, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v9, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v1, v8, Le/a/d/x/r/k$b;->j:Ljava/lang/Object;

    check-cast v1, Lio/agora/rtm/ChannelAttributeOptions;

    iget-object v2, v8, Le/a/d/x/r/k$b;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v8, Le/a/d/x/r/k$b;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    iget-object v3, v8, Le/a/d/x/r/k$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/x/r/k;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding attributes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 7
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v5, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Le/a/d/x/r/j;

    .line 10
    new-instance v4, Lio/agora/rtm/RtmChannelAttribute;

    .line 11
    iget-object v10, v3, Le/a/d/x/r/j;->a:Ljava/lang/String;

    .line 12
    invoke-static {v10}, Le/a/p5/s0/g;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 13
    iget-object v3, v3, Le/a/d/x/r/j;->b:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v10, v3}, Lio/agora/rtm/RtmChannelAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    .line 16
    new-instance v11, Lio/agora/rtm/ChannelAttributeOptions;

    invoke-direct {v11, v2}, Lio/agora/rtm/ChannelAttributeOptions;-><init>(Z)V

    .line 17
    iput-object v6, v8, Le/a/d/x/r/k$b;->g:Ljava/lang/Object;

    iput-object v5, v8, Le/a/d/x/r/k$b;->h:Ljava/lang/Object;

    iput-object v10, v8, Le/a/d/x/r/k$b;->i:Ljava/lang/Object;

    iput-object v11, v8, Le/a/d/x/r/k$b;->j:Ljava/lang/Object;

    iput v2, v8, Le/a/d/x/r/k$b;->e:I

    .line 18
    new-instance v12, Lq3/a/o;

    invoke-static {v8}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v0

    invoke-direct {v12, v0, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 19
    invoke-virtual {v12}, Lq3/a/o;->z()V

    .line 20
    iget-object v13, v6, Le/a/d/x/r/k;->h:Lio/agora/rtm/RtmClient;

    .line 21
    iget-object v14, v6, Le/a/d/x/r/k;->f:Ljava/lang/String;

    .line 22
    new-instance v15, Le/a/d/x/r/k$a;

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Le/a/d/x/r/k$a;-><init>(Lq3/a/n;Le/a/d/x/r/k;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Ljava/util/Set;)V

    invoke-virtual {v13, v14, v10, v11, v15}, Lio/agora/rtm/RtmClient;->addOrUpdateChannelAttributes(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V

    .line 23
    invoke-virtual {v12}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_6

    const-string v1, "frame"

    .line 24
    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    if-ne v0, v7, :cond_7

    return-object v7

    :cond_7
    move-object v3, v6

    move-object v2, v10

    move-object v1, v11

    .line 25
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding attribute completed. Result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " attributes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " options "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 27
    iput-object v0, v8, Le/a/d/x/r/k$b;->g:Ljava/lang/Object;

    iput-object v0, v8, Le/a/d/x/r/k$b;->h:Ljava/lang/Object;

    iput-object v0, v8, Le/a/d/x/r/k$b;->i:Ljava/lang/Object;

    iput-object v0, v8, Le/a/d/x/r/k$b;->j:Ljava/lang/Object;

    iput v9, v8, Le/a/d/x/r/k$b;->e:I

    invoke-virtual {v3, v8}, Le/a/d/x/r/k;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_8

    return-object v7

    :cond_8
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    .line 28
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/r/k;->a:Le/a/d/c0/r;

    return-object v0
.end method
