.class public Ln3/i/a/b/s$i;
.super Ln3/i/a/b/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/i/a/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/i/a/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;FJLn3/i/a/b/d;)Z
    .locals 6

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Ln3/i/a/b/s;->b(FJLandroid/view/View;Ln3/i/a/b/d;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 2
    iget-boolean p1, p0, Ln3/i/a/b/s;->h:Z

    return p1
.end method
