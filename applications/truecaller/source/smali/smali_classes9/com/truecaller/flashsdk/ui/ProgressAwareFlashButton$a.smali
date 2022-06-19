.class public final Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$a;->a:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;

    const-wide/16 v0, 0x64

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$a;->a:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->s:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;->a()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$a;->a:Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;->p:Landroid/widget/ProgressBar;

    long-to-int p1, p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
