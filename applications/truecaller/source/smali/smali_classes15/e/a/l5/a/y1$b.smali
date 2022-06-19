.class public Le/a/l5/a/y1$b;
.super Lorg/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l5/a/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/specific/SpecificRecordBuilderBase<",
        "Le/a/l5/a/y1;",
        ">;",
        "Lorg/apache/avro/data/RecordBuilder<",
        "Le/a/l5/a/y1;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l5/a/e4;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Le/a/l5/a/y1$a;)V
    .locals 0

    .line 1
    sget-object p1, Le/a/l5/a/y1;->l:Lorg/apache/avro/Schema;

    invoke-direct {p0, p1}, Lorg/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public a()Le/a/l5/a/y1;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Le/a/l5/a/y1;

    invoke-direct {v0}, Le/a/l5/a/y1;-><init>()V

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
    iput-object v1, v0, Le/a/l5/a/y1;->a:Le/a/l5/a/l3;

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
    iput-object v3, v0, Le/a/l5/a/y1;->b:Lcom/truecaller/tracking/events/ClientHeaderV2;

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/l5/a/y1$b;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_2
    iput-object v1, v0, Le/a/l5/a/y1;->c:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/a/l5/a/y1$b;->b:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_3
    iput-object v1, v0, Le/a/l5/a/y1;->d:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/l5/a/y1$b;->c:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_4
    iput-object v1, v0, Le/a/l5/a/y1;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Le/a/l5/a/y1$b;->d:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_5
    iput-object v1, v0, Le/a/l5/a/y1;->f:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Le/a/l5/a/y1$b;->e:Ljava/util/List;

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_6
    iput-object v1, v0, Le/a/l5/a/y1;->g:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x7

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_7

    iget-object v1, p0, Le/a/l5/a/y1$b;->f:Ljava/util/List;

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_7
    iput-object v1, v0, Le/a/l5/a/y1;->h:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Le/a/l5/a/y1$b;->g:Z

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_8
    iput-boolean v1, v0, Le/a/l5/a/y1;->i:Z

    .line 11
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0x9

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Le/a/l5/a/y1$b;->h:Z

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_9
    iput-boolean v1, v0, Le/a/l5/a/y1;->j:Z

    .line 12
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/16 v2, 0xa

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    iget-object v1, p0, Le/a/l5/a/y1$b;->i:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->defaultValue(Lorg/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :goto_a
    iput-object v1, v0, Le/a/l5/a/y1;->k:Ljava/lang/Long;
    :try_end_0
    .catch Lorg/apache/avro/AvroMissingFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 14
    throw v0
.end method

.method public b(Ljava/util/List;)Le/a/l5/a/y1$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Le/a/l5/a/y1$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/y1$b;->f:Ljava/util/List;

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
    invoke-virtual {p0}, Le/a/l5/a/y1$b;->a()Le/a/l5/a/y1;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Long;)Le/a/l5/a/y1$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/y1$b;->i:Ljava/lang/Long;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/y1$b;->b:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public e(Ljava/util/List;)Le/a/l5/a/y1$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l5/a/e4;",
            ">;)",
            "Le/a/l5/a/y1$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/y1$b;->e:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/y1$b;->a:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public g(Z)Le/a/l5/a/y1$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-boolean p1, p0, Le/a/l5/a/y1$b;->g:Z

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public h(Z)Le/a/l5/a/y1$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-boolean p1, p0, Le/a/l5/a/y1$b;->h:Z

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public i(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/y1$b;->d:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Le/a/l5/a/y1$b;->c:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method
