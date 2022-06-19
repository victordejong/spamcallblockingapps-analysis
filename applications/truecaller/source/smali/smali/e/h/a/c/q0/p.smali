.class public Le/h/a/c/q0/p;
.super Le/h/a/c/q0/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v0, Lcom/clevertap/android/sdk/R$layout;->inapp_cover:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lcom/clevertap/android/sdk/R$id;->inapp_cover_frame_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 4
    sget v0, Lcom/clevertap/android/sdk/R$id;->cover_relative_layout:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 6
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 8
    sget v2, Lcom/clevertap/android/sdk/R$id;->cover_linear_layout:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 9
    sget v3, Lcom/clevertap/android/sdk/R$id;->cover_button1:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 10
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget v4, Lcom/clevertap/android/sdk/R$id;->cover_button2:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 12
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget v4, Lcom/clevertap/android/sdk/R$id;->backgroundImage:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 14
    iget-object v5, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v6, p0, Le/h/a/c/q0/a;->d:I

    invoke-virtual {v5, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 15
    iget-object v5, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v6, p0, Le/h/a/c/q0/a;->d:I

    invoke-virtual {v5, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 16
    iget-object v5, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v6, p0, Le/h/a/c/q0/a;->d:I

    .line 17
    invoke-virtual {v5, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 18
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 20
    new-instance v5, Le/h/a/c/q0/a$a;

    invoke-direct {v5, p0}, Le/h/a/c/q0/a$a;-><init>(Le/h/a/c/q0/a;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_0
    sget v4, Lcom/clevertap/android/sdk/R$id;->cover_title:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 22
    iget-object v5, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 23
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v5, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 26
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->K:Ljava/lang/String;

    .line 27
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    sget v4, Lcom/clevertap/android/sdk/R$id;->cover_message:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    iget-object v4, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 30
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v4, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 33
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->B:Ljava/lang/String;

    .line 34
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 36
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    .line 38
    iget p3, p0, Le/h/a/c/q0/a;->d:I

    if-ne p3, v6, :cond_1

    .line 39
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne p3, v7, :cond_2

    const/4 p3, 0x4

    .line 40
    invoke-virtual {v3, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    invoke-virtual {p0, v2, p3, v1}, Le/h/a/c/q0/e;->dB(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V

    goto :goto_3

    .line 42
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    if-lt v2, v6, :cond_4

    goto :goto_2

    .line 44
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 45
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 46
    invoke-virtual {p0, v4, v3, v2}, Le/h/a/c/q0/e;->dB(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const p3, 0x30a68

    .line 47
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/clevertap/android/sdk/customviews/CloseImageView;

    .line 48
    new-instance p3, Le/h/a/c/q0/p$a;

    invoke-direct {p3, p0}, Le/h/a/c/q0/p$a;-><init>(Le/h/a/c/q0/p;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 50
    iget-boolean p3, p3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->o:Z

    if-nez p3, :cond_6

    .line 51
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 52
    :cond_6
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p1
.end method
