.class public final Lcom/truecaller/common/ui/RippleView$Ripple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/ui/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Ripple"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/common/ui/RippleView$Ripple;",
        "",
        "",
        "time",
        "Ls1/s;",
        "setTime",
        "(I)V",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/common/ui/RippleView;


# virtual methods
.method public final setTime(I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/16 v0, 0x8fc

    if-le p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/RippleView$Ripple;->a:Lcom/truecaller/common/ui/RippleView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/truecaller/common/ui/RippleView$Ripple;->a:Lcom/truecaller/common/ui/RippleView;

    .line 3
    sget v0, Lcom/truecaller/common/ui/RippleView;->d:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method
