.class public Le/h/a/c/q0/s;
.super Le/h/a/c/q0/e;
.source "SourceFile"


# instance fields
.field public h:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 3
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/h/a/c/q0/b;->VA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/clevertap/android/sdk/R$layout;->tab_inapp_half_interstitial:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/clevertap/android/sdk/R$layout;->inapp_half_interstitial:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    :goto_0
    sget p2, Lcom/clevertap/android/sdk/R$id;->inapp_half_interstitial_frame_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const v0, 0x30a68

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/customviews/CloseImageView;

    .line 9
    sget v2, Lcom/clevertap/android/sdk/R$id;->half_interstitial_relative_layout:I

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    .line 10
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 11
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 13
    iget v2, p0, Le/h/a/c/q0/a;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v5, Le/h/a/c/q0/s$b;

    invoke-direct {v5, p0, p2, v0}, Le/h/a/c/q0/s$b;-><init>(Le/h/a/c/q0/s;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 15
    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v2, p0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v5, Le/h/a/c/q0/s$a;

    invoke-direct {v5, p0, v0}, Le/h/a/c/q0/s$a;-><init>(Le/h/a/c/q0/s;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 17
    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    :goto_1
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v5, p0, Le/h/a/c/q0/a;->d:I

    invoke-virtual {v2, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v5, p0, Le/h/a/c/q0/a;->d:I

    invoke-virtual {v2, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, p0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    sget v5, Lcom/clevertap/android/sdk/R$id;->backgroundImage:I

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 21
    iget-object v5, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v6, p0, Le/h/a/c/q0/a;->d:I

    .line 22
    invoke-virtual {v5, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 23
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    :cond_3
    iget-object v2, p0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    sget v5, Lcom/clevertap/android/sdk/R$id;->half_interstitial_linear_layout:I

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 25
    sget v5, Lcom/clevertap/android/sdk/R$id;->half_interstitial_button1:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 26
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget v6, Lcom/clevertap/android/sdk/R$id;->half_interstitial_button2:I

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 28
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v6, p0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    sget v7, Lcom/clevertap/android/sdk/R$id;->half_interstitial_title:I

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 30
    iget-object v7, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 31
    iget-object v7, v7, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    .line 32
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v7, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 34
    iget-object v7, v7, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->K:Ljava/lang/String;

    .line 35
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v6, p0, Le/h/a/c/q0/s;->h:Landroid/widget/RelativeLayout;

    sget v7, Lcom/clevertap/android/sdk/R$id;->half_interstitial_message:I

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 37
    iget-object v7, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 38
    iget-object v7, v7, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    .line 39
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v7, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 41
    iget-object v7, v7, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->B:Ljava/lang/String;

    .line 42
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v6, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 44
    iget-object v6, v6, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v4, :cond_6

    .line 46
    iget p3, p0, Le/h/a/c/q0/a;->d:I

    if-ne p3, v3, :cond_4

    .line 47
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-ne p3, v4, :cond_5

    const/4 p3, 0x4

    .line 48
    invoke-virtual {v5, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    :cond_5
    :goto_2
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    invoke-virtual {p0, v2, p3, v1}, Le/h/a/c/q0/e;->dB(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V

    goto :goto_5

    .line 50
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v1

    .line 51
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    if-lt v2, v3, :cond_7

    goto :goto_4

    .line 52
    :cond_7
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 53
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 54
    invoke-virtual {p0, v5, v4, v2}, Le/h/a/c/q0/e;->dB(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 55
    :cond_8
    :goto_5
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x45000000    # -0.001953125f

    invoke-direct {p3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    new-instance p2, Le/h/a/c/q0/s$c;

    invoke-direct {p2, p0}, Le/h/a/c/q0/s$c;-><init>(Le/h/a/c/q0/s;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 58
    iget-boolean p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->o:Z

    if-nez p2, :cond_9

    .line 59
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 60
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-object p1
.end method
