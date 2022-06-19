.class public final Le/a/o/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Lcom/truecaller/data/entity/CallContextMessage;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/CallContextMessage;Ljava/lang/String;)V
    .locals 1

    const-string v0, "callContextMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    iput-object p2, p0, Le/a/o/m/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 6

    .line 1
    sget-object v0, Le/a/l5/a/s;->j:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/s$b;-><init>(Le/a/l5/a/s$a;)V

    .line 2
    iget-object v1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 3
    iget-object v1, v1, Lcom/truecaller/data/entity/CallContextMessage;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v1, v0, Le/a/l5/a/s$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    .line 7
    iget-object v1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 8
    iget-object v1, v1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 10
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 11
    iput v1, v0, Le/a/l5/a/s$b;->e:I

    .line 12
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 13
    iget-object v1, p0, Le/a/o/m/b;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object v1, v0, Le/a/l5/a/s$b;->d:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 17
    iget-object v1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 18
    iget-object v1, v1, Lcom/truecaller/data/entity/CallContextMessage;->d:Lcom/truecaller/data/entity/FeatureType;

    .line 19
    invoke-virtual {v1}, Lcom/truecaller/data/entity/FeatureType;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object v1, v0, Le/a/l5/a/s$b;->b:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 23
    iget-object v1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 24
    iget-object v1, v1, Lcom/truecaller/data/entity/CallContextMessage;->f:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 26
    iput-object v1, v0, Le/a/l5/a/s$b;->g:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 28
    iget-object v1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 29
    iget-object v1, v1, Lcom/truecaller/data/entity/CallContextMessage;->e:Lcom/truecaller/data/entity/MessageType;

    .line 30
    iget-object v1, v1, Lcom/truecaller/data/entity/MessageType;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 32
    iput-object v1, v0, Le/a/l5/a/s$b;->c:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 34
    iget-object v1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    .line 35
    iget-object v1, v1, Lcom/truecaller/data/entity/CallContextMessage;->e:Lcom/truecaller/data/entity/MessageType;

    .line 36
    instance-of v3, v1, Lcom/truecaller/data/entity/MessageType$Preset;

    if-eqz v3, :cond_0

    const-string v3, "null cannot be cast to non-null type com.truecaller.data.entity.MessageType.Preset"

    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/MessageType$Preset;

    .line 38
    iget v1, v1, Lcom/truecaller/data/entity/MessageType$Preset;->b:I

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 41
    iput-object v1, v0, Le/a/l5/a/s$b;->f:Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 43
    :cond_0
    invoke-virtual {v0}, Le/a/l5/a/s$b;->a()Le/a/l5/a/s;

    move-result-object v0

    .line 44
    new-instance v1, Le/a/q2/x$d;

    invoke-direct {v1, v0}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/o/m/b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/o/m/b;

    iget-object v0, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    iget-object v1, p1, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/o/m/b;->b:Ljava/lang/String;

    iget-object p1, p1, Le/a/o/m/b;->b:Ljava/lang/String;

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

    iget-object v0, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/data/entity/CallContextMessage;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/o/m/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CallContextSentEvent(callContextMessage="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o/m/b;->a:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o/m/b;->b:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
