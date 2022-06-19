.class public final Lh1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lh1;->a:I

    iput-object p2, p0, Lh1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lh1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lh1;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lh1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/v2;

    .line 2
    iget-object v0, p1, Le/a/l/c/a/v2;->f:Le/a/o2/m;

    .line 3
    new-instance v1, Le/a/o2/h;

    iget-object v2, p0, Lh1;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    const-string v3, "learnMoreView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lh1;->d:Ljava/lang/Object;

    check-cast v3, Le/a/h0/a/v;

    const-string v4, "ItemEvent.LEARN_MORE_ACTION"

    invoke-direct {v1, v4, p1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Lh1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/v2;

    .line 6
    iget-object v0, p1, Le/a/l/c/a/v2;->f:Le/a/o2/m;

    .line 7
    new-instance v1, Le/a/o2/h;

    iget-object v2, p0, Lh1;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    const-string v3, "editView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lh1;->d:Ljava/lang/Object;

    check-cast v3, Le/a/h0/a/v;

    const-string v4, "ItemEvent.EDIT_ACTION"

    invoke-direct {v1, v4, p1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lh1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/v2;

    .line 9
    iget-object v0, p1, Le/a/l/c/a/v2;->f:Le/a/o2/m;

    .line 10
    new-instance v1, Le/a/o2/h;

    iget-object v2, p0, Lh1;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/premium/premiumusertab/list/DummySwitch;

    const-string v3, "switchView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lh1;->d:Ljava/lang/Object;

    check-cast v3, Le/a/h0/a/v;

    const-string v4, "ItemEvent.SWITCH_ACTION"

    invoke-direct {v1, v4, p1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
