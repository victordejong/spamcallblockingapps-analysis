.class public Le/a/e/c/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/c/i2$b;,
        Le/a/e/c/i2$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/b/f/b0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Le/a/k3/l/d;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/b/f/b0;

    .line 3
    sget v1, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-direct {v0, p1, v2, v1, v3}, Ln3/b/f/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iput-object v0, p0, Le/a/e/c/i2;->a:Ln3/b/f/b0;

    .line 6
    iput-object p3, v0, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 7
    new-instance p3, Le/a/e/c/i2$a;

    invoke-direct {p3, p2}, Le/a/e/c/i2$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p3}, Ln3/b/f/b0;->m(Landroid/widget/ListAdapter;)V

    .line 8
    iput-object p0, v0, Ln3/b/f/b0;->q:Landroid/widget/AdapterView$OnItemClickListener;

    const/high16 p2, 0x43700000    # 240.0f

    .line 9
    invoke-static {p1, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, p1}, Ln3/b/f/b0;->p(I)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Ln3/b/f/b0;->q(Z)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k3/l/d;

    .line 3
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p1, Le/a/k3/l/d;->d:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Le/a/k3/l/d;->c:Landroid/content/Intent;

    .line 4
    invoke-virtual {p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "detailView"

    const-string v0, "context"

    .line 5
    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subAction"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalApp"

    const-string v1, "action"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v1, v0, p4, p5}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p3, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 9
    :try_start_0
    iget-object p1, p1, Le/a/k3/l/d;->c:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
