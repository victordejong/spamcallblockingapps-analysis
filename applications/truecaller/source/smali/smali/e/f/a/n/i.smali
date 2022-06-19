.class public final Le/f/a/n/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/f;


# instance fields
.field public final b:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Le/f/a/n/h<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/t/b;

    invoke-direct {v0}, Le/f/a/t/b;-><init>()V

    iput-object v0, p0, Le/f/a/n/i;->b:Ln3/g/a;

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Le/f/a/n/i;->b:Ln3/g/a;

    .line 2
    iget v2, v1, Ln3/g/h;->c:I

    if-ge v0, v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/n/h;

    .line 4
    iget-object v2, p0, Le/f/a/n/i;->b:Ln3/g/a;

    invoke-virtual {v2, v0}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, v1, Le/f/a/n/h;->b:Le/f/a/n/h$b;

    .line 6
    iget-object v4, v1, Le/f/a/n/h;->d:[B

    if-nez v4, :cond_0

    .line 7
    iget-object v4, v1, Le/f/a/n/h;->c:Ljava/lang/String;

    sget-object v5, Le/f/a/n/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Le/f/a/n/h;->d:[B

    .line 8
    :cond_0
    iget-object v1, v1, Le/f/a/n/h;->d:[B

    .line 9
    invoke-interface {v3, v1, v2, p1}, Le/f/a/n/h$b;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Le/f/a/n/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/a/n/h<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/i;->b:Ln3/g/a;

    .line 2
    invoke-virtual {v0, p1}, Ln3/g/h;->i(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/f/a/n/i;->b:Ln3/g/a;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p1, Le/f/a/n/h;->a:Ljava/lang/Object;

    :goto_1
    return-object p1
.end method

.method public d(Le/f/a/n/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/i;->b:Ln3/g/a;

    iget-object p1, p1, Le/f/a/n/i;->b:Ln3/g/a;

    invoke-virtual {v0, p1}, Ln3/g/h;->m(Ln3/g/h;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/f/a/n/i;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/a/n/i;

    .line 3
    iget-object v0, p0, Le/f/a/n/i;->b:Ln3/g/a;

    iget-object p1, p1, Le/f/a/n/i;->b:Ln3/g/a;

    invoke-virtual {v0, p1}, Ln3/g/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/i;->b:Ln3/g/a;

    invoke-virtual {v0}, Ln3/g/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Options{values="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/f/a/n/i;->b:Ln3/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
