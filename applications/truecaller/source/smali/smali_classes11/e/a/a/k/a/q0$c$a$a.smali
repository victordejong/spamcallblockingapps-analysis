.class public final Le/a/a/k/a/q0$c$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/q0$c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onUserTypingEvent$1$1$expiryJob$1"
    f = "ImTypingManager.kt"
    l = {
        0x9c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/k/a/q0$c$a;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Le/a/a/k/a/q0$c$a;Ljava/util/Map;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/q0$c$a$a;->f:Le/a/a/k/a/q0$c$a;

    iput-object p2, p0, Le/a/a/k/a/q0$c$a$a;->g:Ljava/util/Map;

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

    new-instance p1, Le/a/a/k/a/q0$c$a$a;

    iget-object v0, p0, Le/a/a/k/a/q0$c$a$a;->f:Le/a/a/k/a/q0$c$a;

    iget-object v1, p0, Le/a/a/k/a/q0$c$a$a;->g:Ljava/util/Map;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/k/a/q0$c$a$a;-><init>(Le/a/a/k/a/q0$c$a;Ljava/util/Map;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/k/a/q0$c$a$a;

    iget-object v0, p0, Le/a/a/k/a/q0$c$a$a;->f:Le/a/a/k/a/q0$c$a;

    iget-object v1, p0, Le/a/a/k/a/q0$c$a$a;->g:Ljava/util/Map;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/k/a/q0$c$a$a;-><init>(Le/a/a/k/a/q0$c$a;Ljava/util/Map;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/k/a/q0$c$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/k/a/q0$c$a$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/a/k/a/q0$c$a$a;->f:Le/a/a/k/a/q0$c$a;

    iget-object p1, p1, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iget-object p1, p1, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    .line 5
    iget-wide v3, p1, Le/a/a/k/a/q0;->d:J

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    iput v2, p0, Le/a/a/k/a/q0$c$a$a;->e:I

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/k/a/q0$c$a$a;->g:Ljava/util/Map;

    iget-object v0, p0, Le/a/a/k/a/q0$c$a$a;->f:Le/a/a/k/a/q0$c$a;

    iget-object v0, v0, Le/a/a/k/a/q0$c$a;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Le/a/a/k/a/q0$c$a$a;->f:Le/a/a/k/a/q0$c$a;

    iget-object v0, p1, Le/a/a/k/a/q0$c$a;->f:Le/a/a/k/a/q0$c;

    iget-object v0, v0, Le/a/a/k/a/q0$c;->j:Le/a/a/k/a/q0;

    iget-object v1, p1, Le/a/a/k/a/q0$c$a;->h:Ljava/lang/String;

    iget-object p1, p1, Le/a/a/k/a/q0$c$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/k/a/q0$c$a$a;->g:Ljava/util/Map;

    invoke-static {v0, v1, p1, v2}, Le/a/a/k/a/q0;->h(Le/a/a/k/a/q0;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
