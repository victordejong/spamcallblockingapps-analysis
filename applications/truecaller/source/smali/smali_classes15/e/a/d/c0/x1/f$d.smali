.class public final Le/a/d/c0/x1/f$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f;->h()Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/x<",
        "-",
        "Le/a/d/c0/x1/b;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$audioStatesFlow$1"
    f = "VoipAudioUtil.kt"
    l = {
        0x14a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/x1/f;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

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

    new-instance v0, Le/a/d/c0/x1/f$d;

    iget-object v1, p0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    invoke-direct {v0, v1, p2}, Le/a/d/c0/x1/f$d;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c0/x1/f$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c0/x1/f$d;

    iget-object v1, p0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    invoke-direct {v0, v1, p2}, Le/a/d/c0/x1/f$d;-><init>(Le/a/d/c0/x1/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c0/x1/f$d;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c0/x1/f$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/x1/f$d;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    iget-object p1, p0, Le/a/d/c0/x1/f$d;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/x;

    .line 4
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    new-instance v4, Le/a/d/c0/x1/f$d$d;

    invoke-direct {v4, p1, v1}, Le/a/d/c0/x1/f$d$d;-><init>(Lq3/a/w2/x;Ls1/z/c/c0;)V

    .line 6
    invoke-static {v3}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v5

    .line 7
    iget-object v6, p0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    .line 8
    iget-object v6, v6, Le/a/d/c0/x1/f;->l:Le/a/d/q/v;

    .line 9
    new-instance v7, Le/a/d/c0/x1/f$d$e;

    invoke-direct {v7, p0, v4, v5}, Le/a/d/c0/x1/f$d$e;-><init>(Le/a/d/c0/x1/f$d;Ls1/z/b/l;Lq3/a/x2/a1;)V

    invoke-interface {v6, v7}, Le/a/d/q/v;->a(Ls1/z/b/l;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    iget-object v6, p0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    .line 11
    iget-object v6, v6, Le/a/d/c0/x1/f;->a:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/p5/r0/b;

    .line 12
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "systemAudioState"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v7, Le/a/p5/r0/c;

    invoke-direct {v7, v6, v5, v3}, Le/a/p5/r0/c;-><init>(Le/a/p5/r0/b;Lq3/a/x2/i1;Ls1/w/d;)V

    invoke-static {v7}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object v5

    .line 14
    new-instance v6, Le/a/d/c0/x1/f$d$a;

    invoke-direct {v6, v1, v4, v3}, Le/a/d/c0/x1/f$d$a;-><init>(Ls1/z/c/c0;Ls1/z/b/l;Ls1/w/d;)V

    .line 15
    new-instance v1, Lq3/a/x2/u0;

    invoke-direct {v1, v5, v6}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 16
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    new-instance v3, Le/a/d/c0/x1/f$d$b;

    invoke-direct {v3, p0, v4}, Le/a/d/c0/x1/f$d$b;-><init>(Le/a/d/c0/x1/f$d;Ls1/z/b/l;)V

    .line 18
    iput-object v3, v1, Le/a/d/c0/x1/f;->e:Ls1/z/b/a;

    .line 19
    iget-object v1, p0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    invoke-static {v1}, Le/a/d/c0/x1/f;->k(Le/a/d/c0/x1/f;)Le/a/d/c0/x1/b;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/d/c0/x1/f$d$d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_0
    new-instance v1, Le/a/d/c0/x1/f$d$c;

    invoke-direct {v1, p0}, Le/a/d/c0/x1/f$d$c;-><init>(Le/a/d/c0/x1/f$d;)V

    iput v2, p0, Le/a/d/c0/x1/f$d;->f:I

    invoke-static {p1, v1, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 21
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
