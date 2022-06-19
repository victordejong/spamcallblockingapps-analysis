.class public final Ls1/a/a/a/v0/d/a/g0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/g0/h;

.field public final b:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V
    .locals 1

    const-string v0, "qualifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    iput-boolean p2, p0, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    return-void
.end method

.method public static a(Ls1/a/a/a/v0/d/a/g0/i;Ls1/a/a/a/v0/d/a/g0/h;ZI)Ls1/a/a/a/v0/d/a/g0/i;
    .locals 0

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    .line 1
    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "qualifier"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ls1/a/a/a/v0/d/a/g0/i;

    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/d/a/g0/i;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/d/a/g0/i;

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    iget-boolean p1, p1, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

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

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "NullabilityQualifierWithMigrationStatus(qualifier="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isForWarningOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
