.class public final Le/a/a/d/a/k;
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
    c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$editImGroup$1"
    f = "NewImGroupPresenter.kt"
    l = {
        0xc5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/d/a/m;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/d/a/m;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a/k;->f:Le/a/a/d/a/m;

    iput-object p2, p0, Le/a/a/d/a/k;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/d/a/k;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/a/d/a/k;

    iget-object v0, p0, Le/a/a/d/a/k;->f:Le/a/a/d/a/m;

    iget-object v1, p0, Le/a/a/d/a/k;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/d/a/k;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/d/a/k;-><init>(Le/a/a/d/a/m;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/d/a/k;

    iget-object v0, p0, Le/a/a/d/a/k;->f:Le/a/a/d/a/m;

    iget-object v1, p0, Le/a/a/d/a/k;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/d/a/k;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/d/a/k;-><init>(Le/a/a/d/a/m;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/d/a/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/d/a/k;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Le/a/a/d/a/k;->f:Le/a/a/d/a/m;

    .line 5
    invoke-virtual {p1}, Le/a/a/d/a/m;->Vj()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Le/a/a/d/a/k;->f:Le/a/a/d/a/m;

    .line 7
    iget-object v1, p1, Le/a/a/d/a/m;->h:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 8
    iput v3, p0, Le/a/a/d/a/k;->e:I

    invoke-virtual {p1, v1, p0}, Le/a/a/d/a/m;->Tj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/a/d/a/k;->f:Le/a/a/d/a/m;

    .line 10
    iget-object v0, p1, Le/a/a/d/a/m;->h:Landroid/net/Uri;

    if-nez v0, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p1, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_5

    .line 12
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    .line 13
    :cond_5
    :goto_1
    iget-object p1, p0, Le/a/a/d/a/k;->f:Le/a/a/d/a/m;

    iget-object v0, p0, Le/a/a/d/a/k;->g:Ljava/lang/String;

    iget-object v1, p0, Le/a/a/d/a/k;->h:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Le/a/a/d/a/m;->l:Le/a/r2/f;

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/a/a/m;

    invoke-interface {v3, v0, v1, v2}, Le/a/a/k/a/a/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p1, Le/a/a/d/a/m;->k:Le/a/r2/j;

    new-instance v2, Le/a/a/d/a/j;

    invoke-direct {v2, p1}, Le/a/a/d/a/j;-><init>(Le/a/a/d/a/m;)V

    new-instance p1, Le/a/a/d/a/o;

    invoke-direct {p1, v2}, Le/a/a/d/a/o;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, p1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
