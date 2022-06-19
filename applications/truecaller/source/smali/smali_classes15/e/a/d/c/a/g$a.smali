.class public final Le/a/d/c/a/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/d/c0/j;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.ui.util.LogPriorityVoipCallEventImpl$listenToPeerUpdates$1$1"
    f = "LogPriorityVoipCallEvent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d/c/a/g;


# direct methods
.method public constructor <init>(Le/a/d/c/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/g$a;->f:Le/a/d/c/a/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c/a/g$a;

    iget-object v1, p0, Le/a/d/c/a/g$a;->f:Le/a/d/c/a/g;

    invoke-direct {v0, v1, p2}, Le/a/d/c/a/g$a;-><init>(Le/a/d/c/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/a/g$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c/a/g$a;

    iget-object v1, p0, Le/a/d/c/a/g$a;->f:Le/a/d/c/a/g;

    invoke-direct {v0, v1, p2}, Le/a/d/c/a/g$a;-><init>(Le/a/d/c/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/a/g$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c/a/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/c/a/g$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/j;

    .line 2
    instance-of v0, p1, Le/a/d/c0/j$b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/a/d/c/a/g$a;->f:Le/a/d/c/a/g;

    iget-object v1, v0, Le/a/d/c/a/g;->f:Le/a/d/c/a/h;

    check-cast p1, Le/a/d/c0/j$b;

    .line 3
    iget-object p1, p1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    .line 4
    iget v0, v0, Le/a/d/c/a/g;->h:I

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v1, Le/a/d/c/a/h;->b:Ljava/util/Set;

    .line 7
    iget-object v3, p1, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 8
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p1, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 10
    iget-boolean v2, v2, Lcom/truecaller/voip/VoipUserBadge;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 11
    monitor-exit v1

    goto :goto_5

    .line 12
    :cond_1
    :try_start_1
    iget-object v2, v1, Le/a/d/c/a/h;->c:Le/a/d/c0/z1/i;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Le/a/d/c0/z1/i;->b()Lcom/truecaller/voip/groupcall/call/CallDirection;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    .line 13
    :goto_2
    monitor-exit v1

    goto :goto_5

    .line 14
    :cond_4
    :try_start_2
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    goto :goto_3

    .line 15
    :cond_5
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    :goto_3
    if-ne v0, v3, :cond_6

    .line 16
    sget-object v0, Lcom/truecaller/voip/util/VoipCleverTapAction;->VOIP_CALL:Lcom/truecaller/voip/util/VoipCleverTapAction;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/truecaller/voip/util/VoipCleverTapAction;->GROUP_VOIP_CALL:Lcom/truecaller/voip/util/VoipCleverTapAction;

    .line 17
    :goto_4
    iget-object v3, v1, Le/a/d/c/a/h;->b:Ljava/util/Set;

    .line 18
    iget-object p1, p1, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 19
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, v1, Le/a/d/c/a/h;->d:Le/a/d/c0/f0;

    invoke-interface {p1, v2, v0}, Le/a/d/c0/f0;->i(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Lcom/truecaller/voip/util/VoipCleverTapAction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 22
    :cond_7
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
