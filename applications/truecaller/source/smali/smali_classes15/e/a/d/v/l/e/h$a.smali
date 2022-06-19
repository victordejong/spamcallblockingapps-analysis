.class public final Le/a/d/v/l/e/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/h;->e(Le/a/d/v/l/c$b;)Lq3/a/p1;
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
    c = "com.truecaller.voip.groupcall.call.action.EndCallImpl$end$1"
    f = "EndCall.kt"
    l = {
        0x18,
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/v/l/e/h;

.field public final synthetic i:Le/a/d/v/l/c$b;


# direct methods
.method public constructor <init>(Le/a/d/v/l/e/h;Le/a/d/v/l/c$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/l/e/h$a;->h:Le/a/d/v/l/e/h;

    iput-object p2, p0, Le/a/d/v/l/e/h$a;->i:Le/a/d/v/l/c$b;

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

    new-instance p1, Le/a/d/v/l/e/h$a;

    iget-object v0, p0, Le/a/d/v/l/e/h$a;->h:Le/a/d/v/l/e/h;

    iget-object v1, p0, Le/a/d/v/l/e/h$a;->i:Le/a/d/v/l/c$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/l/e/h$a;-><init>(Le/a/d/v/l/e/h;Le/a/d/v/l/c$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/l/e/h$a;

    iget-object v0, p0, Le/a/d/v/l/e/h$a;->h:Le/a/d/v/l/e/h;

    iget-object v1, p0, Le/a/d/v/l/e/h$a;->i:Le/a/d/v/l/c$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/v/l/e/h$a;-><init>(Le/a/d/v/l/e/h;Le/a/d/v/l/c$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/l/e/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/l/e/h$a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/d/v/l/e/h$a;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    iget-object v1, p0, Le/a/d/v/l/e/h$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/r;

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
    iget-object p1, p0, Le/a/d/v/l/e/h$a;->h:Le/a/d/v/l/e/h;

    .line 5
    iget-object p1, p1, Le/a/d/v/l/e/h;->a:Lq3/a/i0;

    .line 6
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    sget v1, Lq3/a/p1;->e0:I

    sget-object v1, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    check-cast p1, Lq3/a/p1;

    if-eqz p1, :cond_3

    iput v4, p0, Le/a/d/v/l/e/h$a;->g:I

    invoke-static {p1, p0}, Ls1/a/a/a/v0/f/d;->V(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/d/v/l/e/h$a;->h:Le/a/d/v/l/e/h;

    .line 8
    iget-object v1, p1, Le/a/d/v/l/e/h;->b:Le/a/d/v/l/d;

    .line 9
    iget-object p1, v1, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 10
    iput-object v1, p0, Le/a/d/v/l/e/h$a;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/v/l/e/h$a;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/l/e/h$a;->g:I

    invoke-interface {p1, v2, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 11
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 12
    iget-object v1, p0, Le/a/d/v/l/e/h$a;->h:Le/a/d/v/l/e/h;

    .line 13
    iget-object v1, v1, Le/a/d/v/l/e/h;->b:Le/a/d/v/l/d;

    .line 14
    invoke-virtual {v1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/l/c;

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    instance-of v1, v1, Le/a/d/v/l/c$b;

    if-eqz v1, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ending call with state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/d/v/l/e/h$a;->i:Le/a/d/v/l/c$b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    iget-object v1, p0, Le/a/d/v/l/e/h$a;->i:Le/a/d/v/l/c$b;

    invoke-interface {p1, v1}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 19
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0, v2}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
