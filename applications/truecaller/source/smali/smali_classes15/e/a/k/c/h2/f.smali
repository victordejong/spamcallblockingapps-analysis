.class public final Le/a/k/c/h2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public final c:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/h2/f;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/k/c/h2/f;->b:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    iput-object p3, p0, Le/a/k/c/h2/f;->c:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 6

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/p2;->f:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/p2$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/p2$b;-><init>(Le/a/l5/a/p2$a;)V

    .line 3
    iget-object v2, p0, Le/a/k/c/h2/f;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/p2$b;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget-object v2, p0, Le/a/k/c/h2/f;->b:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-virtual {v2}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v2, v1, Le/a/l5/a/p2$b;->a:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 11
    iget-object v2, p0, Le/a/k/c/h2/f;->c:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    invoke-virtual {v2}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v2, v1, Le/a/l5/a/p2$b;->b:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 15
    invoke-virtual {v1}, Le/a/l5/a/p2$b;->a()Le/a/l5/a/p2;

    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k/c/h2/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k/c/h2/f;

    iget-object v0, p0, Le/a/k/c/h2/f;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/c/h2/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/c/h2/f;->b:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    iget-object v1, p1, Le/a/k/c/h2/f;->b:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/c/h2/f;->c:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    iget-object p1, p1, Le/a/k/c/h2/f;->c:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

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

    iget-object v0, p0, Le/a/k/c/h2/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/c/h2/f;->b:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/c/h2/f;->c:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "VideoCallerIdOnboardingEvent(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/k/c/h2/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/c/h2/f;->b:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/c/h2/f;->c:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
