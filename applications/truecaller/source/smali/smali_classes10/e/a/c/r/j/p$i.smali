.class public final Le/a/c/r/j/p$i;
.super Le/a/c/r/j/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/j/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/truecaller/insights/models/pdo/ClassifierType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V
    .locals 1

    const-string v0, "updateCategory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classifierType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/c/r/j/p;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/c/r/j/p$i;->b:Ljava/lang/String;

    iput-object p2, p0, Le/a/c/r/j/p$i;->c:Lcom/truecaller/insights/models/pdo/ClassifierType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/p$i;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/p$i;

    iget-object v0, p0, Le/a/c/r/j/p$i;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/p$i;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/p$i;->c:Lcom/truecaller/insights/models/pdo/ClassifierType;

    iget-object p1, p1, Le/a/c/r/j/p$i;->c:Lcom/truecaller/insights/models/pdo/ClassifierType;

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

    iget-object v0, p0, Le/a/c/r/j/p$i;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/p$i;->c:Lcom/truecaller/insights/models/pdo/ClassifierType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/p$i;->b:Ljava/lang/String;

    return-object v0
.end method
