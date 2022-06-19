.class public final Le/a/d/q/w$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/q/w;->h(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.callconnection.VoipCallConnectionManagerImpl$waitUntilConnectionCreated$connectionCreated$1"
    f = "VoipCallConnectionManager.kt"
    l = {
        0x104
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/q/w;


# direct methods
.method public constructor <init>(Le/a/d/q/w;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/q/w$c;->g:Le/a/d/q/w;

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

    new-instance p1, Le/a/d/q/w$c;

    iget-object v0, p0, Le/a/d/q/w$c;->g:Le/a/d/q/w;

    invoke-direct {p1, v0, p2}, Le/a/d/q/w$c;-><init>(Le/a/d/q/w;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/q/w$c;

    iget-object v0, p0, Le/a/d/q/w$c;->g:Le/a/d/q/w;

    invoke-direct {p1, v0, p2}, Le/a/d/q/w$c;-><init>(Le/a/d/q/w;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/q/w$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/q/w$c;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/d/q/w$c;->e:Ljava/lang/Object;

    check-cast v1, Le/a/d/q/w$c;

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

    .line 4
    iput-object p0, p0, Le/a/d/q/w$c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/q/w$c;->f:I

    .line 5
    new-instance p1, Lq3/a/o;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 6
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 7
    iget-object v2, p0, Le/a/d/q/w$c;->g:Le/a/d/q/w;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Le/a/d/q/w$c;->g:Le/a/d/q/w;

    .line 9
    iget-object v4, v3, Le/a/d/q/w;->b:Le/a/d/q/i;

    if-eqz v4, :cond_2

    .line 10
    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    iput-object p1, v3, Le/a/d/q/w;->d:Lq3/a/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    monitor-exit v2

    .line 13
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    const-string v2, "frame"

    .line 14
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v2

    throw p1
.end method
