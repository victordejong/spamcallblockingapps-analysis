.class public final Le/a/w4/s/g0$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/g0;->Wj(Ljava/lang/String;)V
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
    c = "com.truecaller.search.global.GlobalSearchPresenterImpl$triggerGroupsSearch$1"
    f = "GlobalSearchPresenterImpl.kt"
    l = {
        0x19e
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

    iput-object p1, p0, Le/a/w4/s/g0$e;->f:Le/a/w4/s/g0;

    iput-object p2, p0, Le/a/w4/s/g0$e;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/w4/s/g0$e;

    iget-object v0, p0, Le/a/w4/s/g0$e;->f:Le/a/w4/s/g0;

    iget-object v1, p0, Le/a/w4/s/g0$e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/w4/s/g0$e;-><init>(Le/a/w4/s/g0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/w4/s/g0$e;

    iget-object v0, p0, Le/a/w4/s/g0$e;->f:Le/a/w4/s/g0;

    iget-object v1, p0, Le/a/w4/s/g0$e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/w4/s/g0$e;-><init>(Le/a/w4/s/g0;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/w4/s/g0$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/w4/s/g0$e;->e:I

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
    iget-object p1, p0, Le/a/w4/s/g0$e;->f:Le/a/w4/s/g0;

    .line 5
    iget-object p1, p1, Le/a/w4/s/g0;->k0:Le/a/a/c/y6;

    .line 6
    iget-object v1, p0, Le/a/w4/s/g0$e;->g:Ljava/lang/String;

    iput v2, p0, Le/a/w4/s/g0$e;->e:I

    .line 7
    iget-object p1, p1, Le/a/a/c/y6;->d:Le/a/a/g/w;

    .line 8
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    invoke-interface {p1, v1, v2, p0}, Le/a/a/g/w;->e(Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g/j0/d;

    .line 11
    iget-object v0, p0, Le/a/w4/s/g0$e;->f:Le/a/w4/s/g0;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 13
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_2

    .line 14
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-interface {p1}, Le/a/a/g/j0/d;->Q1()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v1

    .line 18
    :goto_2
    invoke-virtual {v0, p1}, Le/a/w4/s/g0;->Nj(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, v0, Le/a/w4/s/g0;->t:Z

    .line 20
    iget-boolean v1, v0, Le/a/w4/s/g0;->u:Z

    if-eqz v1, :cond_5

    .line 21
    iput-boolean p1, v0, Le/a/w4/s/g0;->u:Z

    .line 22
    iget-object p1, v0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Le/a/w4/s/g0;->Wj(Ljava/lang/String;)V

    .line 23
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
