.class public final Le/a/b/a/a/b/d/a$b$g;
.super Le/a/b/a/a/b/d/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/a/b/d/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/b/a/a/b/d/a$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;


# direct methods
.method public constructor <init>(ILcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/b/a/a/b/d/a$b;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/b/a/a/b/d/a$b$g;->a:I

    iput-object p2, p0, Le/a/b/a/a/b/d/a$b$g;->b:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/b/a/a/b/d/a$b$g;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b/a/a/b/d/a$b$g;

    iget v0, p0, Le/a/b/a/a/b/d/a$b$g;->a:I

    iget v1, p1, Le/a/b/a/a/b/d/a$b$g;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/b/a/a/b/d/a$b$g;->b:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    iget-object p1, p1, Le/a/b/a/a/b/d/a$b$g;->b:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

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

    iget v0, p0, Le/a/b/a/a/b/d/a$b$g;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/b/a/a/b/d/a$b$g;->b:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->hashCode()I

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

    const-string v0, "UnprocessableEntity(errorCode="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/b/a/a/b/d/a$b$g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/a/a/b/d/a$b$g;->b:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
