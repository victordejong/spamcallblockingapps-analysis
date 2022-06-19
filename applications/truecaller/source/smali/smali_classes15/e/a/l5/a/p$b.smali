.class public Le/a/l5/a/p$b;
.super Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l5/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
        "Le/a/l5/a/p;",
        ">;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "Le/a/l5/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/a/l5/a/l4;

.field public b:Le/a/l5/a/j3;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Long;

.field public g:Le/a/l5/a/c4;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Le/a/l5/a/p$a;)V
    .locals 0

    .line 1
    sget-object p1, Le/a/l5/a/p;->q:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/l5/a/p;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Le/a/l5/a/p;

    invoke-direct {v0}, Le/a/l5/a/p;-><init>()V

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
    iput-object v1, v0, Le/a/l5/a/p;->a:Le/a/l5/a/l3;

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
    iput-object v1, v0, Le/a/l5/a/p;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/l5/a/p$b;->a:Le/a/l5/a/l4;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/l4;

    :goto_2
    iput-object v1, v0, Le/a/l5/a/p;->c:Le/a/l5/a/l4;

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/a/l5/a/p$b;->b:Le/a/l5/a/j3;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/j3;

    :goto_3
    iput-object v1, v0, Le/a/l5/a/p;->d:Le/a/l5/a/j3;

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/l5/a/p$b;->c:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :goto_4
    iput-object v1, v0, Le/a/l5/a/p;->e:Ljava/lang/Long;

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Le/a/l5/a/p$b;->d:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :goto_5
    iput-object v1, v0, Le/a/l5/a/p;->f:Ljava/lang/Long;

    .line 8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Le/a/l5/a/p$b;->e:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_6
    iput-object v1, v0, Le/a/l5/a/p;->g:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x7

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_7

    iget-object v1, p0, Le/a/l5/a/p$b;->f:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :goto_7
    iput-object v1, v0, Le/a/l5/a/p;->h:Ljava/lang/Long;

    .line 10
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_8

    iget-object v1, p0, Le/a/l5/a/p$b;->g:Le/a/l5/a/c4;

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l5/a/c4;

    :goto_8
    iput-object v1, v0, Le/a/l5/a/p;->i:Le/a/l5/a/c4;

    .line 11
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x9

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Le/a/l5/a/p$b;->h:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_9
    iput-object v1, v0, Le/a/l5/a/p;->j:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xa

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    iget-object v1, p0, Le/a/l5/a/p$b;->i:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_a
    iput-object v1, v0, Le/a/l5/a/p;->k:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xb

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_b

    move-object v1, v3

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_b
    iput-object v1, v0, Le/a/l5/a/p;->l:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xc

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    :goto_c
    iput-object v3, v0, Le/a/l5/a/p;->m:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xd

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_d

    iget-object v1, p0, Le/a/l5/a/p$b;->j:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :goto_d
    iput-object v1, v0, Le/a/l5/a/p;->n:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xe

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_e

    iget-object v1, p0, Le/a/l5/a/p$b;->k:Ljava/util/Map;

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_e
    iput-object v1, v0, Le/a/l5/a/p;->o:Ljava/util/Map;

    .line 17
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xf

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_f

    iget-object v1, p0, Le/a/l5/a/p$b;->l:Ljava/lang/CharSequence;

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_f
    iput-object v1, v0, Le/a/l5/a/p;->p:Ljava/lang/CharSequence;
    :try_end_0
    .catch Lorg/apache/avro/AvroMissingFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 19
    throw v0
.end method

.method public b(Le/a/l5/a/j3;)Le/a/l5/a/p$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->b:Le/a/l5/a/j3;

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
    invoke-virtual {p0}, Le/a/l5/a/p$b;->a()Le/a/l5/a/p;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->l:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public d(Ljava/lang/Long;)Le/a/l5/a/p$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->c:Ljava/lang/Long;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public e(Ljava/util/Map;)Le/a/l5/a/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Le/a/l5/a/p$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->k:Ljava/util/Map;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public f(Ljava/lang/Boolean;)Le/a/l5/a/p$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->j:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public g(Le/a/l5/a/c4;)Le/a/l5/a/p$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->g:Le/a/l5/a/c4;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;)Le/a/l5/a/p$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->h:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public i(Le/a/l5/a/l4;)Le/a/l5/a/p$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/p$b;->a:Le/a/l5/a/l4;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method
