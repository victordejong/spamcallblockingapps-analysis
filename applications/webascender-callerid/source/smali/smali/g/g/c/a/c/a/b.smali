.class public final Lg/g/c/a/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final f:Lg/g/c/a/a/a/g;

.field public final g:Lg/g/c/a/c/a/a;


# direct methods
.method public constructor <init>(Lg/g/c/a/a/a/g;Lg/g/c/a/c/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/c/a/a/a/g;

    iput-object p1, p0, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lg/g/c/a/c/a/a;

    iput-object p2, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lg/g/c/a/c/a/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lg/g/c/a/c/a/b;

    .line 3
    iget-object v2, p0, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    iget-object v3, p1, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    invoke-virtual {v2, v3}, Lg/g/c/a/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object p1, p1, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    invoke-virtual {v2, p1}, Lg/g/c/a/c/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    invoke-virtual {v0}, Lg/g/c/a/a/a/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    invoke-virtual {v1}, Lg/g/c/a/c/a/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    .line 2
    invoke-virtual {v1}, Lg/g/c/a/c/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PhoneWithMeta(%s, %s)"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
