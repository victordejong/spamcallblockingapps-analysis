.class public Le/a/l5/a/v$b;
.super Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l5/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
        "Le/a/l5/a/v;",
        ">;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "Le/a/l5/a/v;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/CharSequence;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:J

.field public m:J

.field public n:Ljava/lang/CharSequence;

.field public o:Z

.field public p:Ljava/lang/CharSequence;

.field public q:Le/a/l5/a/j4;

.field public r:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Le/a/l5/a/v;->v:Lorg/apache/avro/Schema;

    invoke-direct {p0, v0}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method

.method public constructor <init>(Le/a/l5/a/v$a;)V
    .locals 0

    .line 2
    sget-object p1, Le/a/l5/a/v;->v:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/l5/a/v;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Le/a/l5/a/v;

    invoke-direct {v0}, Le/a/l5/a/v;-><init>()V

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
    iput-object v1, v0, Le/a/l5/a/v;->a:Le/a/l5/a/l3;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/tracking/events/ClientHeaderV2;

    :goto_1
    iput-object v1, v0, Le/a/l5/a/v;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-wide v1, p0, Le/a/l5/a/v$b;->a:J

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    iput-wide v1, v0, Le/a/l5/a/v;->c:J

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Le/a/l5/a/v$b;->b:Z

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    iput-boolean v1, v0, Le/a/l5/a/v;->d:Z

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/l5/a/v$b;->c:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_4
    iput-object v1, v0, Le/a/l5/a/v;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Le/a/l5/a/v$b;->d:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_5
    iput-object v1, v0, Le/a/l5/a/v;->f:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Le/a/l5/a/v$b;->e:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_6
    iput-object v1, v0, Le/a/l5/a/v;->g:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x7

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_7

    iget-object v1, p0, Le/a/l5/a/v$b;->f:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_7
    iput-object v1, v0, Le/a/l5/a/v;->h:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_8

    iget-object v1, p0, Le/a/l5/a/v$b;->g:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_8
    iput-object v1, v0, Le/a/l5/a/v;->i:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x9

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Le/a/l5/a/v$b;->h:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_9
    iput-object v1, v0, Le/a/l5/a/v;->j:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xa

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    iget-object v1, p0, Le/a/l5/a/v$b;->i:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_a
    iput-object v1, v0, Le/a/l5/a/v;->k:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xb

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_b

    iget-object v1, p0, Le/a/l5/a/v$b;->j:Ljava/lang/CharSequence;

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_b
    iput-object v1, v0, Le/a/l5/a/v;->l:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xc

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    iget-object v1, p0, Le/a/l5/a/v$b;->k:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_c
    iput-object v1, v0, Le/a/l5/a/v;->m:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xd

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_d

    iget-wide v1, p0, Le/a/l5/a/v$b;->l:J

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_d
    iput-wide v1, v0, Le/a/l5/a/v;->n:J

    .line 16
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xe

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_e

    iget-wide v1, p0, Le/a/l5/a/v$b;->m:J

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_e
    iput-wide v1, v0, Le/a/l5/a/v;->o:J

    .line 17
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xf

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_f

    iget-object v1, p0, Le/a/l5/a/v$b;->n:Ljava/lang/CharSequence;

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_f
    iput-object v1, v0, Le/a/l5/a/v;->p:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x10

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Le/a/l5/a/v$b;->o:Z

    goto :goto_10

    :cond_10
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_10
    iput-boolean v1, v0, Le/a/l5/a/v;->q:Z

    .line 19
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x11

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_11

    iget-object v1, p0, Le/a/l5/a/v$b;->p:Ljava/lang/CharSequence;

    goto :goto_11

    :cond_11
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_11
    iput-object v1, v0, Le/a/l5/a/v;->r:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x12

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_12

    iget-object v1, p0, Le/a/l5/a/v$b;->q:Le/a/l5/a/j4;

    goto :goto_12

    :cond_12
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/j4;

    :goto_12
    iput-object v1, v0, Le/a/l5/a/v;->s:Le/a/l5/a/j4;

    .line 21
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x13

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_13

    iget-object v1, p0, Le/a/l5/a/v$b;->r:Ljava/lang/CharSequence;

    goto :goto_13

    :cond_13
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_13
    iput-object v1, v0, Le/a/l5/a/v;->t:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x14

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_14

    goto :goto_14

    :cond_14
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    :goto_14
    iput-object v3, v0, Le/a/l5/a/v;->u:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/apache/avro/AvroMissingFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 24
    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l5/a/v$b;->a()Le/a/l5/a/v;

    move-result-object v0

    return-object v0
.end method
