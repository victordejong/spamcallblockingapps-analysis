.class public final Le/a/o/a/c/c;
.super Le/a/o/a/c/g;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1}, Le/a/o/a/c/g;-><init>(Ls1/z/c/f;)V

    iput v0, p0, Le/a/o/a/c/c;->a:I

    iput-object v1, p0, Le/a/o/a/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Le/a/o/a/c/g;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/o/a/c/c;->a:I

    iput-object p2, p0, Le/a/o/a/c/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/o/a/c/c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/o/a/c/c;

    iget v0, p0, Le/a/o/a/c/c;->a:I

    iget v1, p1, Le/a/o/a/c/c;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/o/a/c/c;->b:Ljava/lang/String;

    iget-object p1, p1, Le/a/o/a/c/c;->b:Ljava/lang/String;

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

    iget v0, p0, Le/a/o/a/c/c;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/o/a/c/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FullCallReason(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/o/a/c/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o/a/c/c;->b:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
