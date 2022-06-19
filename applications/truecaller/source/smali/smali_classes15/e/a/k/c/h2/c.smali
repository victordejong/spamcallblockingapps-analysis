.class public final Le/a/k/c/h2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Ljava/lang/String;JJLcom/truecaller/videocallerid/utils/analytics/UploadResult;)V
    .locals 1

    const-string v0, "onboardingContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadResult"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/h2/c;->a:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    iput-object p2, p0, Le/a/k/c/h2/c;->b:Ljava/lang/String;

    iput-wide p3, p0, Le/a/k/c/h2/c;->c:J

    iput-wide p5, p0, Le/a/k/c/h2/c;->d:J

    iput-object p7, p0, Le/a/k/c/h2/c;->e:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/u2;->h:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/u2$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/u2$b;-><init>(Le/a/l5/a/u2$a;)V

    .line 3
    iget-object v2, p0, Le/a/k/c/h2/c;->a:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-virtual {v2}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/u2$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget-object v2, p0, Le/a/k/c/h2/c;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v2, v1, Le/a/l5/a/u2$b;->e:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 11
    iget-wide v4, p0, Le/a/k/c/h2/c;->c:J

    long-to-int v2, v4

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput v2, v1, Le/a/l5/a/u2$b;->b:I

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 15
    iget-wide v4, p0, Le/a/k/c/h2/c;->d:J

    long-to-int v2, v4

    .line 16
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput v2, v1, Le/a/l5/a/u2$b;->c:I

    .line 18
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 19
    iget-object v2, p0, Le/a/k/c/h2/c;->e:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    invoke-virtual {v2}, Lcom/truecaller/videocallerid/utils/analytics/UploadResult;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object v2, v1, Le/a/l5/a/u2$b;->d:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 23
    invoke-virtual {v1}, Le/a/l5/a/u2$b;->a()Le/a/l5/a/u2;

    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k/c/h2/c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k/c/h2/c;

    iget-object v0, p0, Le/a/k/c/h2/c;->a:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    iget-object v1, p1, Le/a/k/c/h2/c;->a:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/c/h2/c;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/c/h2/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/k/c/h2/c;->c:J

    iget-wide v2, p1, Le/a/k/c/h2/c;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Le/a/k/c/h2/c;->d:J

    iget-wide v2, p1, Le/a/k/c/h2/c;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/k/c/h2/c;->e:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    iget-object p1, p1, Le/a/k/c/h2/c;->e:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

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
    .locals 4

    iget-object v0, p0, Le/a/k/c/h2/c;->a:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/c/h2/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/k/c/h2/c;->c:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/k/c/h2/c;->d:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/c/h2/c;->e:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "UploadResultEvent(onboardingContext="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/k/c/h2/c;->a:Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/c/h2/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/k/c/h2/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/k/c/h2/c;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/c/h2/c;->e:Lcom/truecaller/videocallerid/utils/analytics/UploadResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
