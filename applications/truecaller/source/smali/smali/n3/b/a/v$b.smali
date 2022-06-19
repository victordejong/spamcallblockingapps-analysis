.class public Ln3/b/a/v$b;
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
    iput-object p1, p0, Ln3/b/a/v$b;->a:Ln3/b/a/v;

    invoke-direct {p0}, Ln3/k/i/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/a/v$b;->a:Ln3/b/a/v;

    const/4 v0, 0x0

    iput-object v0, p1, Ln3/b/a/v;->u:Ln3/b/e/g;

    .line 2
    iget-object p1, p1, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
