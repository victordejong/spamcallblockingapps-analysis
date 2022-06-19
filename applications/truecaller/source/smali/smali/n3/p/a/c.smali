.class public final Ln3/p/a/c;
.super Ln3/p/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/p/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/p/a/b<",
        "Ln3/p/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Ln3/p/a/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ln3/p/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ln3/p/a/d<",
            "TK;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ln3/p/a/b;-><init>(Ljava/lang/Object;Ln3/p/a/d;)V

    .line 6
    new-instance p1, Ln3/p/a/c$a;

    invoke-direct {p1}, Ln3/p/a/c$a;-><init>()V

    iput-object p1, p0, Ln3/p/a/c;->v:Ln3/p/a/c$a;

    .line 7
    invoke-virtual {p0}, Ln3/p/a/b;->e()F

    move-result p2

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p2, v0

    .line 8
    iput p2, p1, Ln3/p/a/c$a;->b:F

    return-void
.end method

.method public constructor <init>(Ln3/p/a/e;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ln3/p/a/b;-><init>(Ln3/p/a/e;)V

    .line 2
    new-instance p1, Ln3/p/a/c$a;

    invoke-direct {p1}, Ln3/p/a/c$a;-><init>()V

    iput-object p1, p0, Ln3/p/a/c;->v:Ln3/p/a/c$a;

    .line 3
    invoke-virtual {p0}, Ln3/p/a/b;->e()F

    move-result v0

    const/high16 v1, 0x427a0000    # 62.5f

    mul-float/2addr v0, v1

    .line 4
    iput v0, p1, Ln3/p/a/c$a;->b:F

    return-void
.end method


# virtual methods
.method public j(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/p/a/c;->v:Ln3/p/a/c$a;

    iget v1, p0, Ln3/p/a/b;->b:F

    iget v2, p0, Ln3/p/a/b;->a:F

    .line 2
    iget-object v3, v0, Ln3/p/a/c$a;->c:Ln3/p/a/b$k;

    float-to-double v4, v2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float v6, p1, p2

    iget v7, v0, Ln3/p/a/c$a;->a:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-float v4, v6

    iput v4, v3, Ln3/p/a/b$k;->b:F

    .line 3
    iget-object v3, v0, Ln3/p/a/c$a;->c:Ln3/p/a/b$k;

    iget v4, v0, Ln3/p/a/c$a;->a:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-double v5, v1

    float-to-double v1, v2

    mul-float/2addr v4, p1

    div-float/2addr v4, p2

    float-to-double p1, v4

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr p1, v1

    add-double/2addr p1, v5

    double-to-float p1, p1

    iput p1, v3, Ln3/p/a/b$k;->a:F

    .line 5
    iget-object p1, v0, Ln3/p/a/c$a;->c:Ln3/p/a/b$k;

    iget p2, p1, Ln3/p/a/b$k;->a:F

    iget p1, p1, Ln3/p/a/b$k;->b:F

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, v0, Ln3/p/a/c$a;->b:F

    cmpg-float p1, p1, p2

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    iget-object p1, v0, Ln3/p/a/c$a;->c:Ln3/p/a/b$k;

    const/4 v2, 0x0

    iput v2, p1, Ln3/p/a/b$k;->b:F

    .line 8
    :cond_1
    iget-object p1, v0, Ln3/p/a/c$a;->c:Ln3/p/a/b$k;

    .line 9
    iget v0, p1, Ln3/p/a/b$k;->a:F

    iput v0, p0, Ln3/p/a/b;->b:F

    .line 10
    iget p1, p1, Ln3/p/a/b$k;->b:F

    iput p1, p0, Ln3/p/a/b;->a:F

    .line 11
    iget v2, p0, Ln3/p/a/b;->h:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    .line 12
    iput v2, p0, Ln3/p/a/b;->b:F

    return v1

    .line 13
    :cond_2
    iget v3, p0, Ln3/p/a/b;->g:F

    cmpl-float v4, v0, v3

    if-lez v4, :cond_3

    .line 14
    iput v3, p0, Ln3/p/a/b;->b:F

    return v1

    :cond_3
    cmpl-float v3, v0, v3

    if-gez v3, :cond_6

    cmpg-float v0, v0, v2

    if-lez v0, :cond_6

    .line 15
    iget-object v0, p0, Ln3/p/a/c;->v:Ln3/p/a/c$a;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, v0, Ln3/p/a/c$a;->b:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, p2

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, p2

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v1

    :goto_3
    if-eqz p1, :cond_7

    return v1

    :cond_7
    return p2
.end method

.method public k(F)Ln3/p/a/c;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Ln3/p/a/c;->v:Ln3/p/a/c$a;

    const v1, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v1

    .line 2
    iput p1, v0, Ln3/p/a/c$a;->a:F

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Friction must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
