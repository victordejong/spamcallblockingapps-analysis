.class public final Le/a/a/d/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/d/b$a;->a:I

    iput-object p2, p0, Le/a/a/d/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, Le/a/a/d/b$a;->a:I

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/d/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/b;

    invoke-virtual {p1}, Le/a/a/d/b;->OA()Le/a/a/d/t;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/d/t;->Mj()V

    return-void

    .line 2
    :cond_0
    throw v1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/d/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/b;

    invoke-virtual {p1}, Le/a/a/d/b;->OA()Le/a/a/d/t;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/d/t;->Jj()V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/a/d/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/b;

    invoke-virtual {p1}, Le/a/a/d/b;->OA()Le/a/a/d/t;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/d/t;->O7()V

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/a/d/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/b;

    .line 6
    sget v0, Le/a/a/d/b;->x:I

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    iget-object v4, p1, Le/a/a/d/b;->o:Landroid/view/View;

    if-eqz v4, :cond_4

    const v5, 0x800005

    const/4 v6, 0x0

    const v7, 0x7f130224

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e002f

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10
    new-instance v1, Le/a/a/d/i;

    invoke-direct {v1, p1}, Le/a/a/d/i;-><init>(Le/a/a/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 11
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void

    :cond_4
    const-string p1, "switchToNewMmsGroupView"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_5
    iget-object p1, p0, Le/a/a/d/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/b;

    .line 14
    iget-object p1, p1, Le/a/a/d/b;->d:Le/a/a/d/p;

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Le/a/a/d/p;->Nj()Z

    return-void

    :cond_6
    const-string p1, "groupPresenter"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_7
    iget-object p1, p0, Le/a/a/d/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/b;

    invoke-virtual {p1}, Le/a/a/d/b;->OA()Le/a/a/d/t;

    move-result-object p1

    invoke-virtual {p1}, Le/a/a/d/t;->r0()V

    return-void
.end method
