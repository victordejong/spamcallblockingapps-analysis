.class public final Le/a/c/r/j/a$f$a;
.super Le/a/c/r/j/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/j/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Lcom/truecaller/insights/models/DomainOrigin;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/Context;

.field public final h:Le/a/c/r/j/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Landroid/content/Context;Le/a/c/r/j/c;I)V
    .locals 7

    and-int/lit8 p7, p8, 0x10

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p7, p8, 0x20

    if-eqz p7, :cond_1

    if-eqz p6, :cond_1

    .line 1
    new-instance p7, Le/a/c/r/j/e;

    move-object v1, p7

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Le/a/c/r/j/e;-><init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move-object p7, v0

    :goto_0
    const-string p8, "title"

    .line 2
    invoke-static {p1, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "origin"

    invoke-static {p4, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "otp"

    invoke-static {p5, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, v0}, Le/a/c/r/j/a$f;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/c/r/j/a$f$a;->c:Ljava/lang/String;

    iput-wide p2, p0, Le/a/c/r/j/a$f$a;->d:J

    iput-object p4, p0, Le/a/c/r/j/a$f$a;->e:Lcom/truecaller/insights/models/DomainOrigin;

    iput-object p5, p0, Le/a/c/r/j/a$f$a;->f:Ljava/lang/String;

    iput-object p6, p0, Le/a/c/r/j/a$f$a;->g:Landroid/content/Context;

    iput-object p7, p0, Le/a/c/r/j/a$f$a;->h:Le/a/c/r/j/c;

    return-void
.end method


# virtual methods
.method public a()Le/a/c/r/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$f$a;->h:Le/a/c/r/j/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$f$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/a$f$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/a$f$a;

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$f$a;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$f$a;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/c/r/j/a$f$a;->d:J

    iget-wide v2, p1, Le/a/c/r/j/a$f$a;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$f$a;->e:Lcom/truecaller/insights/models/DomainOrigin;

    iget-object v1, p1, Le/a/c/r/j/a$f$a;->e:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$f$a;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$f$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$f$a;->g:Landroid/content/Context;

    iget-object v1, p1, Le/a/c/r/j/a$f$a;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c/r/j/a$f$a;->h:Le/a/c/r/j/c;

    iget-object p1, p1, Le/a/c/r/j/a$f$a;->h:Le/a/c/r/j/c;

    .line 4
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
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$f$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/c/r/j/a$f$a;->d:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/a$f$a;->e:Lcom/truecaller/insights/models/DomainOrigin;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/a$f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/a$f$a;->g:Landroid/content/Context;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/a/c/r/j/a$f$a;->h:Le/a/c/r/j/c;

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Copy(title="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/a/c/r/j/a$f$a;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/c/r/j/a$f$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$f$a;->e:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", otp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$f$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$f$a;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/c/r/j/a$f$a;->h:Le/a/c/r/j/c;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
