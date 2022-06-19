.class public final Le/a/b/a/a/a/c/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/m/r0;

.field public final synthetic b:Le/a/b/a/a/a/c/a;


# direct methods
.method public constructor <init>(Le/a/b/m/r0;Le/a/b/a/a/a/c/a;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/c/a$g;->a:Le/a/b/m/r0;

    iput-object p2, p0, Le/a/b/a/a/a/c/a$g;->b:Le/a/b/a/a/a/c/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/a/a/a/c/a$g;->a:Le/a/b/m/r0;

    iget-object v0, v0, Le/a/b/m/r0;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "parentLayout"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Le/a/b/a/a/a/c/a$g;->b:Le/a/b/a/a/a/c/a;

    .line 3
    sget-object v1, Le/a/b/a/a/a/c/a;->h:[Ls1/a/l;

    .line 4
    invoke-virtual {v0}, Le/a/b/a/a/a/c/a;->PA()Le/a/b/a/a/d/d/b;

    move-result-object v1

    .line 5
    iget-object v1, v1, Le/a/b/a/a/d/d/b;->a:Ln3/v/i0;

    .line 6
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->W(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string v2, "Transformations.distinctUntilChanged(this)"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v2

    new-instance v3, Le/a/b/a/a/a/c/b;

    invoke-direct {v3, v0}, Le/a/b/a/a/a/c/b;-><init>(Le/a/b/a/a/a/c/a;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    const/4 v0, 0x0

    return v0
.end method
