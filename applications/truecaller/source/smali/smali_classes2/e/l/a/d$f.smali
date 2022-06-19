.class public Le/l/a/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/l/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$f;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/l/a/d$f;->a:Le/l/a/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sub-float v2, p1, v0

    div-float/2addr v2, v0

    .line 3
    :goto_0
    iget-object v3, p0, Le/l/a/d$f;->a:Le/l/a/d;

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v5, v2, v4

    iget v6, v3, Le/l/a/d;->e:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, v3, Le/l/a/d;->g0:F

    sub-float v2, v4, v2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 4
    iput v2, v3, Le/l/a/d;->h0:I

    if-gez v1, :cond_1

    div-float/2addr p1, v0

    goto :goto_1

    :cond_1
    sub-float/2addr v4, p1

    div-float p1, v4, v0

    .line 5
    :goto_1
    iget v0, v3, Le/l/a/d;->f:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    add-float/2addr p1, v6

    iput p1, v3, Le/l/a/d;->i0:F

    .line 6
    iget p1, v3, Le/l/a/d;->T:F

    iget v0, v3, Le/l/a/d;->U:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 7
    iput v0, v3, Le/l/a/d;->T:F

    .line 8
    :cond_2
    invoke-virtual {v3}, Le/l/a/d;->a()V

    .line 9
    iget-object p1, p0, Le/l/a/d$f;->a:Le/l/a/d;

    iget-object v0, p1, Le/l/a/d;->Q:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Le/l/a/d;->d(Landroid/graphics/Rect;)V

    return-void
.end method
