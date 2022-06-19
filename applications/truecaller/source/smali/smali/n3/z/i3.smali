.class public abstract Ln3/z/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/i3$b;,
        Ln3/z/i3$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIIILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln3/z/i3;->a:I

    iput p2, p0, Ln3/z/i3;->b:I

    iput p3, p0, Ln3/z/i3;->c:I

    iput p4, p0, Ln3/z/i3;->d:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/z/i3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v1, p0, Ln3/z/i3;->a:I

    check-cast p1, Ln3/z/i3;

    iget v3, p1, Ln3/z/i3;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ln3/z/i3;->b:I

    iget v3, p1, Ln3/z/i3;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ln3/z/i3;->c:I

    iget v3, p1, Ln3/z/i3;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ln3/z/i3;->d:I

    iget p1, p1, Ln3/z/i3;->d:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ln3/z/i3;->a:I

    iget v1, p0, Ln3/z/i3;->b:I

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Ln3/z/i3;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Ln3/z/i3;->d:I

    add-int/2addr v0, v1

    return v0
.end method
