.class public Le/h/a/c/q0/x;
.super Le/h/a/c/q0/b;
.source "SourceFile"


# instance fields
.field public h:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 2
    iget-boolean p3, p3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0}, Le/h/a/c/q0/b;->VA()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    sget p3, Lcom/clevertap/android/sdk/R$layout;->tab_inapp_interstitial_image:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    sget p3, Lcom/clevertap/android/sdk/R$layout;->inapp_interstitial_image:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    :goto_0
    sget p2, Lcom/clevertap/android/sdk/R$id;->inapp_interstitial_image_frame_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 7
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x30a68

    .line 8
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/clevertap/android/sdk/customviews/CloseImageView;

    .line 9
    sget v1, Lcom/clevertap/android/sdk/R$id;->interstitial_image_relative_layout:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Le/h/a/c/q0/x;->h:Landroid/widget/RelativeLayout;

    .line 10
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 11
    iget-object v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 13
    iget-object v1, p0, Le/h/a/c/q0/x;->h:Landroid/widget/RelativeLayout;

    sget v2, Lcom/clevertap/android/sdk/R$id;->interstitial_image:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 14
    iget v2, p0, Le/h/a/c/q0/a;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v2, p0, Le/h/a/c/q0/x;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Le/h/a/c/q0/x$b;

    invoke-direct {v3, p0, p2, p3}, Le/h/a/c/q0/x$b;-><init>(Le/h/a/c/q0/x;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v2, p0, Le/h/a/c/q0/x;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Le/h/a/c/q0/x$a;

    invoke-direct {v3, p0, p2, p3}, Le/h/a/c/q0/x$a;-><init>(Le/h/a/c/q0/x;Landroid/widget/FrameLayout;Lcom/clevertap/android/sdk/customviews/CloseImageView;)V

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 19
    :goto_1
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v2, p0, Le/h/a/c/q0/a;->d:I

    invoke-virtual {p2, v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v2, p0, Le/h/a/c/q0/a;->d:I

    invoke-virtual {p2, v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 21
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget v2, p0, Le/h/a/c/q0/a;->d:I

    .line 22
    invoke-virtual {p2, v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 23
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 25
    new-instance p2, Le/h/a/c/q0/a$a;

    invoke-direct {p2, p0}, Le/h/a/c/q0/a$a;-><init>(Le/h/a/c/q0/a;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_3
    new-instance p2, Le/h/a/c/q0/x$c;

    invoke-direct {p2, p0}, Le/h/a/c/q0/x$c;-><init>(Le/h/a/c/q0/x;)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 28
    iget-boolean p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->o:Z

    if-nez p2, :cond_4

    const/16 p2, 0x8

    .line 29
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p1
.end method
