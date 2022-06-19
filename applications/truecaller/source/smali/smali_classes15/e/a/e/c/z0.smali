.class public final synthetic Le/a/e/c/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Lcom/truecaller/data/entity/Number;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Number;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/z0;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/z0;->b:Lcom/truecaller/data/entity/Number;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Le/a/e/c/z0;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/z0;->b:Lcom/truecaller/data/entity/Number;

    .line 1
    iget-object v1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction;->BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction;

    const-string v3, "detailView"

    invoke-static {v3, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->h(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object p1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-static {p1, v0}, Le/a/o5/e1;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
