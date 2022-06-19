.class public Le/h/a/c/r0/a;
.super Le/h/a/c/r0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/r0/a$b;
    }
.end annotation


# instance fields
.field public final o:Landroid/widget/ImageView;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/RelativeLayout;

.field public final r:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

.field public final s:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/h/a/c/r0/e;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcom/clevertap/android/sdk/R$id;->image_carousel_viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    iput-object v0, p0, Le/h/a/c/r0/a;->r:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    .line 3
    sget v0, Lcom/clevertap/android/sdk/R$id;->sliderDots:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Le/h/a/c/r0/a;->s:Landroid/widget/LinearLayout;

    .line 4
    sget v0, Lcom/clevertap/android/sdk/R$id;->carousel_timestamp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/h/a/c/r0/a;->p:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/clevertap/android/sdk/R$id;->carousel_read_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/h/a/c/r0/a;->o:Landroid/widget/ImageView;

    .line 6
    sget v0, Lcom/clevertap/android/sdk/R$id;->body_linear_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Le/h/a/c/r0/a;->q:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public P4(Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/h/a/c/r0/e;->P4(Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V

    .line 2
    invoke-virtual {p0}, Le/h/a/c/r0/e;->Q4()Le/h/a/c/r0/i;

    move-result-object v6

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 4
    iget-object v0, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    const/4 v8, 0x0

    .line 5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 6
    iget-object v1, p0, Le/h/a/c/r0/a;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-boolean v1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->k:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Le/h/a/c/r0/a;->o:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Le/h/a/c/r0/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    iget-wide v1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->g:J

    .line 11
    invoke-virtual {p0, v1, v2}, Le/h/a/c/r0/e;->O4(J)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Le/h/a/c/r0/a;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Le/h/a/c/r0/a;->p:Landroid/widget/TextView;

    .line 14
    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->l:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v0, p0, Le/h/a/c/r0/a;->q:Landroid/widget/RelativeLayout;

    .line 17
    iget-object v1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->b:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 19
    iget-object v0, p0, Le/h/a/c/r0/a;->r:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    new-instance v9, Le/h/a/c/r0/c;

    move-object v0, v9

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Le/h/a/c/r0/c;-><init>(Landroid/content/Context;Le/h/a/c/r0/i;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 21
    iget-object v0, p0, Le/h/a/c/r0/a;->r:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Ln3/k0/a/a;)V

    .line 22
    iget-object v0, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 24
    iget-object v1, p0, Le/h/a/c/r0/a;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 25
    iget-object v1, p0, Le/h/a/c/r0/a;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 26
    :cond_1
    new-array v4, v0, [Landroid/widget/ImageView;

    .line 27
    iget-object v1, p0, Le/h/a/c/r0/a;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v0, v7, v1}, Le/h/a/c/r0/e;->T4([Landroid/widget/ImageView;ILandroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 28
    aget-object v0, v4, v8

    .line 29
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_selected_dot:I

    const/4 v3, 0x0

    .line 30
    sget-object v5, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance v7, Le/h/a/c/r0/a$b;

    .line 34
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v7

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Le/h/a/c/r0/a$b;-><init>(Le/h/a/c/r0/a;Landroid/content/Context;Le/h/a/c/r0/a;[Landroid/widget/ImageView;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;)V

    .line 35
    iget-object v0, p0, Le/h/a/c/r0/a;->r:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 36
    iget-object v7, p0, Le/h/a/c/r0/a;->q:Landroid/widget/RelativeLayout;

    new-instance v8, Le/h/a/c/r0/f;

    const/4 v3, 0x0

    iget-object v5, p0, Le/h/a/c/r0/a;->r:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    move-object v0, v8

    move v1, p3

    move-object v2, p1

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Le/h/a/c/r0/i;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance v0, Le/h/a/c/r0/a$a;

    invoke-direct {v0, p0, p2, v6, p3}, Le/h/a/c/r0/a$a;-><init>(Le/h/a/c/r0/a;Le/h/a/c/r0/i;Le/h/a/c/r0/i;I)V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x7d0

    .line 39
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
