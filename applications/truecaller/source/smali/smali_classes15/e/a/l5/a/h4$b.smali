.class public Le/a/l5/a/h4$b;
.super Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l5/a/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
        "Le/a/l5/a/h4;",
        ">;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "Le/a/l5/a/h4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/l5/a/h4$a;)V
    .locals 0

    .line 1
    sget-object p1, Le/a/l5/a/h4;->f:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/l5/a/h4;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Le/a/l5/a/h4;

    invoke-direct {v0}, Le/a/l5/a/h4;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iput v1, v0, Le/a/l5/a/h4;->a:I

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    iput v1, v0, Le/a/l5/a/h4;->b:I

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v3, 0x2

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    iput v2, v0, Le/a/l5/a/h4;->c:I

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_3
    iput-object v1, v0, Le/a/l5/a/h4;->d:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    :goto_4
    iput-object v3, v0, Le/a/l5/a/h4;->e:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/apache/avro/AvroMissingFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 8
    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l5/a/h4$b;->a()Le/a/l5/a/h4;

    move-result-object v0

    return-object v0
.end method
