.class public final Le/a/k/b/a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/b/a;->SA()Lq3/a/p1;
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
    c = "com.truecaller.videocallerid.debug.CachedVideosDebugDialog$populateVideoList$1"
    f = "CachedVideosDebugDialog.kt"
    l = {
        0x49,
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k/b/a;


# direct methods
.method public constructor <init>(Le/a/k/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

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

    new-instance p1, Le/a/k/b/a$a;

    iget-object v0, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    invoke-direct {p1, v0, p2}, Le/a/k/b/a$a;-><init>(Le/a/k/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/b/a$a;

    iget-object v0, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    invoke-direct {p1, v0, p2}, Le/a/k/b/a$a;-><init>(Le/a/k/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/b/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k/b/a$a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v1, p0, Le/a/k/b/a$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

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
    iget-object p1, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    invoke-virtual {p1}, Le/a/k/b/a;->RA()Le/a/k/c/q;

    move-result-object p1

    iput v4, p0, Le/a/k/b/a$a;->f:I

    invoke-interface {p1, p0}, Le/a/k/c/q;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 6
    iget-object v2, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    .line 7
    iget-object v2, v2, Le/a/k/b/a;->i:Le/a/k/n/f/d;

    if-eqz v2, :cond_a

    .line 8
    iput-object p1, p0, Le/a/k/b/a$a;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/k/b/a$a;->f:I

    check-cast v2, Le/a/k/n/f/f;

    invoke-virtual {v2, p0}, Le/a/k/n/f/f;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v1, p1

    move-object p1, v2

    .line 9
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video list "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    .line 12
    iget-object v5, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    .line 13
    sget-object v6, Le/a/k/b/a;->k:[Ls1/a/l;

    .line 14
    invoke-virtual {v5}, Le/a/k/b/a;->QA()Le/a/k/m/g;

    move-result-object v5

    .line 15
    iget-object v5, v5, Le/a/k/m/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v6, "binding.cachedVideoList"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 16
    iget-object v5, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    .line 17
    invoke-virtual {v5}, Le/a/k/b/a;->QA()Le/a/k/m/g;

    move-result-object v5

    .line 18
    iget-object v5, v5, Le/a/k/m/g;->d:Landroid/widget/TextView;

    const-string v7, "binding.noVideoTextView"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v7, v2, 0x1

    invoke-static {v5, v7}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 19
    iget-object v5, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    .line 20
    invoke-virtual {v5}, Le/a/k/b/a;->QA()Le/a/k/m/g;

    move-result-object v5

    .line 21
    iget-object v5, v5, Le/a/k/m/g;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v7, "binding.clearCacheButton"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-nez v2, :cond_5

    return-object v0

    .line 22
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 24
    check-cast v5, Le/a/k/c/g;

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/a/k/l/b;

    .line 26
    iget-object v9, v9, Le/a/k/l/b;->e:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 27
    iget-object v9, v9, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    .line 28
    iget-object v10, v5, Le/a/k/c/g;->a:Ljava/lang/String;

    .line 29
    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 30
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 31
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_7
    move-object v8, v3

    :goto_3
    check-cast v8, Le/a/k/l/b;

    .line 32
    new-instance v7, Le/a/k/b/n;

    if-eqz v8, :cond_8

    .line 33
    iget-object v8, v8, Le/a/k/l/b;->b:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move-object v8, v3

    .line 34
    :goto_4
    iget-object v9, v5, Le/a/k/c/g;->a:Ljava/lang/String;

    .line 35
    invoke-static {v9}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v4

    .line 36
    invoke-direct {v7, v8, v5, v9}, Le/a/k/b/n;-><init>(Ljava/lang/String;Le/a/k/c/g;Z)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_9
    iget-object p1, p0, Le/a/k/b/a$a;->g:Le/a/k/b/a;

    .line 38
    invoke-virtual {p1}, Le/a/k/b/a;->QA()Le/a/k/m/g;

    move-result-object p1

    .line 39
    iget-object p1, p1, Le/a/k/m/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/a/k/b/m;

    .line 40
    new-instance v3, Le/a/k/b/a$a$a;

    const/4 v5, 0x0

    invoke-direct {v3, v5, p0}, Le/a/k/b/a$a$a;-><init>(ILjava/lang/Object;)V

    .line 41
    new-instance v5, Le/a/k/b/a$a$a;

    invoke-direct {v5, v4, p0}, Le/a/k/b/a$a$a;-><init>(ILjava/lang/Object;)V

    .line 42
    invoke-direct {v1, v2, v3, v5}, Le/a/k/b/m;-><init>(Ljava/util/List;Ls1/z/b/l;Ls1/z/b/l;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-object v0

    :cond_a
    const-string p1, "incomingVideoRepository"

    .line 43
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
