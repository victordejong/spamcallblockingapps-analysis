.class public final synthetic Le/a/e/c/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/m0;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/m0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/a/e/c/m0;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/m0;->b:Ljava/lang/String;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-static {v1, v0}, Le/a/b0/q/t;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    :goto_0
    iget-object p1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->EMAIL:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v1, "detailView"

    invoke-static {v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
