.class public final Le/a/a/c/o7;
.super Le/m/a/g/e/d;
.source "SourceFile"


# instance fields
.field public o:Le/a/p5/h0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:Le/a/a/i0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;)V

    .line 2
    check-cast p1, Le/a/a/c/f3;

    invoke-interface {p1}, Le/a/a/c/f3;->z9()Le/a/a/c/v3;

    move-result-object p1

    const-string v0, "(activityContext as ComponentHolder).component"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Le/a/a/c/r5;

    .line 4
    iget-object v0, p1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v0}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v0

    .line 5
    iput-object v0, p0, Le/a/a/c/o7;->o:Le/a/p5/h0;

    .line 6
    iget-object p1, p1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object p1

    const-string v0, "Cannot return null from a non-@Nullable component method"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Le/a/a/c/o7;->p:Le/a/a/i0;

    const p1, 0x7f0d0124

    .line 9
    invoke-virtual {p0, p1}, Le/m/a/g/e/d;->setContentView(I)V

    const p1, 0x7f0a1245

    .line 10
    invoke-virtual {p0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120e80

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f0a0e06

    .line 11
    invoke-virtual {p0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    new-instance v0, Le/a/a/c/n7;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/a/c/o7;->o:Le/a/p5/h0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Le/a/a/c/o7;->p:Le/a/a/i0;

    if-eqz v4, :cond_1

    invoke-direct {v0, v1, v2, v4, p2}, Le/a/a/c/n7;-><init>(Landroid/content/Context;Le/a/p5/h0;Le/a/a/i0;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_0

    :cond_1
    const-string p1, "messageSettings"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p1, "resourceProvider"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    return-void
.end method
