.class public final Le/a/z3/i/d;
.super Le/a/z3/i/g;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/z3/i/g;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/z3/i/d;->a:I

    iput p2, p0, Le/a/z3/i/d;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/z3/i/d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/z3/i/d;

    iget v0, p0, Le/a/z3/i/d;->a:I

    iget v1, p1, Le/a/z3/i/d;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/z3/i/d;->b:I

    iget p1, p1, Le/a/z3/i/d;->b:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Le/a/z3/i/d;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/z3/i/d;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CustomPxSize(widthPx="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/z3/i/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/z3/i/d;->b:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
