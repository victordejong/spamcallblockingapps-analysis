.class public final Le/a/c/a/j/b/c;
.super Le/a/c/a/j/b/d;
.source "SourceFile"


# instance fields
.field public final b:Lcom/truecaller/insights/insightsui/CategoryModel;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/insightsui/CategoryModel;Z)V
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, p2, v0, v1}, Le/a/c/a/j/b/d;-><init>(ZII)V

    iput-object p1, p0, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    iput-boolean p2, p0, Le/a/c/a/j/b/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    invoke-virtual {v0}, Lcom/truecaller/insights/insightsui/CategoryModel;->getGrammarCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/a/j/b/c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/j/b/c;

    iget-object v0, p0, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    iget-object v1, p1, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, p0, Le/a/c/a/j/b/c;->c:Z

    iget-boolean p1, p1, Le/a/c/a/j/b/c;->c:Z

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

    iget-object v0, p0, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/insights/insightsui/CategoryModel;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-boolean v1, p0, Le/a/c/a/j/b/c;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CategoryFilterItem(model="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-boolean v1, p0, Le/a/c/a/j/b/c;->c:Z

    const-string v2, ")"

    .line 2
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
