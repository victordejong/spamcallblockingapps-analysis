.class public final Le/a/a/h/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/a;


# direct methods
.method public constructor <init>(Le/a/a/h/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/a$g;->a:Le/a/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Xm(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 2
    iget-object p1, p0, Le/a/a/h/a$g;->a:Le/a/a/h/a;

    .line 3
    sget-object v0, Le/a/a/h/a;->g:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Le/a/a/h/a;->OA()Le/a/m3/b0;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/a/m3/b0;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const-string v0, "binding.contactPhoto"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6
    iget-object p1, p0, Le/a/a/h/a$g;->a:Le/a/a/h/a;

    .line 7
    invoke-virtual {p1}, Le/a/a/h/a;->OA()Le/a/m3/b0;

    move-result-object p1

    .line 8
    iget-object p1, p1, Le/a/m3/b0;->m:Landroid/widget/TextView;

    const-string v0, "binding.nameText"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Le/a/a/h/a$g;->a:Le/a/a/h/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f04068d

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p2, p0, Le/a/a/h/a$g;->a:Le/a/a/h/a;

    .line 11
    invoke-virtual {p2}, Le/a/a/h/a;->OA()Le/a/m3/b0;

    move-result-object p2

    .line 12
    iget-object p2, p2, Le/a/m3/b0;->p:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method
