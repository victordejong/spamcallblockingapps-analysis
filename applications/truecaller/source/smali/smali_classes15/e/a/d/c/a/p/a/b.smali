.class public abstract Le/a/d/c/a/p/a/b;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# instance fields
.field public t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iget-boolean p1, p0, Le/a/d/c/a/p/a/b;->u:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/d/c/a/p/a/b;->u:Z

    .line 4
    invoke-virtual {p0}, Le/a/d/c/a/p/a/b;->Yt()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c/a/p/a/x;

    move-object p2, p0

    check-cast p2, Le/a/d/c/a/p/a/w;

    invoke-interface {p1, p2}, Le/a/d/c/a/p/a/x;->h(Le/a/d/c/a/p/a/w;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final Yt()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c/a/p/a/b;->t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ldagger/hilt/android/internal/managers/ViewComponentManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/hilt/android/internal/managers/ViewComponentManager;-><init>(Landroid/view/View;Z)V

    .line 3
    iput-object v0, p0, Le/a/d/c/a/p/a/b;->t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/d/c/a/p/a/b;->t:Ldagger/hilt/android/internal/managers/ViewComponentManager;

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->Yt()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
