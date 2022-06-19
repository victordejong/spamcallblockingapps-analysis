.class public Le/a/d5/g/j;
.super Le/a/d5/g/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d5/g/j$c;
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

.field public c:Lcom/truecaller/ui/view/DotPagerIndicator;

.field public d:Landroid/widget/Button;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/d5/g/j$c;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Landroid/os/Handler;

.field public h:Z

.field public i:Le/a/e/d2/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/d5/g/e;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Le/a/d5/g/j;->g:Landroid/os/Handler;

    .line 4
    iget-object v0, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    sget-object v1, Le/a/d5/g/j$c;->c:Le/a/d5/g/j$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    sget-object v1, Le/a/d5/g/j$c;->d:Le/a/d5/g/j$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    sget-object v1, Le/a/d5/g/j$c;->e:Le/a/d5/g/j$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Le/a/j4/b/a/h;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    sget-object v1, Le/a/d5/g/j$c;->f:Le/a/d5/g/j$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public PA()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->Onboarding:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-object v0
.end method

.method public final SA()V
    .locals 6

    .line 1
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object v0

    new-instance v1, Le/a/q2/g$b;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    .line 2
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "ONBOARDING_Step_%d"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Le/a/d5/g/j;->f:J

    sub-long/2addr v2, v4

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Le/a/q2/g$b;->c(Ljava/lang/String;J)Le/a/q2/g$b;

    .line 4
    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/d5/g/j;->f:J

    return-void
.end method

.method public final TA()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v2

    invoke-interface {v2}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Le/a/d5/g/j$c;->e:Le/a/d5/g/j$c;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v4, "android.permission.READ_SMS"

    .line 5
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Le/a/p5/g;->B()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v6

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 6
    iget-boolean v1, p0, Le/a/d5/g/j;->h:Z

    if-nez v1, :cond_4

    .line 7
    iput-boolean v6, p0, Le/a/d5/g/j;->h:Z

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v1, "onboarding-blockSpam"

    .line 9
    invoke-static {v0, v1}, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->pa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0, v6}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 11
    iget-object v0, p0, Le/a/d5/g/j;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 13
    iget-object v0, p0, Le/a/d5/g/j;->d:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 14
    :cond_4
    iget-object v1, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    if-ne v0, v1, :cond_5

    .line 15
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object v0

    .line 16
    new-instance v1, Le/a/q2/g$b$a;

    const-string v2, "ONBOARDING_Finished"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 17
    invoke-interface {v0, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 18
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_3

    .line 19
    :cond_5
    iget-object v1, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ln3/b/a/g$a;

    invoke-direct {p2, p1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 3
    iget-object v0, p2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean p3, v0, Landroidx/appcompat/app/AlertController$b;->m:Z

    const p3, 0x7f1206c1

    .line 4
    invoke-virtual {p2, p3}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    const p3, 0x7f120430

    .line 5
    invoke-virtual {p2, p3}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const p3, 0x7f120703

    new-instance v0, Le/a/d5/g/d;

    invoke-direct {v0, p0, p1}, Le/a/d5/g/d;-><init>(Le/a/d5/g/j;Landroid/content/Context;)V

    .line 6
    invoke-virtual {p2, p3, v0}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const p1, 0x7f120299

    new-instance p3, Le/a/d5/g/b;

    invoke-direct {p3, p0}, Le/a/d5/g/b;-><init>(Le/a/d5/g/j;)V

    .line 7
    invoke-virtual {p2, p1, p3}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    new-instance p1, Le/a/d5/g/a;

    invoke-direct {p1, p0}, Le/a/d5/g/a;-><init>(Le/a/d5/g/j;)V

    .line 8
    iget-object p3, p2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, p3, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 9
    invoke-virtual {p2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Le/a/d5/g/j;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11
    invoke-virtual {p0}, Le/a/d5/g/j;->TA()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 12
    invoke-virtual {p0}, Le/a/d5/g/j;->TA()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/d5/g/j;->TA()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Ln3/b/a/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const v1, 0x7f130367

    invoke-direct {p1, v0, v1}, Ln3/b/a/p;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0406

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a1398    # 1.835352E38f

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/ui/NonSwipeableViewPager;

    iput-object p2, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    const p2, 0x7f0a0cd4

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/ui/view/DotPagerIndicator;

    iput-object p2, p0, Le/a/d5/g/j;->c:Lcom/truecaller/ui/view/DotPagerIndicator;

    const p2, 0x7f0a0c39

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Le/a/d5/g/j;->d:Landroid/widget/Button;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/g/j;->i:Le/a/e/d2/l;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/e/d2/l;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_0
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    invoke-virtual {p0}, Le/a/d5/g/j;->SA()V

    .line 4
    invoke-super {p0, p1}, Le/a/d5/g/n;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/d5/g/j;->f:J

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/r/a/k;->onStop()V

    .line 2
    iget-object v0, p0, Le/a/d5/g/j;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/d5/g/j;->c:Lcom/truecaller/ui/view/DotPagerIndicator;

    iget-object p2, p0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/view/DotPagerIndicator;->setNumberOfPages(I)V

    .line 2
    iget-object p1, p0, Le/a/d5/g/j;->c:Lcom/truecaller/ui/view/DotPagerIndicator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/view/DotPagerIndicator;->setFirstPage(I)V

    .line 3
    iget-object p1, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    new-instance p2, Le/a/d5/g/j$a;

    invoke-direct {p2, p0}, Le/a/d5/g/j$a;-><init>(Le/a/d5/g/j;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Ln3/k0/a/a;)V

    .line 4
    new-instance p1, Le/a/d5/g/j$b;

    invoke-direct {p1, p0}, Le/a/d5/g/j$b;-><init>(Le/a/d5/g/j;)V

    .line 5
    iget-object p2, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 6
    iget-object p2, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    iget-object v0, p0, Le/a/d5/g/j;->c:Lcom/truecaller/ui/view/DotPagerIndicator;

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 7
    iget-object p2, p0, Le/a/d5/g/j;->b:Lcom/truecaller/common/ui/NonSwipeableViewPager;

    new-instance v0, Le/a/d5/g/c;

    invoke-direct {v0, p0, p1}, Le/a/d5/g/c;-><init>(Le/a/d5/g/j;Landroidx/viewpager/widget/ViewPager$i;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-object p1, p0, Le/a/d5/g/j;->d:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
