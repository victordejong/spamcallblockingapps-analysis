.class public final Le/a/v/a/a$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a$e;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a$e;


# direct methods
.method public constructor <init>(Le/a/v/a/a$e;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/a$e$b;->a:Le/a/v/a/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e$b;->a:Le/a/v/a/a$e;

    iget-object v0, v0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Le/a/v/a/a;->SA()Le/a/v/a/f;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/v/a/q;

    .line 2
    iget-object v0, v1, Le/a/v/a/q;->d:Le/a/v/a/s;

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->X()J

    move-result-wide v2

    .line 5
    iget-object v0, v1, Le/a/v/a/q;->u:Le/a/b0/q/l0;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Le/a/b0/q/l0;->b(JJ)Z

    move-result v0

    .line 6
    iget-object v2, v1, Le/a/v/a/q;->y:Le/a/v/a/z/a;

    .line 7
    iget-object v3, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v4, "SearchHappened"

    goto :goto_0

    :cond_0
    const-string v4, "SearchNotHappened"

    :goto_0
    const-string v5, "DetailsViewPullToRefresh"

    const-string v6, "action"

    .line 8
    invoke-static {v5, v6, v5, v4, v3}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v3

    .line 9
    iget-object v2, v2, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v3, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    if-eqz v0, :cond_1

    .line 10
    iget-object v2, v1, Le/a/v/a/q;->i:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/v/a/n;

    invoke-direct {v4, v1, v7}, Le/a/v/a/n;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/v/a/g;->E()V

    .line 12
    :cond_2
    :goto_1
    iget-object v0, p0, Le/a/v/a/a$e$b;->a:Le/a/v/a/a$e;

    iget-object v0, v0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 13
    invoke-virtual {v0}, Le/a/v/a/a;->OA()Le/a/v/a/y/g;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, v0, Le/a/v/a/y/g;->a:Le/a/v/a/y/a;

    if-eqz v0, :cond_3

    check-cast v0, Le/a/v/a/y/c;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Le/a/v/a/y/c;->Ij(Z)V

    goto :goto_2

    :cond_3
    const-string v0, "presenter"

    .line 16
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string v0, "detailsViewModel"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7
.end method
