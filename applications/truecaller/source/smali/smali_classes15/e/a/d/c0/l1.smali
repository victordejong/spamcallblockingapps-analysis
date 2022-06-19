.class public final Le/a/d/c0/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v0, v0, v1}, Le/a/d/c0/l1;-><init>(IZZI)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/d/c0/l1;->a:I

    iput-boolean p2, p0, Le/a/d/c0/l1;->b:Z

    iput-boolean p3, p0, Le/a/d/c0/l1;->c:Z

    return-void
.end method

.method public constructor <init>(IZZI)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v1

    .line 2
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/d/c0/l1;->a:I

    iput-boolean p2, p0, Le/a/d/c0/l1;->b:Z

    iput-boolean p3, p0, Le/a/d/c0/l1;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/c0/l1;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/c0/l1;

    iget v0, p0, Le/a/d/c0/l1;->a:I

    iget v1, p1, Le/a/d/c0/l1;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/d/c0/l1;->b:Z

    iget-boolean v1, p1, Le/a/d/c0/l1;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/d/c0/l1;->c:Z

    iget-boolean p1, p1, Le/a/d/c0/l1;->c:Z

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
    .locals 3

    iget v0, p0, Le/a/d/c0/l1;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/d/c0/l1;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/d/c0/l1;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VoipSupportFilterInfo(spamScore="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/d/c0/l1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blacklisted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/c0/l1;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whitelisted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/c0/l1;->c:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
