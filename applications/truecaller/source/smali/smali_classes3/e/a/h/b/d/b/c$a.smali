.class public final Le/a/h/b/d/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h/b/d/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/truecaller/callhistory/data/FilterType;


# direct methods
.method public constructor <init>(ZZLcom/truecaller/callhistory/data/FilterType;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/h/b/d/b/c$a;->a:Z

    iput-boolean p2, p0, Le/a/h/b/d/b/c$a;->b:Z

    iput-object p3, p0, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/h/b/d/b/c$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/h/b/d/b/c$a;

    iget-boolean v0, p0, Le/a/h/b/d/b/c$a;->a:Z

    iget-boolean v1, p1, Le/a/h/b/d/b/c$a;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/h/b/d/b/c$a;->b:Z

    iget-boolean v1, p1, Le/a/h/b/d/b/c$a;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

    iget-object p1, p1, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

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

    iget-boolean v0, p0, Le/a/h/b/d/b/c$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/h/b/d/b/c$a;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CallHistoryRequest(slim="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/h/b/d/b/c$a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", increasePage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/h/b/d/b/c$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/b/c$a;->c:Lcom/truecaller/callhistory/data/FilterType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
