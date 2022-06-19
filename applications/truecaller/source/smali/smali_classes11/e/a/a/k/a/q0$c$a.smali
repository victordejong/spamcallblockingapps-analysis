.class public final Le/a/a/k/a/q0$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/q0$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onUserTypingEvent$1$1"
    f = "ImTypingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/a/k/a/q0$c;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/k/a/q0$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iput-object p2, p0, Le/a/a/k/a/q0$c$a;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/k/a/q0$c$a;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/k/a/q0$c$a;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance v0, Le/a/a/k/a/q0$c$a;

    iget-object v2, p0, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iget-object v3, p0, Le/a/a/k/a/q0$c$a;->g:Ljava/lang/String;

    iget-object v4, p0, Le/a/a/k/a/q0$c$a;->h:Ljava/lang/String;

    iget-object v5, p0, Le/a/a/k/a/q0$c$a;->i:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/q0$c$a;-><init>(Le/a/a/k/a/q0$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/k/a/q0$c$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/k/a/q0$c$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/q0$c$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/k/a/q0$c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/k/a/q0$c$a;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lq3/a/i0;

    .line 2
    iget-object p1, p0, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iget-object p1, p1, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    .line 3
    iget-object p1, p1, Le/a/a/k/a/q0;->c:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Le/a/a/k/a/q0$c$a;->g:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    move-object p1, v2

    check-cast p1, Ljava/util/Map;

    .line 9
    iget-object v1, p0, Le/a/a/k/a/q0$c$a;->h:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, v1, Le/a/a/k/a/a2;->c:Lq3/a/p1;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 11
    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v1, p0, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iget-object v1, v1, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    .line 13
    iget-object v1, v1, Le/a/a/k/a/q0;->h:Ls1/w/f;

    const/4 v3, 0x0

    .line 14
    new-instance v4, Le/a/a/k/a/q0$c$a$a;

    invoke-direct {v4, p0, p1, v2}, Le/a/a/k/a/q0$c$a$a;-><init>(Le/a/a/k/a/q0$c$a;Ljava/util/Map;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    .line 15
    iget-object v1, p0, Le/a/a/k/a/q0$c$a;->h:Ljava/lang/String;

    new-instance v2, Le/a/a/k/a/a2;

    iget-object v3, p0, Le/a/a/k/a/q0$c$a;->i:Ljava/lang/String;

    iget-object v4, p0, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iget-object v4, v4, Le/a/a/k/a/q0$c;->k:Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getKind()Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;

    move-result-object v4

    const-string v5, "event.kind"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v0}, Le/a/a/k/a/a2;-><init>(Ljava/lang/String;Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;Lq3/a/p1;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iget-object v0, v0, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    iget-object v1, p0, Le/a/a/k/a/q0$c$a;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/k/a/q0$c$a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Le/a/a/k/a/q0;->h(Le/a/a/k/a/q0;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
