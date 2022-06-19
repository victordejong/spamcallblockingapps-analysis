.class public final Lk1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk1;->a:I

    iput-object p2, p0, Lk1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lk1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lk1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lk1;->a:I

    const-string v0, "Image"

    const/4 v1, 0x0

    const-string v2, "Video ad contain no MediaView, hasVideoContent="

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    .line 1
    iget-object p1, p0, Lk1;->b:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iget-object v4, p0, Lk1;->c:Ljava/lang/Object;

    check-cast v4, Le/a/i/f0/m/c;

    .line 2
    sget v5, Le/a/i/a/d;->e:I

    .line 3
    iget-object v5, v4, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 4
    check-cast v5, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v6

    if-nez v6, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/VideoController;->hasVideoContent()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    sget v2, Lcom/truecaller/ads/R$id;->ads_view_video_frame:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Can\'t find view with ID ads_view_video_frame "

    .line 8
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    const-string p1, "Can\'t attach to View that is not ViewGroup"

    .line 10
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    new-instance v1, Le/a/i/a/d;

    invoke-direct {v1, p1, v4}, Le/a/i/a/d;-><init>(Landroid/view/ViewGroup;Le/a/i/f0/m/c;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestFocus()Z

    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 15
    iget-object p1, p0, Lk1;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->performClick(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 16
    throw p1

    .line 17
    :cond_5
    iget-object p1, p0, Lk1;->b:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iget-object v4, p0, Lk1;->c:Ljava/lang/Object;

    check-cast v4, Le/a/i/f0/m/c;

    const-string v5, "activity"

    .line 18
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adHolder"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v5, v4, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 20
    check-cast v5, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 21
    invoke-interface {v5}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v6

    if-nez v6, :cond_6

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/VideoController;->hasVideoContent()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_6
    sput-object v4, Le/a/i/a/a;->b:Le/a/i/f0/m/c;

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-class v2, Le/a/i/a/a;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    :goto_1
    if-eqz v1, :cond_7

    .line 25
    iget-object p1, p0, Lk1;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->performClick(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
