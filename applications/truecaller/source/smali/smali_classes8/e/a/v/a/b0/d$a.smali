.class public final Le/a/v/a/b0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/b0/d;->c(Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/b0/d;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/v/a/b0/d;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/b0/d$a;->a:Le/a/v/a/b0/d;

    iput-object p2, p0, Le/a/v/a/b0/d$a;->b:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/v/a/b0/d$a;->a:Le/a/v/a/b0/d;

    invoke-virtual {p1}, Le/a/v/a/b0/d;->getPresenter()Le/a/v/a/b0/a;

    move-result-object p1

    iget-object v0, p0, Le/a/v/a/b0/d$a;->b:Lcom/truecaller/data/entity/Contact;

    check-cast p1, Le/a/v/a/b0/c;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "contact"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/v/a/b0/c;->p:Le/a/v/a/z/a;

    .line 4
    iget-object v2, v1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->CALL_HISTORY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v4, "context"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "action"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, v1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v4, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/b0/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Le/a/v/a/b0/b;->d(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void
.end method
