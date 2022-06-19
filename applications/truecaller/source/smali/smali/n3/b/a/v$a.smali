.class public Ln3/b/a/v$a;
.super Ln3/k/i/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/v;


# direct methods
.method public constructor <init>(Ln3/b/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/v$a;->a:Ln3/b/a/v;

    invoke-direct {p0}, Ln3/k/i/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/b/a/v$a;->a:Ln3/b/a/v;

    iget-boolean v0, p1, Ln3/b/a/v;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Ln3/b/a/v;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Ln3/b/a/v$a;->a:Ln3/b/a/v;

    iget-object p1, p1, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/b/a/v$a;->a:Ln3/b/a/v;

    iget-object p1, p1, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Ln3/b/a/v$a;->a:Ln3/b/a/v;

    iget-object p1, p1, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object p1, p0, Ln3/b/a/v$a;->a:Ln3/b/a/v;

    const/4 v0, 0x0

    iput-object v0, p1, Ln3/b/a/v;->u:Ln3/b/e/g;

    .line 7
    iget-object v1, p1, Ln3/b/a/v;->k:Ln3/b/e/a$a;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p1, Ln3/b/a/v;->j:Ln3/b/e/a;

    invoke-interface {v1, v2}, Ln3/b/e/a$a;->zn(Ln3/b/e/a;)V

    .line 9
    iput-object v0, p1, Ln3/b/a/v;->j:Ln3/b/e/a;

    .line 10
    iput-object v0, p1, Ln3/b/a/v;->k:Ln3/b/e/a$a;

    .line 11
    :cond_1
    iget-object p1, p0, Ln3/b/a/v$a;->a:Ln3/b/a/v;

    iget-object p1, p1, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 12
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    :cond_2
    return-void
.end method
