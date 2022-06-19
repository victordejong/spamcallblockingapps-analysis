.class public final Le/a/c/a/j/b/e;
.super Le/a/c/a/j/b/d;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1}, Le/a/c/a/j/b/d;-><init>(ZII)V

    iput p1, p0, Le/a/c/a/j/b/e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/c/a/j/b/e;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/a/j/b/e;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/j/b/e;

    .line 1
    iget v0, p0, Le/a/c/a/j/b/e;->b:I

    iget p1, p1, Le/a/c/a/j/b/e;->b:I

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
    .locals 1

    .line 1
    iget v0, p0, Le/a/c/a/j/b/e;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PlaceholderFilterItem(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget v1, p0, Le/a/c/a/j/b/e;->b:I

    const-string v2, ")"

    .line 2
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
