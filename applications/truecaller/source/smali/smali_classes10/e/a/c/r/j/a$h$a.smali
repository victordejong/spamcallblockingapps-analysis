.class public final Le/a/c/r/j/a$h$a;
.super Le/a/c/r/j/a$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/j/a$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/Context;

.field public final h:Ljava/lang/String;

.field public final i:Le/a/c/r/j/c;


# direct methods
.method public constructor <init>(JLjava/lang/String;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Le/a/c/r/j/c;I)V
    .locals 1

    and-int/lit8 p7, p9, 0x20

    const/4 p8, 0x0

    if-eqz p7, :cond_0

    const-string p7, "Contact"

    goto :goto_0

    :cond_0
    move-object p7, p8

    :goto_0
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_1

    .line 1
    new-instance p9, Le/a/c/r/j/d0;

    invoke-direct {p9, p1, p2, p5, p6}, Le/a/c/r/j/d0;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    move-object p9, p8

    :goto_1
    const-string v0, "senderId"

    .line 2
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactNumber"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p7, p4, p8}, Le/a/c/r/j/a$h;-><init>(Ljava/lang/String;ZLs1/z/c/f;)V

    iput-wide p1, p0, Le/a/c/r/j/a$h$a;->c:J

    iput-object p3, p0, Le/a/c/r/j/a$h$a;->d:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/c/r/j/a$h$a;->e:Z

    iput-object p5, p0, Le/a/c/r/j/a$h$a;->f:Ljava/lang/String;

    iput-object p6, p0, Le/a/c/r/j/a$h$a;->g:Landroid/content/Context;

    iput-object p7, p0, Le/a/c/r/j/a$h$a;->h:Ljava/lang/String;

    iput-object p9, p0, Le/a/c/r/j/a$h$a;->i:Le/a/c/r/j/c;

    return-void
.end method


# virtual methods
.method public a()Le/a/c/r/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$h$a;->i:Le/a/c/r/j/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$h$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/a$h$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/a$h$a;

    iget-wide v0, p0, Le/a/c/r/j/a$h$a;->c:J

    iget-wide v2, p1, Le/a/c/r/j/a$h$a;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$h$a;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$h$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, p0, Le/a/c/r/j/a$h$a;->e:Z

    iget-boolean v1, p1, Le/a/c/r/j/a$h$a;->e:Z

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/r/j/a$h$a;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$h$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$h$a;->g:Landroid/content/Context;

    iget-object v1, p1, Le/a/c/r/j/a$h$a;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c/r/j/a$h$a;->h:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$h$a;->h:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/c/r/j/a$h$a;->i:Le/a/c/r/j/c;

    iget-object p1, p1, Le/a/c/r/j/a$h$a;->i:Le/a/c/r/j/c;

    .line 6
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
    .locals 3

    iget-wide v0, p0, Le/a/c/r/j/a$h$a;->c:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/r/j/a$h$a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-boolean v1, p0, Le/a/c/r/j/a$h$a;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/a/c/r/j/a$h$a;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/r/j/a$h$a;->g:Landroid/content/Context;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Le/a/c/r/j/a$h$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Le/a/c/r/j/a$h$a;->i:Le/a/c/r/j/c;

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TravelContact(messageId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/c/r/j/a$h$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$h$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isIM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-boolean v1, p0, Le/a/c/r/j/a$h$a;->e:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contactNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$h$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$h$a;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/c/r/j/a$h$a;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/a/c/r/j/a$h$a;->i:Le/a/c/r/j/c;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
