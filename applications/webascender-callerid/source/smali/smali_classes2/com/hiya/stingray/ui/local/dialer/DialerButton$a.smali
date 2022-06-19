.class final Lcom/hiya/stingray/ui/local/dialer/DialerButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/DialerButton;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/DialerButton;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/DialerButton;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton$a;->f:Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton$a;->f:Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->getLongPress()Lkotlin/w/b/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton$a;->f:Lcom/hiya/stingray/ui/local/dialer/DialerButton;

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
