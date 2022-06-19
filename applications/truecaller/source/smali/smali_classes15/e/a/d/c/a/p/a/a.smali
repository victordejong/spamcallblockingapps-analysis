.class public abstract Le/a/d/c/a/p/a/a;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# instance fields
.field public t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Le/a/d/c/a/p/a/a;->f1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Le/a/d/c/a/p/a/a;->f1()V

    return-void
.end method


# virtual methods
.method public final Yt()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c/a/p/a/a;->t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ldagger/hilt/android/internal/managers/ViewComponentManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/hilt/android/internal/managers/ViewComponentManager;-><init>(Landroid/view/View;Z)V

    .line 3
    iput-object v0, p0, Le/a/d/c/a/p/a/a;->t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/d/c/a/p/a/a;->t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->Yt()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/d/c/a/p/a/a;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/d/c/a/p/a/a;->u:Z

    .line 3
    invoke-virtual {p0}, Le/a/d/c/a/p/a/a;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c/a/p/a/n;

    move-object v1, p0

    check-cast v1, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;

    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/n;->d(Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;)V

    :cond_0
    return-void
.end method
