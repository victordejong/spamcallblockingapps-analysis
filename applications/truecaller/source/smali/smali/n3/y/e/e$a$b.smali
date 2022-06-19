.class public Ln3/y/e/e$a$b;
.super Ln3/y/e/e$a$e;
.source "SourceFile"

# interfaces
.implements Ln3/y/e/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final c:Ln3/y/e/e$a$e;


# direct methods
.method public constructor <init>(Ln3/y/e/e$a;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/y/e/e$a$e;-><init>(Ln3/y/e/e$a;Landroid/content/Context;)V

    .line 2
    new-instance v0, Ln3/y/e/e$a$e;

    invoke-direct {v0, p1, p2}, Ln3/y/e/e$a$e;-><init>(Ln3/y/e/e$a;Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    .line 3
    new-instance p1, Ln3/y/e/e$a$e$b;

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f666666    # 0.9f

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ln3/y/e/e$a$e$b;-><init>(Ln3/y/e/e$a$e;FFFF)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Ln3/y/e/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    .line 3
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ln3/y/e/e$a$d;

    .line 4
    invoke-virtual {v2, p1}, Ln3/y/e/e$a$d;->c(Ln3/y/e/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    .line 3
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ln3/y/e/e$a$d;

    .line 4
    iput p1, v2, Ln3/y/e/e$a$d;->i:F

    .line 5
    invoke-virtual {v2}, Ln3/y/e/e$a$d;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
