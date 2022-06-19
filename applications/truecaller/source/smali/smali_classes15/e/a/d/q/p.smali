.class public final Le/a/d/q/p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ls1/k<",
        "+",
        "Le/a/d/v/h;",
        "+",
        "Le/a/d/v/a;",
        ">;>;",
        "Le/a/d/v/f$a;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$setStateFromGroupCall$$inlined$flatMapLatest$1"
    f = "VoipCallConnection.kt"
    l = {
        0xdb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/d/q/p;

    invoke-direct {v0, p3}, Le/a/d/q/p;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/q/p;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/q/p;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/q/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/q/p;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

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

    iget-object p1, p0, Le/a/d/q/p;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v2, p0, Le/a/d/q/p;->f:Ljava/lang/Object;

    .line 4
    check-cast v2, Le/a/d/v/f$a;

    .line 5
    iget-object v2, v2, Le/a/d/v/f$a;->a:Le/a/d/v/b;

    .line 6
    invoke-interface {v2}, Le/a/d/v/b;->getState()Lq3/a/x2/i1;

    move-result-object v4

    invoke-interface {v2}, Le/a/d/v/k/a;->b()Lq3/a/x2/i1;

    move-result-object v2

    new-instance v5, Le/a/d/q/p$a;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Le/a/d/q/p$a;-><init>(Ls1/w/d;)V

    .line 7
    iput v3, p0, Le/a/d/q/p;->g:I

    const/4 v7, 0x2

    new-array v7, v7, [Lq3/a/x2/f;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    aput-object v2, v7, v3

    .line 8
    sget-object v2, Lq3/a/x2/y0;->b:Lq3/a/x2/y0;

    .line 9
    new-instance v3, Lq3/a/x2/x0;

    invoke-direct {v3, v5, v6}, Lq3/a/x2/x0;-><init>(Ls1/z/b/q;Ls1/w/d;)V

    invoke-static {p1, v7, v2, v3, p0}, Ls1/a/a/a/v0/f/d;->h0(Lq3/a/x2/g;[Lq3/a/x2/f;Ls1/z/b/a;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
