.class public Le/a/d5/g/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/g/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d5/g/j;


# direct methods
.method public constructor <init>(Le/a/d5/g/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d5/g/j$b;->a:Le/a/d5/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d5/g/j$b;->a:Le/a/d5/g/j;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d5/g/j$b;->a:Le/a/d5/g/j;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 3
    sget v1, Le/a/d5/g/j;->j:I

    .line 4
    invoke-virtual {v0}, Le/a/d5/g/j;->SA()V

    .line 5
    iget-object v0, p0, Le/a/d5/g/j$b;->a:Le/a/d5/g/j;

    .line 6
    iget-object v0, v0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Le/a/d5/g/j$b;->a:Le/a/d5/g/j;

    .line 9
    iget-object p1, p1, Le/a/d5/g/j;->d:Landroid/widget/Button;

    const v0, 0x7f120432

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/d5/g/j$b;->a:Le/a/d5/g/j;

    .line 12
    iget-object v0, v0, Le/a/d5/g/j;->d:Landroid/widget/Button;

    const v1, 0x7f120433

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Le/a/d5/g/j$b;->a:Le/a/d5/g/j;

    .line 15
    iget-object p1, p1, Le/a/d5/g/j;->i:Le/a/e/d2/l;

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p1, Le/a/e/d2/l;->h:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_0
    return-void
.end method
