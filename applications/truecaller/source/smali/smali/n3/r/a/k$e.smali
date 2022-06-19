.class public Ln3/r/a/k$e;
.super Ln3/r/a/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/r/a/k;->createFragmentContainer()Ln3/r/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/r/a/r;

.field public final synthetic b:Ln3/r/a/k;


# direct methods
.method public constructor <init>(Ln3/r/a/k;Ln3/r/a/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/k$e;->b:Ln3/r/a/k;

    iput-object p2, p0, Ln3/r/a/k$e;->a:Ln3/r/a/r;

    invoke-direct {p0}, Ln3/r/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/k$e;->a:Ln3/r/a/r;

    invoke-virtual {v0}, Ln3/r/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/r/a/k$e;->a:Ln3/r/a/r;

    invoke-virtual {v0, p1}, Ln3/r/a/r;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/r/a/k$e;->b:Ln3/r/a/k;

    invoke-virtual {v0, p1}, Ln3/r/a/k;->onFindViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/k$e;->a:Ln3/r/a/r;

    invoke-virtual {v0}, Ln3/r/a/r;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln3/r/a/k$e;->b:Ln3/r/a/k;

    invoke-virtual {v0}, Ln3/r/a/k;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
