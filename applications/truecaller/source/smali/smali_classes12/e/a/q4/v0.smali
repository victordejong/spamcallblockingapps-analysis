.class public final Le/a/q4/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q4/j0;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/v0;->a:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q4/v0;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 2
    sget-object v1, Le/a/l5/a/w1;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/w1$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/w1$b;-><init>(Le/a/l5/a/w1$a;)V

    .line 3
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object p1, v1, Le/a/l5/a/w1$b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v2, 0x1

    aput-boolean v2, p1, v3

    .line 6
    invoke-virtual {v1}, Le/a/l5/a/w1$b;->a()Le/a/l5/a/w1;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q4/v0;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 2
    sget-object v1, Le/a/l5/a/v1;->e:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/v1$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/v1$b;-><init>(Le/a/l5/a/v1$a;)V

    .line 3
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object p1, v1, Le/a/l5/a/v1$b;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v2, 0x1

    aput-boolean v2, p1, v3

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-virtual {v1, p1, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 7
    iput-object p2, v1, Le/a/l5/a/v1$b;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v2, p1, v3

    .line 9
    invoke-virtual {v1}, Le/a/l5/a/v1$b;->a()Le/a/l5/a/v1;

    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
