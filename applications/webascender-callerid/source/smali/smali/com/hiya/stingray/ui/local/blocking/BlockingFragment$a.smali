.class final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->q1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$a;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "event"

    .line 1
    invoke-static {p3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$a;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget p2, Lcom/hiya/stingray/o;->s:I

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    const-string v0, "blockFabMenu"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$a;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->m()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
