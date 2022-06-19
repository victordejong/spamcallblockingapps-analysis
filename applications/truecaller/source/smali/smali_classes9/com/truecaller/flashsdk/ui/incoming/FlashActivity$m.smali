.class public final Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->Q9(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$m;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$m;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    check-cast p1, Le/a/y/a/h/t;

    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$m;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->sa()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/y/a/h/t;->l(Z)V

    return-void
.end method
