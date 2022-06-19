.class public final Le/a/t/a/u/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Le/a/t/a/u/d;


# direct methods
.method public constructor <init>(II[Le/a/t/a/u/d;)V
    .locals 1

    const-string v0, "emojis"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/t/a/u/e;->a:I

    iput p2, p0, Le/a/t/a/u/e;->b:I

    iput-object p3, p0, Le/a/t/a/u/e;->c:[Le/a/t/a/u/d;

    return-void
.end method

.method public constructor <init>(II[Le/a/t/a/u/d;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    new-array p3, p3, [Le/a/t/a/u/d;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p4, "emojis"

    .line 1
    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/t/a/u/e;->a:I

    iput p2, p0, Le/a/t/a/u/e;->b:I

    iput-object p3, p0, Le/a/t/a/u/e;->c:[Le/a/t/a/u/d;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/t/a/u/e;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/t/a/u/e;

    iget v0, p0, Le/a/t/a/u/e;->a:I

    iget v1, p1, Le/a/t/a/u/e;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/t/a/u/e;->b:I

    iget v1, p1, Le/a/t/a/u/e;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/t/a/u/e;->c:[Le/a/t/a/u/d;

    iget-object p1, p1, Le/a/t/a/u/e;->c:[Le/a/t/a/u/d;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    iget v0, p0, Le/a/t/a/u/e;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/t/a/u/e;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/t/a/u/e;->c:[Le/a/t/a/u/d;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EmojiCategory(icon="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/t/a/u/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/t/a/u/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emojis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/t/a/u/e;->c:[Le/a/t/a/u/d;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
