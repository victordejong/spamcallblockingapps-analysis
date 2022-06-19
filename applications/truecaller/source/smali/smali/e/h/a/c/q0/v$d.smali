.class public Le/h/a/c/q0/v$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/v;->gB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/q0/v;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/v$d;->a:Le/h/a/c/q0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/h/a/c/q0/v$d;->a:Le/h/a/c/q0/v;

    .line 2
    iget-boolean v0, p1, Le/h/a/c/q0/v;->h:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p1, Le/h/a/c/q0/v;->r:Landroid/view/ViewGroup$LayoutParams;

    .line 4
    iget-object v0, p1, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p1, Le/h/a/c/q0/v;->q:Landroid/view/ViewGroup$LayoutParams;

    .line 5
    iget-object v0, p1, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p1, Le/h/a/c/q0/v;->p:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    iget-object v0, p1, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p1, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Le/h/a/c/q0/v;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    iget-object v0, p1, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p1, Le/h/a/c/q0/v;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    iget-object v0, p1, Le/h/a/c/q0/v;->i:Landroid/app/Dialog;

    iget-object v1, p1, Le/h/a/c/q0/v;->m:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Le/h/a/c/q0/v;->h:Z

    .line 11
    iget-object p1, p1, Le/h/a/c/q0/v;->i:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Le/h/a/c/q0/v;->eB()V

    :goto_0
    return-void
.end method
