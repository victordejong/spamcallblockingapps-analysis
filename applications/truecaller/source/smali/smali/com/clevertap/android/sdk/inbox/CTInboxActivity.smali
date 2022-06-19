.class public Lcom/clevertap/android/sdk/inbox/CTInboxActivity;
.super Ln3/r/a/l;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/r0/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;
    }
.end annotation


# static fields
.field public static g:I


# instance fields
.field public a:Le/h/a/c/r0/l;

.field public b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

.field public c:Lcom/google/android/material/tabs/TabLayout;

.field public d:Landroidx/viewpager/widget/ViewPager;

.field public e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/r/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Landroid/content/Context;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->pa()Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2, p3}, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;->b(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_d

    const-string v0, "styleConfig"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    iput-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    const-string v0, "configBundle"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "config"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p1, v0}, Le/h/a/c/p;->k(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/p;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->f:Ljava/lang/ref/WeakReference;

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    sget v0, Lcom/clevertap/android/sdk/R$layout;->inbox_activity:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 10
    sget v0, Lcom/clevertap/android/sdk/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 11
    iget-object v1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 12
    iget-object v1, v1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 15
    iget-object v1, v1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->f:Ljava/lang/String;

    .line 16
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 17
    iget-object v1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 18
    iget-object v1, v1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->d:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_ic_arrow_back_white_24dp:I

    const/4 v3, 0x0

    .line 21
    sget-object v4, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 23
    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 24
    iget-object v2, v2, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->a:Ljava/lang/String;

    .line 25
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 27
    new-instance v1, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$a;

    invoke-direct {v1, p0}, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$a;-><init>(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    sget v0, Lcom/clevertap/android/sdk/R$id;->inbox_linear_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 29
    iget-object v1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 30
    iget-object v1, v1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->c:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 32
    sget v1, Lcom/clevertap/android/sdk/R$id;->tab_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    iput-object v1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 33
    sget v1, Lcom/clevertap/android/sdk/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    .line 34
    sget v0, Lcom/clevertap/android/sdk/R$id;->no_message_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "config"

    .line 36
    iget-object v3, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "styleConfig"

    .line 37
    iget-object v3, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 39
    iget-object v2, v2, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->l:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-nez v2, :cond_8

    .line 40
    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 42
    sget v2, Lcom/clevertap/android/sdk/R$id;->list_view_fragment:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_5

    .line 44
    iget-object v2, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 45
    iget-object v2, v2, Le/h/a/c/x;->e:Le/h/a/c/m;

    .line 46
    iget-object v2, v2, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 47
    monitor-enter v2

    .line 48
    :try_start_1
    iget-object v6, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 49
    iget-object v6, v6, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 50
    iget-object v6, v6, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-eqz v6, :cond_4

    .line 51
    iget-object p1, v6, Le/h/a/c/r0/h;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :try_start_2
    invoke-virtual {v6}, Le/h/a/c/r0/h;->d()V

    .line 53
    iget-object v6, v6, Le/h/a/c/r0/h;->b:Ljava/util/ArrayList;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 55
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 56
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 57
    :cond_4
    invoke-virtual {p1}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v6

    invoke-virtual {p1}, Le/h/a/c/p;->f()Ljava/lang/String;

    move-result-object p1

    const-string v7, "Notification Inbox not initialized"

    invoke-virtual {v6, p1, v7}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 58
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-nez p1, :cond_5

    .line 59
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 60
    iget-object p1, p1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->c:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 64
    iget-object p1, p1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->g:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 67
    iget-object p1, p1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->h:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    .line 69
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    .line 70
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 74
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":CT_INBOX_LIST_VIEW_FRAGMENT"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v3, v4

    goto :goto_2

    :cond_7
    if-nez v3, :cond_c

    .line 77
    new-instance p1, Le/h/a/c/r0/i;

    invoke-direct {p1}, Le/h/a/c/r0/i;-><init>()V

    .line 78
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 80
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 81
    sget v0, Lcom/clevertap/android/sdk/R$id;->list_view_fragment:I

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 83
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, ":CT_INBOX_LIST_VIEW_FRAGMENT"

    .line 84
    invoke-static {v2, v3, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v0, p1, v2, v4}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    goto/16 :goto_5

    .line 87
    :cond_8
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 89
    iget-object v0, p1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->l:[Ljava/lang/String;

    if-nez v0, :cond_9

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->l:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 90
    :goto_3
    new-instance v0, Le/h/a/c/r0/l;

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v5}, Le/h/a/c/r0/l;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->a:Le/h/a/c/r0/l;

    .line 91
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 93
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 94
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 95
    iget-object v2, v2, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->j:Ljava/lang/String;

    .line 96
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 97
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 98
    iget-object v2, v2, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->m:Ljava/lang/String;

    .line 99
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 100
    iget-object v4, v4, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->i:Ljava/lang/String;

    .line 101
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 102
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->f(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 104
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 105
    iget-object v2, v2, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->k:Ljava/lang/String;

    .line 106
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 107
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "position"

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    new-instance v2, Le/h/a/c/r0/i;

    invoke-direct {v2}, Le/h/a/c/r0/i;-><init>()V

    .line 110
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->a:Le/h/a/c/r0/l;

    iget-object v4, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 112
    iget-object v4, v4, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->b:Ljava/lang/String;

    .line 113
    iget-object v5, v0, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    aput-object v2, v5, v3

    .line 114
    iget-object v0, v0, Le/h/a/c/r0/l;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 116
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    .line 117
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v4, "position"

    .line 118
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "filter"

    .line 119
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v4, Le/h/a/c/r0/i;

    invoke-direct {v4}, Le/h/a/c/r0/i;-><init>()V

    .line 121
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->a:Le/h/a/c/r0/l;

    .line 123
    iget-object v5, v2, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    aput-object v4, v5, v3

    .line 124
    iget-object v2, v2, Le/h/a/c/r0/l;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    goto :goto_4

    .line 126
    :cond_a
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->a:Le/h/a/c/r0/l;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Ln3/k0/a/a;)V

    .line 127
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->a:Le/h/a/c/r0/l;

    invoke-virtual {p1}, Ln3/k0/a/a;->h()V

    .line 128
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/google/android/material/tabs/TabLayout$h;

    iget-object v1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 129
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$b;

    invoke-direct {v0, p0}, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$b;-><init>(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;)V

    .line 130
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 131
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_b
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->c:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_c
    :goto_5
    return-void

    .line 133
    :cond_d
    :try_start_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->b:Lcom/clevertap/android/sdk/CTInboxStyleConfig;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/CTInboxStyleConfig;->l:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v2, v1, Le/h/a/c/r0/i;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-super {p0}, Ln3/r/a/l;->onDestroy()V

    return-void
.end method

.method public pa()Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "InboxActivityListener is null for notification inbox "

    .line 4
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public w9(Landroid/content/Context;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/clevertap/android/sdk/inbox/CTInboxMessage;",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->pa()Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2, p3, p4}, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$c;->a(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
