.class public final Le/a/g/a/c/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/c/e;->Jj(Ljava/lang/String;I)V
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
    c = "com.truecaller.acs.ui.reply.AfterCallReplyPresenter$onSendReplyClicked$1"
    f = "AfterCallReplyPresenter.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/c/e;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/g/a/c/e;Ljava/lang/String;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/c/e$a;->f:Le/a/g/a/c/e;

    iput-object p2, p0, Le/a/g/a/c/e$a;->g:Ljava/lang/String;

    iput p3, p0, Le/a/g/a/c/e$a;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/c/e$a;

    iget-object v0, p0, Le/a/g/a/c/e$a;->f:Le/a/g/a/c/e;

    iget-object v1, p0, Le/a/g/a/c/e$a;->g:Ljava/lang/String;

    iget v2, p0, Le/a/g/a/c/e$a;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g/a/c/e$a;-><init>(Le/a/g/a/c/e;Ljava/lang/String;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/c/e$a;

    iget-object v0, p0, Le/a/g/a/c/e$a;->f:Le/a/g/a/c/e;

    iget-object v1, p0, Le/a/g/a/c/e$a;->g:Ljava/lang/String;

    iget v2, p0, Le/a/g/a/c/e$a;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g/a/c/e$a;-><init>(Le/a/g/a/c/e;Ljava/lang/String;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/c/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/c/e$a;->e:I

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
    iget-object p1, p0, Le/a/g/a/c/e$a;->f:Le/a/g/a/c/e;

    .line 5
    iget-object v1, p1, Le/a/g/a/c/e;->j:Le/a/g/j/y;

    .line 6
    iget-object v4, p0, Le/a/g/a/c/e$a;->g:Ljava/lang/String;

    .line 7
    iget-object v5, p1, Le/a/g/a/c/e;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v5, :cond_6

    .line 8
    iget-object v7, p1, Le/a/g/a/c/e;->f:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 9
    iget p1, p0, Le/a/g/a/c/e$a;->h:I

    iput v2, p0, Le/a/g/a/c/e$a;->e:I

    .line 10
    iget-object v3, v1, Le/a/g/j/y;->a:Le/a/a/l/e;

    .line 11
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x1

    move-object v9, p0

    .line 12
    invoke-virtual/range {v3 .. v9}, Le/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 13
    :cond_2
    :goto_0
    check-cast p1, Ls1/o;

    .line 14
    iget-object v0, p0, Le/a/g/a/c/e$a;->f:Le/a/g/a/c/e;

    .line 15
    iget-object v1, p1, Ls1/o;->a:Ljava/lang/Object;

    .line 16
    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 17
    :goto_1
    iget-object v1, p1, Ls1/o;->b:Ljava/lang/Object;

    .line 18
    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v6, v1

    goto :goto_2

    :cond_4
    move-wide v6, v2

    .line 19
    :goto_2
    iget-object p1, p1, Ls1/o;->c:Ljava/lang/Object;

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    iget-object v8, p0, Le/a/g/a/c/e$a;->g:Ljava/lang/String;

    move-wide v1, v4

    move-wide v3, v6

    move-object v5, p1

    move-object v6, v8

    .line 21
    invoke-virtual/range {v0 .. v6}, Le/a/g/a/c/e;->Kj(JJLjava/lang/Boolean;Ljava/lang/String;)V

    .line 22
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_5
    const-string p1, "analyticsContext"

    .line 23
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string p1, "phoneNumber"

    .line 24
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
