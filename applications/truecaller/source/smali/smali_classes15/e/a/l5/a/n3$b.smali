.class public Le/a/l5/a/n3$b;
.super Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l5/a/n3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
        "Le/a/l5/a/n3;",
        ">;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "Le/a/l5/a/n3;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Le/a/l5/a/n3$a;)V
    .locals 0

    .line 1
    sget-object p1, Le/a/l5/a/n3;->g:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/l5/a/n3;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Le/a/l5/a/n3;

    invoke-direct {v0}, Le/a/l5/a/n3;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/l5/a/n3$b;->a:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_0
    iput-object v1, v0, Le/a/l5/a/n3;->a:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/l5/a/n3$b;->b:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_1
    iput-object v1, v0, Le/a/l5/a/n3;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/l5/a/n3$b;->c:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_2
    iput-object v1, v0, Le/a/l5/a/n3;->c:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget v1, p0, Le/a/l5/a/n3$b;->d:I

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    iput v1, v0, Le/a/l5/a/n3;->d:I

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    iget v1, p0, Le/a/l5/a/n3$b;->e:I

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    iput v1, v0, Le/a/l5/a/n3;->e:I

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, p0, Le/a/l5/a/n3$b;->f:I

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_5
    iput v1, v0, Le/a/l5/a/n3;->f:I
    :try_end_0
    .catch Lorg/apache/avro/AvroMissingFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 9
    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l5/a/n3$b;->a()Le/a/l5/a/n3;

    move-result-object v0

    return-object v0
.end method
