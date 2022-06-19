.class public final Le/a/c/r/h/f$b;
.super Le/a/c/r/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/c/h/m/c;

.field public final b:Le/a/c/r/h/h;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/c/r/h/i;

.field public final e:Le/a/c/g/a;

.field public final f:Le/a/l5/a/b2$b;


# direct methods
.method public constructor <init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;)V
    .locals 1

    const-string v0, "smsMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classification"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailedResponse"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Le/a/c/r/h/f;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    iput-object p2, p0, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    iput-object p3, p0, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    iput-object p5, p0, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    iput-object p6, p0, Le/a/c/r/h/f$b;->f:Le/a/l5/a/b2$b;

    return-void
.end method

.method public synthetic constructor <init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;I)V
    .locals 7

    and-int/lit8 p5, p7, 0x10

    const/4 v5, 0x0

    and-int/lit8 p5, p7, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/h/f$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/h/f$b;

    iget-object v0, p0, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    iget-object v1, p1, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    iget-object v1, p1, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    iget-object v1, p1, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    iget-object v1, p1, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/h/f$b;->f:Le/a/l5/a/b2$b;

    iget-object p1, p1, Le/a/c/r/h/f$b;->f:Le/a/l5/a/b2$b;

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

    iget-object v0, p0, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/c/h/m/c;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/h/f$b;->f:Le/a/l5/a/b2$b;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ParseResponse(smsMessage="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detailedResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categorizerCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/h/f$b;->f:Le/a/l5/a/b2$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
