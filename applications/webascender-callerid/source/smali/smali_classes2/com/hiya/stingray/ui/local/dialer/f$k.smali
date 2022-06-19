.class final Lcom/hiya/stingray/ui/local/dialer/f$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/f;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$k;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$k;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/dialer/f;->c(Lcom/hiya/stingray/ui/local/dialer/f;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/dialer/f$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/hiya/stingray/ui/local/dialer/f$a;->w0(Z)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$k;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/dialer/f;->i(Z)V

    :cond_1
    return-void
.end method
