.class public final Le/a/c/g/h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.categorizer.InsightsAndroidCategorizerImpl$logReclassificationEvent$1"
    f = "InsightsAndroidCategorizer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/g/g;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/c/g/g;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/h;->e:Le/a/c/g/g;

    iput-object p2, p0, Le/a/c/g/h;->f:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/g/h;

    iget-object v0, p0, Le/a/c/g/h;->e:Le/a/c/g/g;

    iget-object v1, p0, Le/a/c/g/h;->f:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/g/h;-><init>(Le/a/c/g/g;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/g/h;

    iget-object v0, p0, Le/a/c/g/h;->e:Le/a/c/g/g;

    iget-object v1, p0, Le/a/c/g/h;->f:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/g/h;-><init>(Le/a/c/g/g;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/g/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/g/h;->f:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    .line 4
    iget-object v1, p0, Le/a/c/g/h;->e:Le/a/c/g/g;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getFromCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getToCategory()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v3, Le/a/l5/a/h4;->f:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/h4$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/a/l5/a/h4$b;-><init>(Le/a/l5/a/h4$a;)V

    .line 7
    sget-object v5, Le/a/l5/a/c2;->h:Lorg/apache/avro/Schema;

    new-instance v5, Le/a/l5/a/c2$b;

    invoke-direct {v5, v4}, Le/a/l5/a/c2$b;-><init>(Le/a/l5/a/c2$a;)V

    .line 8
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v2, v5, Le/a/l5/a/c2$b;->b:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v6, 0x1

    aput-boolean v6, v2, v7

    .line 11
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v7, 0x4

    aget-object v2, v2, v7

    invoke-virtual {v5, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 12
    iput-object v0, v5, Le/a/l5/a/c2$b;->c:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v7

    .line 14
    sget-object v0, Le/a/l5/a/g4;->c:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/g4$b;

    invoke-direct {v0, v4}, Le/a/l5/a/g4$b;-><init>(Le/a/l5/a/g4$a;)V

    const/16 v2, 0x5147

    .line 15
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput v2, v0, Le/a/l5/a/g4$b;->a:I

    .line 17
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v6, v2, v6

    .line 18
    invoke-virtual {v0}, Le/a/l5/a/g4$b;->a()Le/a/l5/a/g4;

    move-result-object v0

    const-string v2, "SmsCategorizerModel.newB\u2026VERSION)\n        .build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v4, 0x5

    aget-object v2, v2, v4

    invoke-virtual {v5, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-object v0, v5, Le/a/l5/a/c2$b;->d:Le/a/l5/a/g4;

    .line 21
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v4

    .line 22
    invoke-virtual {v3}, Le/a/l5/a/h4$b;->a()Le/a/l5/a/h4;

    move-result-object v0

    .line 23
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v5, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 24
    iput-object v0, v5, Le/a/l5/a/c2$b;->e:Le/a/l5/a/h4;

    .line 25
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v3

    .line 26
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 27
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v5, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 28
    iput-object v0, v5, Le/a/l5/a/c2$b;->a:Ljava/util/List;

    .line 29
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v3

    .line 30
    invoke-virtual {v5}, Le/a/l5/a/c2$b;->a()Le/a/l5/a/c2;

    move-result-object v0

    .line 31
    iget-object v1, v1, Le/a/c/g/g;->f:Le/a/q2/a;

    const-string v2, "event"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto/16 :goto_0

    .line 32
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
