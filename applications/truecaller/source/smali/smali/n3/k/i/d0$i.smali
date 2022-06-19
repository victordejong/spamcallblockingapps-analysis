.class public Ln3/k/i/d0$i;
.super Ln3/k/i/d0$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/i/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static final r:Ln3/k/i/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Ln3/k/i/d0;->k(Landroid/view/WindowInsets;)Ln3/k/i/d0;

    move-result-object v0

    sput-object v0, Ln3/k/i/d0$i;->r:Ln3/k/i/d0;

    return-void
.end method

.method public constructor <init>(Ln3/k/i/d0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/k/i/d0$h;-><init>(Ln3/k/i/d0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)Ln3/k/c/b;
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0x100

    if-gt v3, v4, :cond_9

    and-int v4, p1, v3

    if-eqz v4, :cond_8

    if-eq v3, v2, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x40

    if-eq v3, v4, :cond_1

    const/16 v4, 0x80

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v4

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v4

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v4

    goto :goto_1

    .line 6
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    goto :goto_1

    .line 7
    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    goto :goto_1

    .line 8
    :cond_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    goto :goto_1

    .line 9
    :cond_7
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    :goto_1
    or-int/2addr v1, v4

    :cond_8
    :goto_2
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 11
    invoke-static {p1}, Ln3/k/c/b;->c(Landroid/graphics/Insets;)Ln3/k/c/b;

    move-result-object p1

    return-object p1
.end method
