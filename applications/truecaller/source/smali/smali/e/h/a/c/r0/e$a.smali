.class public Le/h/a/c/r0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/e;->N4(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field public final synthetic b:Le/h/a/c/r0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/e;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/e$a;->b:Le/h/a/c/r0/e;

    iput-object p2, p0, Le/h/a/c/r0/e$a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/h/a/c/r0/e$a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    cmpl-float p1, p1, v0

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/h/a/c/r0/e$a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 4
    iget-object p1, p0, Le/h/a/c/r0/e$a;->b:Le/h/a/c/r0/e;

    .line 5
    iget-object v0, p1, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    .line 6
    iget-object p1, p1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_volume_off:I

    .line 8
    sget-object v3, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 9
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Le/h/a/c/r0/e$a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 13
    :cond_2
    iget-object p1, p0, Le/h/a/c/r0/e$a;->b:Le/h/a/c/r0/e;

    .line 14
    iget-object v0, p1, Le/h/a/c/r0/e;->l:Landroid/widget/ImageView;

    .line 15
    iget-object p1, p1, Le/h/a/c/r0/e;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_volume_on:I

    .line 17
    sget-object v3, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 18
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method
