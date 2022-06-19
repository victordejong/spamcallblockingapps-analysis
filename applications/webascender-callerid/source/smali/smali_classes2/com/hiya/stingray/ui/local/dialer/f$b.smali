.class final Lcom/hiya/stingray/ui/local/dialer/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/f;->i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/f;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$b;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/local/dialer/f$b;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/dialer/f$b;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f$b;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/dialer/f;->c(Lcom/hiya/stingray/ui/local/dialer/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/dialer/f$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/dialer/f$b;->g:Z

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/local/dialer/f$a;->P(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/f$b;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/dialer/f;->d(Lcom/hiya/stingray/ui/local/dialer/f;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/dialer/f$b;->g:Z

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method
