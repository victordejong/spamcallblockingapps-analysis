.class public final Le/a/b/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b/b/b/a;->d:I

    iput p2, p0, Le/a/b/b/b/a;->e:I

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    .line 2
    iput p1, p0, Le/a/b/b/b/a;->a:I

    .line 3
    new-instance p1, Le/a/b/b/b/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/b/b/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b/b/b/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/b/b/b/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/b/b/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b/b/b/a;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/b/b/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b/b/b/a;

    iget v0, p0, Le/a/b/b/b/a;->d:I

    iget v1, p1, Le/a/b/b/b/a;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/b/b/b/a;->e:I

    iget p1, p1, Le/a/b/b/b/a;->e:I

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

    iget v0, p0, Le/a/b/b/b/a;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/b/b/b/a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "HourMinute(hour="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/b/b/b/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/b/b/b/a;->e:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
