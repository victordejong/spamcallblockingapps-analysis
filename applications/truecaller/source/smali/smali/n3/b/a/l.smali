.class public Ln3/b/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# instance fields
.field public final synthetic a:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/l;->a:Ln3/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ln3/k/i/d0;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/b/a/l;->a:Ln3/b/a/k;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ln3/b/a/k;->b0(Ln3/k/i/d0;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Ln3/k/i/d0;->d()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Ln3/k/i/d0;->e()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Ln3/k/i/d0;->c()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Ln3/k/i/d0;->i(IIII)Ln3/k/i/d0;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Ln3/k/i/s;->k(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;

    move-result-object p1

    return-object p1
.end method
