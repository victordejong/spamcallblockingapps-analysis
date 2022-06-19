.class public final Le/a/d/c/a0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a0/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/d/s/c;

.field public final synthetic c:Le/a/d/c/a0/b;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/d/s/c;Le/a/d/c/a0/b;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a0/b$b;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/d/c/a0/b$b;->b:Le/a/d/s/c;

    iput-object p3, p0, Le/a/d/c/a0/b$b;->c:Le/a/d/c/a0/b;

    iput-object p4, p0, Le/a/d/c/a0/b$b;->d:Landroid/view/View;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/c/a0/b$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/d/c/a0/b$b;->b:Le/a/d/s/c;

    iget-object v0, v0, Le/a/d/s/c;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v1, "buttonRejectCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    iget-object v2, p0, Le/a/d/c/a0/b$b;->b:Le/a/d/s/c;

    iget-object v2, v2, Le/a/d/s/c;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v0, p0, Le/a/d/c/a0/b$b;->b:Le/a/d/s/c;

    iget-object v0, v0, Le/a/d/s/c;->b:Landroid/widget/ImageButton;

    const-string v2, "buttonMessage"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    iget-object v3, p0, Le/a/d/c/a0/b$b;->b:Le/a/d/s/c;

    iget-object v3, v3, Le/a/d/s/c;->b:Landroid/widget/ImageButton;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 4
    iget-object v0, p0, Le/a/d/c/a0/b$b;->c:Le/a/d/c/a0/b;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v3, v0, Lcom/truecaller/voip/ui/VoipActivity;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/voip/ui/VoipActivity;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/truecaller/voip/ui/VoipActivity;->ra(IIZ)V

    :cond_1
    return-void
.end method
