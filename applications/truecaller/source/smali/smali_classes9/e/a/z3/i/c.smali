.class public final Le/a/z3/i/c;
.super Le/a/z3/i/g;
.source "SourceFile"


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/z3/i/c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/z3/i/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

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

    const/4 v0, 0x0

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CustomDpSize(widthDp=0, heightDp=0)"

    return-object v0
.end method
