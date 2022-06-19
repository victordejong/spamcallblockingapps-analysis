.class public final synthetic Le/a/e/c/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Le/a/f5/a;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Le/a/f5/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/f0;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/f0;->b:Le/a/f5/a;

    iput-object p3, p0, Le/a/e/c/f0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Le/a/e/c/f0;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/f0;->b:Le/a/f5/a;

    iget-object v1, p0, Le/a/e/c/f0;->c:Ljava/util/List;

    .line 1
    iget-object v2, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    if-eqz v2, :cond_0

    .line 2
    iget-object v3, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    .line 3
    invoke-static {v3, v4, v4, v5, v6}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    .line 4
    invoke-interface {v0, v2, v3, v1, v4}, Le/a/f5/a;->b(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 5
    :cond_0
    iget-object p1, p1, Le/a/e/c/s1;->o:Le/a/q2/a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->SWISH:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v1, "detailView"

    invoke-static {v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
