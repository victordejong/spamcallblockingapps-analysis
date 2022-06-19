.class public final Le/a/s2/g/c/a;
.super Le/a/l/l2/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/analytics/LogLevel;

.field public final b:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/l/l2/a;-><init>()V

    iput-object p1, p0, Le/a/s2/g/c/a;->b:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    iput-object p2, p0, Le/a/s2/g/c/a;->c:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/truecaller/premium/analytics/LogLevel;->DEBUG:Lcom/truecaller/premium/analytics/LogLevel;

    iput-object p1, p0, Le/a/s2/g/c/a;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-void
.end method


# virtual methods
.method public b()Ls1/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/k;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/k;

    .line 2
    iget-object v2, p0, Le/a/s2/g/c/a;->b:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ls1/k;

    const-string v4, "reason"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Le/a/s2/g/c/a;->c:Ljava/lang/String;

    .line 5
    new-instance v4, Ls1/k;

    const-string v5, "Language"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 6
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "AC_TTSInitializeError"

    .line 7
    invoke-direct {v0, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Le/a/q2/x$b;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/s2/g/c/a;->b:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/s2/g/c/a;->c:Ljava/lang/String;

    const-string v2, "Language"

    const-string v3, "AC_TTSInitializeError"

    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Le/a/q2/x$d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/q2/x$d<",
            "Le/a/l5/a/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/g;->e:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/g$b;-><init>(Le/a/l5/a/g$a;)V

    .line 3
    iget-object v2, p0, Le/a/s2/g/c/a;->b:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/g$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget-object v2, p0, Le/a/s2/g/c/a;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v2, v1, Le/a/l5/a/g$b;->b:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 11
    invoke-virtual {v1}, Le/a/l5/a/g$b;->a()Le/a/l5/a/g;

    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public e()Lcom/truecaller/premium/analytics/LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/g/c/a;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-object v0
.end method
