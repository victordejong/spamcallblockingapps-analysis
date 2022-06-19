.class public Ln3/b/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/k$b;->a:Ln3/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$b;->a:Ln3/b/a/k;

    invoke-virtual {v0}, Ln3/b/a/k;->P()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$b;->a:Ln3/b/a/k;

    .line 2
    invoke-virtual {v0}, Ln3/b/a/k;->T()V

    .line 3
    iget-object v0, v0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ln3/b/a/a;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/a/k$b;->a:Ln3/b/a/k;

    invoke-virtual {v0}, Ln3/b/a/k;->P()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 2
    sget v3, Landroidx/appcompat/R$attr;->homeAsUpIndicator:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 3
    invoke-static {v0, v1, v2}, Ln3/b/f/r0;->p(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ln3/b/f/r0;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v4}, Ln3/b/f/r0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    iget-object v0, v0, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public d(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$b;->a:Ln3/b/a/k;

    .line 2
    invoke-virtual {v0}, Ln3/b/a/k;->T()V

    .line 3
    iget-object v0, v0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ln3/b/a/a;->t(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v0, p2}, Ln3/b/a/a;->r(I)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$b;->a:Ln3/b/a/k;

    .line 2
    invoke-virtual {v0}, Ln3/b/a/k;->T()V

    .line 3
    iget-object v0, v0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ln3/b/a/a;->r(I)V

    :cond_0
    return-void
.end method
