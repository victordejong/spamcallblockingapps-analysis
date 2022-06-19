.class public Ln3/e/d/w;
.super Ln3/e/b/b1;
.source "SourceFile"


# static fields
.field public static final d:Landroid/graphics/PointF;


# instance fields
.field public final b:Ln3/e/d/u;

.field public c:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Ln3/e/d/w;->d:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Ln3/e/d/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/e/b/b1;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/d/w;->b:Ln3/e/d/u;

    return-void
.end method
