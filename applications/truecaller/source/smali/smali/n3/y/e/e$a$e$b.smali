.class public Ln3/y/e/e$a$e$b;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/e$a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Ln3/y/e/e$a$e;)V
    .locals 0

    const/4 p1, -0x1

    .line 6
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Ln3/y/e/e$a$e;FFFF)V
    .locals 0

    const/4 p1, -0x1

    .line 1
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2
    iput p2, p0, Ln3/y/e/e$a$e$b;->a:F

    .line 3
    iput p3, p0, Ln3/y/e/e$a$e$b;->b:F

    .line 4
    iput p4, p0, Ln3/y/e/e$a$e$b;->c:F

    .line 5
    iput p5, p0, Ln3/y/e/e$a$e$b;->d:F

    return-void
.end method
