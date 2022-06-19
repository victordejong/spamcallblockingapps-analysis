.class public final Lcom/truecaller/flashsdk/ui/send/SendActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/send/SendActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/send/SendActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$i;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$i;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-static {v0}, Lcom/truecaller/flashsdk/ui/send/SendActivity;->wa(Lcom/truecaller/flashsdk/ui/send/SendActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$i;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-static {v0}, Lcom/truecaller/flashsdk/ui/send/SendActivity;->wa(Lcom/truecaller/flashsdk/ui/send/SendActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0, v4, v2, v3, v1}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$i;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    .line 4
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0, v4, v2, v3, v1}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "imageText"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
