.class public final Le/a/d/c/b/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/d/s/d;

.field public final synthetic c:Le/a/d/c/b/a;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/d/s/d;Le/a/d/c/b/a;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/b/a$c;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/d/c/b/a$c;->b:Le/a/d/s/d;

    iput-object p3, p0, Le/a/d/c/b/a$c;->c:Le/a/d/c/b/a;

    iput-object p4, p0, Le/a/d/c/b/a$c;->d:Landroid/view/View;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/c/b/a$c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/d/c/b/a$c;->b:Le/a/d/s/d;

    iget-object v0, v0, Le/a/d/s/d;->c:Landroid/widget/ToggleButton;

    const-string v1, "toggleAudioRoute"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLeft()I

    move-result v0

    iget-object v2, p0, Le/a/d/c/b/a$c;->b:Le/a/d/s/d;

    iget-object v2, v2, Le/a/d/s/d;->c:Landroid/widget/ToggleButton;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v0, p0, Le/a/d/c/b/a$c;->b:Le/a/d/s/d;

    iget-object v0, v0, Le/a/d/s/d;->d:Landroid/widget/ToggleButton;

    const-string v2, "toggleMute"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLeft()I

    move-result v0

    iget-object v3, p0, Le/a/d/c/b/a$c;->b:Le/a/d/s/d;

    iget-object v3, v3, Le/a/d/s/d;->d:Landroid/widget/ToggleButton;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 4
    iget-object v0, p0, Le/a/d/c/b/a$c;->c:Le/a/d/c/b/a;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v3, v0, Lcom/truecaller/voip/ui/VoipActivity;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/voip/ui/VoipActivity;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/truecaller/voip/ui/VoipActivity;->ra(IIZ)V

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/voip/ui/VoipActivity;->pa()Le/a/d/s/a;

    move-result-object v0

    iget-object v0, v0, Le/a/d/s/a;->h:Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;

    invoke-virtual {v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getPresenter$voip_release()Le/a/d/c/a/p/a/c;

    move-result-object v0

    check-cast v0, Le/a/d/c/a/p/a/h;

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/e;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/e;->setModeIncoming(Z)V

    :cond_1
    return-void
.end method
