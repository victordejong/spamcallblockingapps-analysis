.class public final synthetic Le/a/e/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/i0;->a:Lcom/truecaller/ui/TruecallerInit;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Le/a/e/i0;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 1
    iget-object v1, v0, Lcom/truecaller/ui/TruecallerInit;->Q:Le/a/b0/a/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, v1, Le/a/b0/a/n;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    move v3, v2

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    :goto_1
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    iget-object p1, v0, Lcom/truecaller/ui/TruecallerInit;->v:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    move-object v1, p2

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 6
    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_3

    if-eqz v1, :cond_4

    .line 8
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v0, v1, Landroid/graphics/Insets;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v2

    .line 11
    :goto_4
    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object p2
.end method
