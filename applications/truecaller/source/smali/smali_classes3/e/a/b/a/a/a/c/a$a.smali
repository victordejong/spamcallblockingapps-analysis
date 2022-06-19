.class public final Le/a/b/a/a/a/c/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/b/a/a/a/c/a$a;->a:I

    iput-object p2, p0, Le/a/b/a/a/a/c/a$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/b/a/a/a/c/a$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Le/a/b/a/a/a/c/a$a;->a:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/b/a/a/a/c/a$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 2
    iget-object p1, p0, Le/a/b/a/a/a/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    .line 3
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "selected_tag_id"

    .line 5
    invoke-virtual {v4, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v4, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/b/a/a/a/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/c/a;

    .line 9
    iget-object p1, p1, Le/a/b/a/a/a/c/a;->f:Le/a/b/a/a/a/c/a$f;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Le/a/b/a/a/a/c/a$f;->W3()V

    :cond_3
    return-void

    .line 11
    :cond_4
    iget-object p1, p0, Le/a/b/a/a/a/c/a$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    new-array p1, v0, [Ljava/lang/Long;

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 13
    iget-object v0, p0, Le/a/b/a/a/a/c/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/a/a/c/a;

    .line 14
    iget-object v0, v0, Le/a/b/a/a/a/c/a;->d:Ljava/util/List;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/CheckBox;

    .line 17
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-static {v2, v1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    iget-object v0, p0, Le/a/b/a/a/a/c/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/a/a/c/a;

    .line 20
    iget-object v0, v0, Le/a/b/a/a/a/c/a;->f:Le/a/b/a/a/a/c/a$f;

    if-eqz v0, :cond_8

    .line 21
    invoke-interface {v0, p1}, Le/a/b/a/a/a/c/h;->P(Ljava/util/List;)V

    :cond_8
    return-void

    .line 22
    :cond_9
    iget-object p1, p0, Le/a/b/a/a/a/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/c/a;

    .line 23
    iget-object p1, p1, Le/a/b/a/a/a/c/a;->f:Le/a/b/a/a/a/c/a$f;

    if-eqz p1, :cond_a

    .line 24
    invoke-interface {p1}, Le/a/b/a/a/a/c/a$f;->W3()V

    :cond_a
    return-void
.end method
