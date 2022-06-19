.class public final Lo;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lo;->a:I

    iput-object p2, p0, Lo;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lo;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lo;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/e/u;->Bb()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lo;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    iget-object v0, p0, Lo;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/b;

    .line 4
    invoke-virtual {v0}, Le/a/a/e/b;->OA()Le/a/m3/e0;

    move-result-object v0

    .line 5
    iget-object v0, v0, Le/a/m3/e0;->u:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.switchAutoCleanup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/e/u;->tb(Z)V

    return-void
.end method
