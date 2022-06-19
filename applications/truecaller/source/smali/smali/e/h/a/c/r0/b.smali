.class public Le/h/a/c/r0/b;
.super Le/h/a/c/r0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/r0/b$b;
    }
.end annotation


# static fields
.field public static final synthetic v:I


# instance fields
.field public final o:Landroid/widget/RelativeLayout;

.field public final p:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

.field public final q:Landroid/widget/ImageView;

.field public final r:Landroid/widget/LinearLayout;

.field public final s:Landroid/widget/TextView;

.field public final t:Landroid/widget/TextView;

.field public final u:Landroid/widget/TextView;


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

    iput-object v0, p0, Le/h/a/c/r0/b;->p:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    .line 3
    sget v0, Lcom/clevertap/android/sdk/R$id;->sliderDots:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Le/h/a/c/r0/b;->r:Landroid/widget/LinearLayout;

    .line 4
    sget v0, Lcom/clevertap/android/sdk/R$id;->messageTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/h/a/c/r0/b;->s:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/clevertap/android/sdk/R$id;->messageText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/h/a/c/r0/b;->t:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/clevertap/android/sdk/R$id;->timestamp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/h/a/c/r0/b;->u:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/clevertap/android/sdk/R$id;->read_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/h/a/c/r0/b;->q:Landroid/widget/ImageView;

    .line 8
    sget v0, Lcom/clevertap/android/sdk/R$id;->body_linear_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Le/h/a/c/r0/b;->o:Landroid/widget/RelativeLayout;

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
    iget-object v1, p0, Le/h/a/c/r0/b;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Le/h/a/c/r0/b;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Le/h/a/c/r0/b;->s:Landroid/widget/TextView;

    .line 9
    iget-object v2, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->k:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Le/h/a/c/r0/b;->s:Landroid/widget/TextView;

    .line 12
    iget-object v2, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->l:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v1, p0, Le/h/a/c/r0/b;->t:Landroid/widget/TextView;

    .line 15
    iget-object v2, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->h:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p0, Le/h/a/c/r0/b;->t:Landroid/widget/TextView;

    .line 18
    iget-object v2, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i:Ljava/lang/String;

    .line 19
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-boolean v1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->k:Z

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Le/h/a/c/r0/b;->q:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Le/h/a/c/r0/b;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    :goto_0
    iget-object v1, p0, Le/h/a/c/r0/b;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-wide v1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->g:J

    .line 25
    invoke-virtual {p0, v1, v2}, Le/h/a/c/r0/e;->O4(J)Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Le/h/a/c/r0/b;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Le/h/a/c/r0/b;->u:Landroid/widget/TextView;

    .line 28
    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->l:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Le/h/a/c/r0/b;->o:Landroid/widget/RelativeLayout;

    .line 31
    iget-object v1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->b:Ljava/lang/String;

    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 33
    iget-object v0, p0, Le/h/a/c/r0/b;->p:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    new-instance v9, Le/h/a/c/r0/c;

    move-object v0, v9

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Le/h/a/c/r0/c;-><init>(Landroid/content/Context;Le/h/a/c/r0/i;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 35
    iget-object v0, p0, Le/h/a/c/r0/b;->p:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Ln3/k0/a/a;)V

    .line 36
    iget-object v0, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    iget-object v1, p0, Le/h/a/c/r0/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 39
    iget-object v1, p0, Le/h/a/c/r0/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 40
    :cond_1
    new-array v4, v0, [Landroid/widget/ImageView;

    .line 41
    iget-object v1, p0, Le/h/a/c/r0/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v0, v7, v1}, Le/h/a/c/r0/e;->T4([Landroid/widget/ImageView;ILandroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 42
    aget-object v0, v4, v8

    .line 43
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_selected_dot:I

    const/4 v3, 0x0

    .line 44
    sget-object v5, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance v7, Le/h/a/c/r0/b$b;

    .line 48
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v7

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Le/h/a/c/r0/b$b;-><init>(Le/h/a/c/r0/b;Landroid/content/Context;Le/h/a/c/r0/b;[Landroid/widget/ImageView;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;)V

    .line 49
    iget-object v0, p0, Le/h/a/c/r0/b;->p:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 50
    iget-object v7, p0, Le/h/a/c/r0/b;->o:Landroid/widget/RelativeLayout;

    new-instance v8, Le/h/a/c/r0/f;

    const/4 v3, 0x0

    iget-object v5, p0, Le/h/a/c/r0/b;->p:Lcom/clevertap/android/sdk/inbox/CTCarouselViewPager;

    move-object v0, v8

    move v1, p3

    move-object v2, p1

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Le/h/a/c/r0/f;-><init>(ILcom/clevertap/android/sdk/inbox/CTInboxMessage;Ljava/lang/String;Le/h/a/c/r0/i;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v7, Le/h/a/c/r0/b$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Le/h/a/c/r0/b$a;-><init>(Le/h/a/c/r0/b;Le/h/a/c/r0/i;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Le/h/a/c/r0/i;I)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v1, 0x7d0

    .line 53
    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
