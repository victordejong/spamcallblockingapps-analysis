.class public final Lcom/truecaller/ui/view/AvailabilityView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Le/a/l4/c$b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0008\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eR4\u0010\u0018\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/ui/view/AvailabilityView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Le/a/l4/c$b;",
        "Le/a/l4/e;",
        "presence",
        "Ls1/s;",
        "setAvailability",
        "(Le/a/l4/e;)V",
        "Le/a/l4/c$a;",
        "handle",
        "f",
        "(Le/a/l4/c$a;)V",
        "ki",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "g",
        "Lkotlin/Function1;",
        "",
        "Ls1/z/b/l;",
        "getCustomTextProvider",
        "()Ls1/z/b/l;",
        "setCustomTextProvider",
        "(Ls1/z/b/l;)V",
        "customTextProvider",
        "Le/a/l4/c$a;",
        "availabilityHandle",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public f:Le/a/l4/c$a;

.field public g:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Le/a/l4/e;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final setAvailability(Le/a/l4/e;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p1, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    .line 5
    :goto_1
    invoke-virtual {p0, v0, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/ui/view/AvailabilityView;->g:Ls1/z/b/l;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 8
    :cond_2
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_4

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/truecaller/ui/view/AvailabilityView;->g:Ls1/z/b/l;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "context"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v5, v3}, Le/a/l4/e;->d(Le/a/l4/e;Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p1, Le/a/e/m0$b;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Le/a/e/m0$b;-><init>(Landroid/content/Context;)V

    .line 11
    iput-boolean v5, p1, Le/a/e/m0$b;->c:Z

    const/4 v2, 0x6

    .line 12
    iput v2, p1, Le/a/e/m0$b;->e:I

    const/16 v2, 0xc

    .line 13
    iput v2, p1, Le/a/e/m0$b;->f:I

    .line 14
    sget-object v2, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    .line 15
    :goto_3
    iput-boolean v4, p1, Le/a/e/m0$b;->b:Z

    .line 16
    invoke-virtual {p1}, Le/a/e/m0$b;->a()Le/a/e/m0;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final f(Le/a/l4/c$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/AvailabilityView;->f:Le/a/l4/c$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/l4/c$a;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Le/a/l4/c$a;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/truecaller/ui/view/AvailabilityView;->setAvailability(Le/a/l4/e;)V

    .line 4
    iput-object p1, p0, Lcom/truecaller/ui/view/AvailabilityView;->f:Le/a/l4/c$a;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/ui/view/AvailabilityView;->g()V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/AvailabilityView;->f:Le/a/l4/c$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/l4/c$a;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1}, Lcom/truecaller/ui/view/AvailabilityView;->setAvailability(Le/a/l4/e;)V

    .line 6
    invoke-interface {v0, p0}, Le/a/l4/c$a;->b(Le/a/l4/c$b;)V

    :cond_0
    return-void
.end method

.method public final getCustomTextProvider()Ls1/z/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/l<",
            "Le/a/l4/e;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/AvailabilityView;->g:Ls1/z/b/l;

    return-object v0
.end method

.method public ki(Le/a/l4/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/ui/view/AvailabilityView;->setAvailability(Le/a/l4/e;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ui/view/AvailabilityView;->g()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/view/AvailabilityView;->f:Le/a/l4/c$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/l4/c$a;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Le/a/l4/c$a;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/truecaller/ui/view/AvailabilityView;->setAvailability(Le/a/l4/e;)V

    .line 4
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method public final setCustomTextProvider(Ls1/z/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/l4/e;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/view/AvailabilityView;->g:Ls1/z/b/l;

    return-void
.end method
