.class public Lcom/truecaller/flashsdk/ui/FlashButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/flashsdk/ui/FlashButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/FlashButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/FlashButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/FlashButton$a;->a:Lcom/truecaller/flashsdk/ui/FlashButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton$a;->a:Lcom/truecaller/flashsdk/ui/FlashButton;

    .line 2
    iget-object v1, v0, Lcom/truecaller/flashsdk/ui/FlashButton;->b:Landroid/widget/ImageView;

    .line 3
    iget v2, v0, Lcom/truecaller/flashsdk/ui/FlashButton;->h:I

    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/FlashButton;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/FlashButton$a;->a:Lcom/truecaller/flashsdk/ui/FlashButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/truecaller/flashsdk/ui/FlashButton;->d(I)V

    return-void
.end method
