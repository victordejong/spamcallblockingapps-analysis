.class final Lcom/hiya/stingray/ui/local/dialer/f$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/f;->o()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$h;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$h;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/dialer/f;->c(Lcom/hiya/stingray/ui/local/dialer/f;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/dialer/f$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hiya/stingray/ui/local/dialer/f$a;->q0()V

    :cond_0
    return-void
.end method
