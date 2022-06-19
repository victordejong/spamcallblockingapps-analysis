.class public final Le/a/b0/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/b0/e/b;

.field public final c:Le/a/b0/e/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V
    .locals 1

    const-string v0, "installationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryPhoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/e/c;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    iput-object p3, p0, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    return-void
.end method

.method public static a(Le/a/b0/e/c;Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;I)Le/a/b0/e/c;
    .locals 1

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/b0/e/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    :cond_2
    const-string p0, "installationId"

    .line 1
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "primaryPhoneNumber"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Le/a/b0/e/c;

    invoke-direct {p0, p1, p2, p3}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/b0/e/c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b0/e/c;

    iget-object v0, p0, Le/a/b0/e/c;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/b0/e/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    iget-object v1, p1, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    iget-object p1, p1, Le/a/b0/e/c;->c:Le/a/b0/e/b;

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

    iget-object v0, p0, Le/a/b0/e/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/b0/e/b;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le/a/b0/e/b;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AccountState(installationId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b0/e/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
