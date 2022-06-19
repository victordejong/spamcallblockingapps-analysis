.class public final Lcom/truecaller/videocallerid/ui/view/PreviewView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/view/PreviewView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/b0/a/b/a;",
        "avatarXPresenter",
        "Ls1/s;",
        "setAvatar",
        "(Le/a/b0/a/b/a;)V",
        "Le/a/k/a/k/l;",
        "videoConfig",
        "setCompactPreviewConfig",
        "(Le/a/k/a/k/l;)V",
        "setNormalPreviewConfig",
        "",
        "showElevation",
        "setupVideoElevation",
        "(Z)V",
        "Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;",
        "previewVideo",
        "f1",
        "(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;Le/a/b0/a/b/a;)V",
        "",
        "name",
        "setProfileName",
        "(Ljava/lang/String;)V",
        "setPhoneNumber",
        "setCountry",
        "",
        "u",
        "I",
        "type",
        "Ln3/j0/a;",
        "t",
        "Ln3/j0/a;",
        "binding",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public t:Ln3/j0/a;

.field public u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/truecaller/videocallerid/R$styleable;->PreviewView:[I

    .line 5
    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    :try_start_0
    sget v1, Lcom/truecaller/videocallerid/R$styleable;->PreviewView_type:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const-string v2, "ViewVideoCallerIdPreview\u2026ntext), this@PreviewView)"

    if-ne v0, v1, :cond_0

    .line 7
    :try_start_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Le/a/k/m/v;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le/a/k/m/v;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Le/a/k/m/w;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le/a/k/m/w;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static synthetic g1(Lcom/truecaller/videocallerid/ui/view/PreviewView;Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;Le/a/b0/a/b/a;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/videocallerid/ui/view/PreviewView;->f1(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;Le/a/b0/a/b/a;)V

    return-void
.end method

.method private final setAvatar(Le/a/b0/a/b/a;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->u:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v0, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewCompactBinding"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/k/m/w;

    .line 3
    iget-object v0, p1, Le/a/k/m/w;->b:Landroid/view/View;

    const-string v2, "viewVideoCallerIdPreviewCompactBinding.circle"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p1, Le/a/k/m/w;->e:Landroid/view/View;

    const-string v0, "viewVideoCallerIdPreviewCompactBinding.rect1"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v2, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k/m/v;

    .line 6
    iget-object v2, v0, Le/a/k/m/v;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const-string v3, "viewVideoCallerIdPreviewBinding.avatar"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, v0, Le/a/k/m/v;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    :goto_0
    return-void
.end method

.method private final setCompactPreviewConfig(Le/a/k/a/k/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v1, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewCompactBinding"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k/m/w;

    .line 2
    iget-object v0, v0, Le/a/k/m/w;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    .line 3
    sget v1, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->i:I

    const-string v1, ""

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->g(Le/a/k/a/k/l;Ljava/lang/String;)V

    return-void
.end method

.method private final setNormalPreviewConfig(Le/a/k/a/k/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v1, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k/m/v;

    .line 2
    iget-object v0, v0, Le/a/k/m/v;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    .line 3
    sget v1, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->i:I

    const-string v1, ""

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->g(Le/a/k/a/k/l;Ljava/lang/String;)V

    return-void
.end method

.method private final setupVideoElevation(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->u:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    instance-of v2, v0, Le/a/k/m/w;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Le/a/k/m/w;

    if-eqz v1, :cond_4

    iget-object v0, v1, Le/a/k/m/w;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    if-eqz v0, :cond_4

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    goto :goto_3

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    instance-of v2, v0, Le/a/k/m/v;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    check-cast v1, Le/a/k/m/v;

    if-eqz v1, :cond_4

    iget-object v0, v1, Le/a/k/m/v;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    if-eqz v0, :cond_4

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final f1(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;Le/a/b0/a/b/a;)V
    .locals 4

    const-string v0, "videoConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewVideo"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->u:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v2, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewCompactBinding"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k/m/w;

    .line 3
    iget-object v2, v0, Le/a/k/m/w;->b:Landroid/view/View;

    const-string v3, "viewVideoCallerIdPreviewCompactBinding.circle"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, v0, Le/a/k/m/w;->e:Landroid/view/View;

    const-string v2, "viewVideoCallerIdPreviewCompactBinding.rect1"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/truecaller/videocallerid/ui/view/PreviewView;->setCompactPreviewConfig(Le/a/k/a/k/l;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/truecaller/videocallerid/ui/view/PreviewView;->setNormalPreviewConfig(Le/a/k/a/k/l;)V

    .line 7
    :goto_0
    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->StockVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    if-ne p2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/truecaller/videocallerid/ui/view/PreviewView;->setupVideoElevation(Z)V

    .line 8
    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->PredefinedVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    if-eq p2, p1, :cond_2

    if-eqz p3, :cond_3

    .line 9
    :cond_2
    invoke-direct {p0, p3}, Lcom/truecaller/videocallerid/ui/view/PreviewView;->setAvatar(Le/a/b0/a/b/a;)V

    :cond_3
    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v1, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k/m/v;

    iget-object v0, v0, Le/a/k/m/v;->e:Landroid/widget/TextView;

    const-string v1, "(binding as ViewVideoCal\u2026eviewBinding).textCountry"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v1, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k/m/v;

    iget-object v0, v0, Le/a/k/m/v;->f:Landroid/widget/TextView;

    const-string v1, "(binding as ViewVideoCal\u2026wBinding).textPhoneNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setProfileName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/view/PreviewView;->t:Ln3/j0/a;

    const-string v1, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/k/m/v;

    iget-object v0, v0, Le/a/k/m/v;->g:Landroid/widget/TextView;

    const-string v1, "(binding as ViewVideoCal\u2026wBinding).textProfileName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
