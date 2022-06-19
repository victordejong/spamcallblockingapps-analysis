.class public final Le/a/b/i/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

.field public final b:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/i/h/a;->a:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    iput-object p2, p0, Le/a/b/i/h/a;->b:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    iput-object p3, p0, Le/a/b/i/h/a;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/b/i/h/a;->d:Ljava/lang/String;

    iput-object p5, p0, Le/a/b/i/h/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    new-instance v0, Le/a/q2/x$e;

    .line 2
    new-instance v1, Le/a/q2/x$d;

    .line 3
    sget-object v2, Le/a/l5/a/n;->h:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/n$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/a/l5/a/n$b;-><init>(Le/a/l5/a/n$a;)V

    .line 4
    iget-object v3, p0, Le/a/b/i/h/a;->b:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    invoke-virtual {v3}, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/l5/a/n$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/n$b;

    .line 5
    iget-object v3, p0, Le/a/b/i/h/a;->a:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    invoke-virtual {v3}, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/l5/a/n$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/n$b;

    .line 6
    iget-object v3, p0, Le/a/b/i/h/a;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 8
    iput-object v3, v2, Le/a/l5/a/n$b;->d:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    const-string v3, ""

    .line 10
    invoke-virtual {v2, v3}, Le/a/l5/a/n$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/n$b;

    .line 11
    invoke-static {}, Le/a/l5/a/j3;->a()Le/a/l5/a/j3$b;

    move-result-object v5

    .line 12
    iget-object v6, p0, Le/a/b/i/h/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Le/a/l5/a/j3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 13
    iget-object v6, p0, Le/a/b/i/h/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Le/a/l5/a/j3$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 14
    invoke-virtual {v5, v3}, Le/a/l5/a/j3$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/j3$b;

    .line 15
    invoke-virtual {v5}, Le/a/l5/a/j3$b;->a()Le/a/l5/a/j3;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object v3, v2, Le/a/l5/a/n$b;->e:Le/a/l5/a/j3;

    .line 18
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v4, v3, v6

    .line 19
    invoke-virtual {v2}, Le/a/l5/a/n$b;->a()Le/a/l5/a/n;

    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    .line 21
    invoke-static {v1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Le/a/q2/x$e;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/b/i/h/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b/i/h/a;

    iget-object v0, p0, Le/a/b/i/h/a;->a:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    iget-object v1, p1, Le/a/b/i/h/a;->a:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/i/h/a;->b:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    iget-object v1, p1, Le/a/b/i/h/a;->b:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/i/h/a;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/b/i/h/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/i/h/a;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/b/i/h/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/i/h/a;->e:Ljava/lang/String;

    iget-object p1, p1, Le/a/b/i/h/a;->e:Ljava/lang/String;

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

    iget-object v0, p0, Le/a/b/i/h/a;->a:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b/i/h/a;->b:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b/i/h/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b/i/h/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b/i/h/a;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BizCallMeBackAnalyticEvent(context="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b/i/h/a;->a:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/i/h/a;->b:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/i/h/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/i/h/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/i/h/a;->e:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
