.class public final Le/a/c/a/p/d/q/g;
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
    c = "com.truecaller.insights.ui.smartfeed.presentation.viewholders.UpcomingExpandSmartFeedViewHolder$loadAvatar$1"
    f = "UpcomingExpandSmartFeedViewHolder.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/p/d/q/h;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Le/a/b0/a/b/a;


# direct methods
.method public constructor <init>(Le/a/c/a/p/d/q/h;Ljava/lang/String;Le/a/b0/a/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/q/g;->f:Le/a/c/a/p/d/q/h;

    iput-object p2, p0, Le/a/c/a/p/d/q/g;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/c/a/p/d/q/g;->h:Le/a/b0/a/b/a;

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

    new-instance p1, Le/a/c/a/p/d/q/g;

    iget-object v0, p0, Le/a/c/a/p/d/q/g;->f:Le/a/c/a/p/d/q/h;

    iget-object v1, p0, Le/a/c/a/p/d/q/g;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/c/a/p/d/q/g;->h:Le/a/b0/a/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/a/p/d/q/g;-><init>(Le/a/c/a/p/d/q/h;Ljava/lang/String;Le/a/b0/a/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/p/d/q/g;

    iget-object v0, p0, Le/a/c/a/p/d/q/g;->f:Le/a/c/a/p/d/q/h;

    iget-object v1, p0, Le/a/c/a/p/d/q/g;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/c/a/p/d/q/g;->h:Le/a/b0/a/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/a/p/d/q/g;-><init>(Le/a/c/a/p/d/q/h;Ljava/lang/String;Le/a/b0/a/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/p/d/q/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/p/d/q/g;->e:I

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
    iget-object p1, p0, Le/a/c/a/p/d/q/g;->f:Le/a/c/a/p/d/q/h;

    .line 5
    iget-object p1, p1, Le/a/c/a/p/d/q/h;->j:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/c/a/p/d/q/g$a;

    invoke-direct {v1, p0, v2}, Le/a/c/a/p/d/q/g$a;-><init>(Le/a/c/a/p/d/q/g;Ls1/w/d;)V

    iput v3, p0, Le/a/c/a/p/d/q/g;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/b0/m/a/a;

    .line 8
    iget-object v0, p0, Le/a/c/a/p/d/q/g;->h:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Le/a/b0/a/b/a;->pk(Z)V

    .line 10
    iget-object v0, p0, Le/a/c/a/p/d/q/g;->h:Le/a/b0/a/b/a;

    iget-object v4, p0, Le/a/c/a/p/d/q/g;->f:Le/a/c/a/p/d/q/h;

    invoke-virtual {v4, p1}, Le/a/c/a/p/d/q/a;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v0, v4, v1, v5, v2}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Le/a/c/a/p/d/q/g;->f:Le/a/c/a/p/d/q/h;

    .line 12
    iget-object v0, v0, Le/a/c/a/p/d/q/h;->e:Ljava/util/Map;

    .line 13
    iget-object v2, p0, Le/a/c/a/p/d/q/g;->g:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Le/a/c/a/p/d/q/g;->f:Le/a/c/a/p/d/q/h;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v0, p1, Le/a/c/a/p/d/q/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 19
    iget-object v5, p1, Le/a/c/a/p/d/q/h;->e:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/m/a/a;

    if-eqz v2, :cond_3

    .line 20
    iget-object v5, v2, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    if-eqz v5, :cond_5

    .line 22
    iget-object v2, v2, Le/a/b0/m/a/a;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_5
    iget-object v2, v2, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_6
    iget-object p1, p1, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object p1, p1, Le/a/c/a/g/x0;->f:Landroid/widget/TextView;

    const-string v0, "binding.senders"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
