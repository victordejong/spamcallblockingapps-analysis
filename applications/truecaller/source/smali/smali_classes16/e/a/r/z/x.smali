.class public final Le/a/r/z/x;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$triggerAttestation$1"
    f = "VerificationPresenter.kt"
    l = {
        0x2c1,
        0x2c4,
        0x2c5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/r/z/s;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:J


# direct methods
.method public constructor <init>(Le/a/r/z/s;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/x;->h:Le/a/r/z/s;

    iput-object p2, p0, Le/a/r/z/x;->i:Ljava/lang/String;

    iput-object p3, p0, Le/a/r/z/x;->j:Ljava/lang/String;

    iput-wide p4, p0, Le/a/r/z/x;->k:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/z/x;

    iget-object v1, p0, Le/a/r/z/x;->h:Le/a/r/z/s;

    iget-object v2, p0, Le/a/r/z/x;->i:Ljava/lang/String;

    iget-object v3, p0, Le/a/r/z/x;->j:Ljava/lang/String;

    iget-wide v4, p0, Le/a/r/z/x;->k:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/r/z/x;-><init>(Le/a/r/z/s;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/r/z/x;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/r/z/x;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/z/x;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/z/x;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/r/z/x;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v3, p0, Le/a/r/z/x;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/z/x;->h:Le/a/r/z/s;

    .line 5
    iget-object p1, p1, Le/a/r/z/s;->A:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/r/z/x$a;

    invoke-direct {v1, p0, v5}, Le/a/r/z/x$a;-><init>(Le/a/r/z/x;Ls1/w/d;)V

    iput v4, p0, Le/a/r/z/x;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iget-object p1, p0, Le/a/r/z/x;->h:Le/a/r/z/s;

    .line 8
    iget-object p1, p1, Le/a/r/z/s;->h0:Le/a/v2/s;

    .line 9
    iget-object v8, p0, Le/a/r/z/x;->i:Ljava/lang/String;

    iget-object v9, p0, Le/a/r/z/x;->j:Ljava/lang/String;

    iget-wide v10, p0, Le/a/r/z/x;->k:J

    iput-object v1, p0, Le/a/r/z/x;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/r/z/x;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/r/z/x;->g:I

    move-object v7, p1

    check-cast v7, Le/a/v2/u;

    .line 10
    iget-object p1, v7, Le/a/v2/u;->f:Ls1/w/f;

    new-instance v3, Le/a/v2/t;

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Le/a/v2/t;-><init>(Le/a/v2/u;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)V

    invoke-static {p1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, v1

    .line 11
    :goto_1
    check-cast p1, Le/a/v2/l;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Le/a/r/z/x;->h:Le/a/r/z/s;

    .line 13
    iget-object p1, p1, Le/a/r/z/s;->A:Ls1/w/f;

    .line 14
    new-instance v1, Le/a/r/z/x$b;

    invoke-direct {v1, p0, v3, v5}, Le/a/r/z/x$b;-><init>(Le/a/r/z/x;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v5, p0, Le/a/r/z/x;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/r/z/x;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/r/z/x;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 15
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
