.class public final Le/a/e3/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "callState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/e3/e/b;->a:Z

    iput-object p2, p0, Le/a/e3/e/b;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/e3/e/b;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/e3/e/b;->d:Z

    iput-boolean p5, p0, Le/a/e3/e/b;->e:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZI)V
    .locals 2

    and-int/lit8 p3, p6, 0x4

    const/4 p3, 0x0

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p4, v1

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move p5, v1

    :cond_1
    const-string p6, "callState"

    .line 1
    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/e3/e/b;->a:Z

    iput-object p2, p0, Le/a/e3/e/b;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/e3/e/b;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/e3/e/b;->d:Z

    iput-boolean p5, p0, Le/a/e3/e/b;->e:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/e3/e/b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/e3/e/b;

    iget-boolean v0, p0, Le/a/e3/e/b;->a:Z

    iget-boolean v1, p1, Le/a/e3/e/b;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/e3/e/b;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/e3/e/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/e3/e/b;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/e3/e/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/e3/e/b;->d:Z

    iget-boolean v1, p1, Le/a/e3/e/b;->d:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/e3/e/b;->e:Z

    iget-boolean p1, p1, Le/a/e3/e/b;->e:Z

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
    .locals 4

    iget-boolean v0, p0, Le/a/e3/e/b;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/e3/e/b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/e3/e/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/e3/e/b;->d:Z

    if-eqz v2, :cond_3

    move v2, v1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/e3/e/b;->e:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SendCallerIdNotificationResult(isRequestedInitiated="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/e3/e/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/e3/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/e3/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCallContextProvided="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/e3/e/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCallInitiatedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/e3/e/b;->e:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
