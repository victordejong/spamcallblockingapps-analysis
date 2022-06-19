.class public final synthetic Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$c;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/p<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;)V
    .locals 7

    const-class v3, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    const/4 v1, 0x2

    const-string v4, "onFocusChange"

    const-string v5, "onFocusChange(Landroid/view/View;Z)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object p2, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 3
    sget v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->E:I

    .line 4
    invoke-virtual {p2}, Le/a/y/a/g/d;->getActionListener()Le/a/y/a/g/d$a;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;->V(Z)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
