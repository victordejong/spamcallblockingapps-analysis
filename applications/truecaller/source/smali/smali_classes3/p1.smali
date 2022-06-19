.class public final Lp1;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lp1;->b:I

    iput-object p2, p0, Lp1;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lp1;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    .line 1
    iget-object v0, p0, Lp1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-virtual {v0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->qa()Le/a/e/b/j/h;

    move-result-object v0

    check-cast v0, Le/a/e/b/j/l;

    .line 2
    iget-object v3, v0, Le/a/e/b/j/l;->g:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->q()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 3
    iget-object v3, v0, Le/a/e/b/j/l;->g:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Le/a/e/b/j/l;->g:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->r()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    iget-object v2, v0, Le/a/e/b/j/l;->q:Le/a/h5/m;

    new-instance v3, Le/a/e/b/j/j;

    invoke-direct {v3, v0}, Le/a/e/b/j/j;-><init>(Le/a/e/b/j/l;)V

    invoke-interface {v2, v3}, Le/a/h5/m;->b(Ls1/z/b/l;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Le/a/e/b/j/l;->Ij()V

    move v1, v2

    .line 6
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_3
    iget-object v0, p0, Lp1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-virtual {v0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->qa()Le/a/e/b/j/h;

    move-result-object v0

    check-cast v0, Le/a/e/b/j/l;

    .line 9
    iget-object v3, v0, Le/a/e/b/j/l;->g:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/j/i;

    if-eqz v1, :cond_4

    invoke-interface {v1, v2}, Le/a/e/b/j/i;->g2(Z)V

    .line 11
    :cond_4
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;->STYLE_FULLSCREEN:Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;

    const-string v4, "settingsCallerId"

    invoke-virtual {v1, v4, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->d(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    iget-object v3, v0, Le/a/e/b/j/l;->k:Le/a/q2/a;

    invoke-static {v1, v3}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 12
    invoke-virtual {v0}, Le/a/e/b/j/l;->z5()V

    move v1, v2

    goto :goto_2

    .line 13
    :cond_5
    iput-boolean v2, v0, Le/a/e/b/j/l;->d:Z

    .line 14
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/j/i;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/e/b/j/i;->G7()V

    .line 15
    :cond_6
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
