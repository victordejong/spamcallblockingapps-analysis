.class public final Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;
.super Le/a/y/a/g/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/y/a/g/d<",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u000cJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;",
        "Le/a/y/a/g/d;",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;",
        "Landroid/view/View$OnClickListener;",
        "",
        "getLayoutResource",
        "()I",
        "Landroid/view/View;",
        "v",
        "Ls1/s;",
        "onClick",
        "(Landroid/view/View;)V",
        "a",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Le/a/y/a/g/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$layout;->layout_send_flash_footer:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$id;->sendMessage:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/y/a/g/d;->getActionListener()Le/a/y/a/g/d$a;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;->N0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Le/a/y/a/g/d;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
