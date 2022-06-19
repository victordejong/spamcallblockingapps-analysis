.class public final Le/a/c/w/o0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

.field public final b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

.field public final c:Le/a/c/w/o0/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/repository/filters/SmartSmsFeature;Lcom/truecaller/insights/repository/filters/FeatureStatus;Le/a/c/w/o0/f;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureStatus"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/o0/e;->a:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    iput-object p2, p0, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    iput-object p3, p0, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/w/o0/e;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/w/o0/e;

    iget-object v0, p0, Le/a/c/w/o0/e;->a:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    iget-object v1, p1, Le/a/c/w/o0/e;->a:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    iget-object v1, p1, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    iget-object p1, p1, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

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

    iget-object v0, p0, Le/a/c/w/o0/e;->a:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SmartSmsFeatureCheck(feature="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/w/o0/e;->a:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
