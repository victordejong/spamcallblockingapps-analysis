.class public Ln3/b/a/n$a;
.super Ln3/k/i/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b/a/n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/n;


# direct methods
.method public constructor <init>(Ln3/b/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/n$a;->a:Ln3/b/a/n;

    invoke-direct {p0}, Ln3/k/i/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/a/n$a;->a:Ln3/b/a/n;

    iget-object p1, p1, Ln3/b/a/n;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Ln3/b/a/n$a;->a:Ln3/b/a/n;

    iget-object p1, p1, Ln3/b/a/n;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->r:Ln3/k/i/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln3/k/i/z;->d(Ln3/k/i/a0;)Ln3/k/i/z;

    .line 3
    iget-object p1, p0, Ln3/b/a/n$a;->a:Ln3/b/a/n;

    iget-object p1, p1, Ln3/b/a/n;->a:Ln3/b/a/k;

    iput-object v0, p1, Ln3/b/a/k;->r:Ln3/k/i/z;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/a/n$a;->a:Ln3/b/a/n;

    iget-object p1, p1, Ln3/b/a/n;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
