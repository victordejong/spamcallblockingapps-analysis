.class public final Le/a/f/a/a/l;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/String;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$maybeSubscribeToMidCallReasonChanges$2"
    f = "IncomingCallPresenter.kt"
    l = {
        0x104,
        0x109,
        0x10b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/a/i;

.field public final synthetic h:Le/a/f/a/g;


# direct methods
.method public constructor <init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/l;->g:Le/a/f/a/a/i;

    iput-object p2, p0, Le/a/f/a/a/l;->h:Le/a/f/a/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/f/a/a/l;

    iget-object v1, p0, Le/a/f/a/a/l;->g:Le/a/f/a/a/i;

    iget-object v2, p0, Le/a/f/a/a/l;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, p2}, Le/a/f/a/a/l;-><init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/a/l;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/a/l;

    iget-object v1, p0, Le/a/f/a/a/l;->g:Le/a/f/a/a/i;

    iget-object v2, p0, Le/a/f/a/a/l;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, p2}, Le/a/f/a/a/l;-><init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/a/l;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/a/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/a/l;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/a/l;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    .line 7
    iget-object p1, p0, Le/a/f/a/a/l;->g:Le/a/f/a/a/i;

    iget-object v1, p0, Le/a/f/a/a/l;->h:Le/a/f/a/g;

    iput v4, p0, Le/a/f/a/a/l;->f:I

    .line 8
    invoke-virtual {p1, v1, p0}, Le/a/f/a/f;->Kj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 9
    :cond_6
    :goto_3
    iget-object v4, p0, Le/a/f/a/a/l;->g:Le/a/f/a/a/i;

    .line 10
    iget-object v5, p0, Le/a/f/a/a/l;->h:Le/a/f/a/g;

    .line 11
    iget-boolean v6, v4, Le/a/f/a/a/i;->m:Z

    .line 12
    iget-boolean v7, v4, Le/a/f/a/a/i;->n:Z

    const/4 v8, 0x0

    .line 13
    iput v3, p0, Le/a/f/a/a/l;->f:I

    move-object v9, p0

    .line 14
    invoke-virtual/range {v4 .. v9}, Le/a/f/a/f;->Mj(Le/a/f/a/g;ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 15
    :cond_7
    iget-object v1, p0, Le/a/f/a/a/l;->g:Le/a/f/a/a/i;

    iget-object p1, p0, Le/a/f/a/a/l;->h:Le/a/f/a/g;

    .line 16
    iget-boolean v3, v1, Le/a/f/a/a/i;->m:Z

    .line 17
    iget-boolean v4, v1, Le/a/f/a/a/i;->n:Z

    const/4 v5, 0x0

    .line 18
    iput v2, p0, Le/a/f/a/a/l;->f:I

    move-object v2, p1

    move-object v6, p0

    .line 19
    invoke-virtual/range {v1 .. v6}, Le/a/f/a/f;->Mj(Le/a/f/a/g;ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 20
    :cond_8
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
