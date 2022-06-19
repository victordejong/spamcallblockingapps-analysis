.class public Le/h/a/c/q0/u;
.super Le/h/a/c/q0/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v0, Lcom/clevertap/android/sdk/R$layout;->inapp_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/q0/i;->i:Landroid/view/View;

    .line 3
    sget p2, Lcom/clevertap/android/sdk/R$id;->header_frame_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 4
    sget p2, Lcom/clevertap/android/sdk/R$id;->header_relative_layout:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 5
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 6
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 8
    sget p2, Lcom/clevertap/android/sdk/R$id;->header_linear_layout_1:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 9
    sget v0, Lcom/clevertap/android/sdk/R$id;->header_linear_layout_2:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 10
    sget v2, Lcom/clevertap/android/sdk/R$id;->header_linear_layout_3:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 11
    sget v2, Lcom/clevertap/android/sdk/R$id;->header_button_1:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 12
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget v3, Lcom/clevertap/android/sdk/R$id;->header_button_2:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 14
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget v3, Lcom/clevertap/android/sdk/R$id;->header_icon:I

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 16
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 17
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_1

    .line 19
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 20
    iget-object v5, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-virtual {v3, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :goto_0
    sget p2, Lcom/clevertap/android/sdk/R$id;->header_title:I

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 26
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 27
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    .line 28
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 30
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->K:Ljava/lang/String;

    .line 31
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    sget p2, Lcom/clevertap/android/sdk/R$id;->header_message:I

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 34
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 37
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->B:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 40
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 42
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x2

    if-lt v1, v0, :cond_2

    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 44
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 45
    invoke-virtual {p0, v3, v0, v1}, Le/h/a/c/q0/i;->VA(Landroid/widget/Button;Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_3
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 47
    iget p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    .line 48
    invoke-virtual {p0, v2, p1}, Le/h/a/c/q0/i;->UA(Landroid/widget/Button;Landroid/widget/Button;)V

    .line 49
    :cond_4
    iget-object p1, p0, Le/h/a/c/q0/i;->i:Landroid/view/View;

    new-instance p2, Le/h/a/c/q0/u$a;

    invoke-direct {p2, p0}, Le/h/a/c/q0/u$a;-><init>(Le/h/a/c/q0/u;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    iget-object p1, p0, Le/h/a/c/q0/i;->i:Landroid/view/View;

    return-object p1
.end method
