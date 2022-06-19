.class public final synthetic Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


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
        "Ls1/z/b/l<",
        "Ljava/lang/CharSequence;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;)V
    .locals 7

    const-class v3, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    const/4 v1, 0x1

    const-string v4, "onMessageTextChanged"

    const-string v5, "onMessageTextChanged(Ljava/lang/CharSequence;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;

    .line 3
    sget v1, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;->E:I

    .line 4
    invoke-virtual {v0}, Le/a/y/a/g/d;->getActionListener()Le/a/y/a/g/d$a;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;->T0(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
