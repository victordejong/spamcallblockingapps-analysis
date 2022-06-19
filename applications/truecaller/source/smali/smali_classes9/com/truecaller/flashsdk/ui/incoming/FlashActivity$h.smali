.class public final Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$h;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->D6(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$h;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    iput-boolean p2, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$h;->b:Z

    .line 1
    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$h;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$h;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->r0:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "attachView"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
