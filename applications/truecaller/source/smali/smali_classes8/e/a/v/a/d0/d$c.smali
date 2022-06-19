.class public final Le/a/v/a/d0/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/d0/d;->g(Le/a/v/a/r0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/d0/d;


# direct methods
.method public constructor <init>(Le/a/v/a/d0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/d0/d$c;->a:Le/a/v/a/d0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/v/a/d0/d$c;->a:Le/a/v/a/d0/d;

    invoke-virtual {p1}, Le/a/v/a/d0/d;->getPresenter()Le/a/v/a/d0/a;

    move-result-object p1

    check-cast p1, Le/a/v/a/d0/c;

    .line 2
    iget-object v0, p1, Le/a/v/a/d0/c;->e:Le/a/v/a/z/a;

    .line 3
    iget-object v1, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    const-string v2, "context"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tag"

    const-string v3, "action"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v3, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 8
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/d0/b;

    if-eqz v0, :cond_1

    iget-object p1, p1, Le/a/v/a/d0/c;->b:Le/a/v/a/s;

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 10
    invoke-interface {v0, p1}, Le/a/v/a/d0/b;->c(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    :cond_0
    const-string p1, "detailsViewModel"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    return-void
.end method
