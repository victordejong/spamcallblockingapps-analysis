.class public final Le/a/w4/s/g0$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/g0;->Xj(Ljava/lang/String;)V
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
    c = "com.truecaller.search.global.GlobalSearchPresenterImpl$triggerMessagesSearch$1"
    f = "GlobalSearchPresenterImpl.kt"
    l = {
        0x1ce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/w4/s/g0;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/w4/s/g0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/g0$f;->f:Le/a/w4/s/g0;

    iput-object p2, p0, Le/a/w4/s/g0$f;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/w4/s/g0$f;

    iget-object v0, p0, Le/a/w4/s/g0$f;->f:Le/a/w4/s/g0;

    iget-object v1, p0, Le/a/w4/s/g0$f;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/w4/s/g0$f;-><init>(Le/a/w4/s/g0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/w4/s/g0$f;

    iget-object v0, p0, Le/a/w4/s/g0$f;->f:Le/a/w4/s/g0;

    iget-object v1, p0, Le/a/w4/s/g0$f;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/w4/s/g0$f;-><init>(Le/a/w4/s/g0;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/w4/s/g0$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/w4/s/g0$f;->e:I

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
    iget-object p1, p0, Le/a/w4/s/g0$f;->f:Le/a/w4/s/g0;

    .line 5
    iget-object p1, p1, Le/a/w4/s/g0;->k0:Le/a/a/c/y6;

    .line 6
    iget-object v1, p0, Le/a/w4/s/g0$f;->g:Ljava/lang/String;

    iput v2, p0, Le/a/w4/s/g0$f;->e:I

    .line 7
    iget-object p1, p1, Le/a/a/c/y6;->d:Le/a/a/g/w;

    const/16 v2, 0xc8

    invoke-interface {p1, v1, v2, p0}, Le/a/a/g/w;->v(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g/j0/x;

    .line 9
    iget-object v6, p0, Le/a/w4/s/g0$f;->f:Le/a/w4/s/g0;

    .line 10
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 11
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_2

    .line 12
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    new-instance v1, Ls1/k;

    invoke-interface {p1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    invoke-interface {p1}, Le/a/a/g/j0/x;->I0()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .line 16
    :goto_2
    new-instance v3, Le/a/w4/s/f0;

    const/4 v0, 0x0

    invoke-direct {v3, v6, p1, v0}, Le/a/w4/s/f0;-><init>(Le/a/w4/s/g0;Ljava/util/List;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 17
    invoke-virtual {v6, p1}, Le/a/w4/s/g0;->Oj(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, v6, Le/a/w4/s/g0;->v:Z

    .line 19
    iget-boolean v0, v6, Le/a/w4/s/g0;->w:Z

    if-eqz v0, :cond_5

    .line 20
    iput-boolean p1, v6, Le/a/w4/s/g0;->w:Z

    .line 21
    iget-object p1, v6, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {v6, p1}, Le/a/w4/s/g0;->Xj(Ljava/lang/String;)V

    .line 22
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
