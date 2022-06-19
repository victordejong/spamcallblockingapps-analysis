.class public final Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;
.super Lcom/google/android/material/chip/Chip;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0008\u0016\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001d\u0010\n\u001a\u00020\u00058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;",
        "Lcom/google/android/material/chip/Chip;",
        "Ls1/s;",
        "onDetachedFromWindow",
        "()V",
        "Le/a/p5/i0;",
        "x",
        "Ls1/g;",
        "getResourceProvider",
        "()Le/a/p5/i0;",
        "resourceProvider",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final x:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip$a;

    invoke-direct {p1, p0}, Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip$a;-><init>(Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;->x:Ls1/g;

    return-void
.end method

.method private final getResourceProvider()Le/a/p5/i0;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/i0;

    return-object v0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->onDetachedFromWindow()V

    return-void
.end method
