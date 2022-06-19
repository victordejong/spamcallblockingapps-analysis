.class public Le/a/l5/a/q0$b;
.super Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l5/a/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
        "Le/a/l5/a/q0;",
        ">;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "Le/a/l5/a/q0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Le/a/l5/a/n3;

.field public c:Le/a/l5/a/y3;

.field public d:Le/a/l5/a/u3;

.field public e:Le/a/l5/a/s3;

.field public f:Le/a/l5/a/q3;

.field public g:Le/a/l5/a/t3;

.field public h:Le/a/l5/a/k3;

.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/f4;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/CharSequence;

.field public l:Le/a/l5/a/a4;


# direct methods
.method public constructor <init>(Le/a/l5/a/q0$a;)V
    .locals 0

    .line 1
    sget-object p1, Le/a/l5/a/q0;->o:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/l5/a/q0;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Le/a/l5/a/q0;

    invoke-direct {v0}, Le/a/l5/a/q0;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/l3;

    :goto_0
    iput-object v1, v0, Le/a/l5/a/q0;->a:Le/a/l5/a/l3;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/truecaller/tracking/events/ClientHeaderV2;

    :goto_1
    iput-object v3, v0, Le/a/l5/a/q0;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/l5/a/q0$b;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_2
    iput-object v1, v0, Le/a/l5/a/q0;->c:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/a/l5/a/q0$b;->b:Le/a/l5/a/n3;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/n3;

    :goto_3
    iput-object v1, v0, Le/a/l5/a/q0;->d:Le/a/l5/a/n3;

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/l5/a/q0$b;->c:Le/a/l5/a/y3;

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/y3;

    :goto_4
    iput-object v1, v0, Le/a/l5/a/q0;->e:Le/a/l5/a/y3;

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Le/a/l5/a/q0$b;->d:Le/a/l5/a/u3;

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/u3;

    :goto_5
    iput-object v1, v0, Le/a/l5/a/q0;->f:Le/a/l5/a/u3;

    .line 8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Le/a/l5/a/q0$b;->e:Le/a/l5/a/s3;

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/s3;

    :goto_6
    iput-object v1, v0, Le/a/l5/a/q0;->g:Le/a/l5/a/s3;

    .line 9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x7

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_7

    iget-object v1, p0, Le/a/l5/a/q0$b;->f:Le/a/l5/a/q3;

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/q3;

    :goto_7
    iput-object v1, v0, Le/a/l5/a/q0;->h:Le/a/l5/a/q3;

    .line 10
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_8

    iget-object v1, p0, Le/a/l5/a/q0$b;->g:Le/a/l5/a/t3;

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/t3;

    :goto_8
    iput-object v1, v0, Le/a/l5/a/q0;->i:Le/a/l5/a/t3;

    .line 11
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x9

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Le/a/l5/a/q0$b;->h:Le/a/l5/a/k3;

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/k3;

    :goto_9
    iput-object v1, v0, Le/a/l5/a/q0;->j:Le/a/l5/a/k3;

    .line 12
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xa

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    iget v1, p0, Le/a/l5/a/q0$b;->i:I

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_a
    iput v1, v0, Le/a/l5/a/q0;->k:I

    .line 13
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xb

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_b

    iget-object v1, p0, Le/a/l5/a/q0$b;->j:Ljava/util/List;

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_b
    iput-object v1, v0, Le/a/l5/a/q0;->l:Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xc

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    iget-object v1, p0, Le/a/l5/a/q0$b;->k:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_c
    iput-object v1, v0, Le/a/l5/a/q0;->m:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xd

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_d

    iget-object v1, p0, Le/a/l5/a/q0$b;->l:Le/a/l5/a/a4;

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/a4;

    :goto_d
    iput-object v1, v0, Le/a/l5/a/q0;->n:Le/a/l5/a/a4;
    :try_end_0
    .catch Lorg/apache/avro/AvroMissingFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 17
    throw v0
.end method

.method public b(Le/a/l5/a/k3;)Le/a/l5/a/q0$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/q0$b;->h:Le/a/l5/a/k3;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l5/a/q0$b;->a()Le/a/l5/a/q0;

    move-result-object v0

    return-object v0
.end method

.method public c(Le/a/l5/a/q3;)Le/a/l5/a/q0$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/q0$b;->f:Le/a/l5/a/q3;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public d(I)Le/a/l5/a/q0$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput p1, p0, Le/a/l5/a/q0$b;->i:I

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method
