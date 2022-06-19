.class public Ln3/r/a/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/r/a/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/r/a/c0;

.field public final synthetic b:Ln3/r/a/v;


# direct methods
.method public constructor <init>(Ln3/r/a/v;Ln3/r/a/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/v$a;->b:Ln3/r/a/v;

    iput-object p2, p0, Ln3/r/a/v$a;->a:Ln3/r/a/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/r/a/v$a;->a:Ln3/r/a/c0;

    .line 2
    iget-object v0, p1, Ln3/r/a/c0;->c:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p1}, Ln3/r/a/c0;->k()V

    .line 4
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Ln3/r/a/v$a;->b:Ln3/r/a/v;

    iget-object v0, v0, Ln3/r/a/v;->a:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, v0}, Ln3/r/a/u0;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Ln3/r/a/u0;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ln3/r/a/u0;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
