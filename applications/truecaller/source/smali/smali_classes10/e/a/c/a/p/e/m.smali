.class public final Le/a/c/a/p/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/m;->a:Le/a/c/a/p/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/c/a/p/e/m;->a:Le/a/c/a/p/e/f;

    .line 2
    iget-object v0, p1, Le/a/c/a/p/e/f;->g:Le/a/c/b/h;

    const-string v1, "permissionHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Le/a/c/b/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p1, Le/a/c/a/p/e/f;->g:Le/a/c/b/h;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/c/b/h;->h()Z

    move-result v0

    const-string v3, "grant_permission"

    const-string v4, "view"

    const-string v5, "eventCategory"

    if-nez v0, :cond_4

    iget-object v0, p1, Le/a/c/a/p/e/f;->g:Le/a/c/b/h;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/c/b/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    const-string v1, "default_sms"

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1, v4, v3}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Le/a/c/a/p/e/f;->h:Le/a/c/h/f;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Le/a/c/a/p/e/c;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v3, "context ?: return"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/c/h/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 8
    iget-object p1, p1, Le/a/c/a/p/e/f;->k:Ln3/a/e/b;

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1, v0, v2}, Ln3/a/e/b;->a(Ljava/lang/Object;Ln3/k/a/c;)V

    goto :goto_1

    :cond_2
    const-string p1, "insightsSmsIntents"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_4
    :goto_0
    invoke-virtual {p1}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    const-string v6, "read_sms"

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v6, v4, v3}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Le/a/c/a/p/e/f;->l:Ln3/a/e/b;

    if-eqz v0, :cond_6

    iget-object v3, p1, Le/a/c/a/p/e/f;->g:Le/a/c/b/h;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Le/a/c/b/h;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p1, v1, v0}, Le/a/c/b/h;->f(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Ln3/a/e/b;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    return-void

    .line 16
    :cond_7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_8
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
