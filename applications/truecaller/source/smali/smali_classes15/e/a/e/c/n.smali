.class public final synthetic Le/a/e/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/n;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Le/a/e/c/n;->a:Le/a/e/c/s1;

    .line 1
    iget-object v1, v0, Le/a/e/c/s1;->N1:Lcom/truecaller/data/entity/Contact;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->X()J

    move-result-wide v3

    .line 3
    iget-object v1, v0, Le/a/e/c/s1;->T0:Le/a/b0/q/l0;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Le/a/b0/q/l0;->b(JJ)Z

    move-result v1

    .line 4
    :goto_0
    new-instance v3, Le/a/q2/g$b;

    const-string v4, "DetailsViewPullToRefresh"

    invoke-direct {v3, v4}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v4, "SearchHappened"

    .line 5
    invoke-virtual {v3, v4, v1}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 6
    iget-object v4, v0, Le/a/e/c/s1;->E0:Le/a/j2;

    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    invoke-virtual {v3}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v3

    invoke-interface {v4, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v0, Le/a/e/c/s1;->G0:Ljava/lang/String;

    iget-object v2, v0, Le/a/e/c/s1;->H0:Ljava/lang/String;

    iget-object v3, v0, Le/a/e/c/s1;->I0:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Le/a/e/c/s1;->vB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, v0, Le/a/e/c/s1;->r0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_1
    return-void
.end method
