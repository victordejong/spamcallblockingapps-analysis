.class public final Le/a/s2/g/c/e;
.super Le/a/l/l2/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/analytics/LogLevel;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    const-string v0, "proStatus"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/l/l2/a;-><init>()V

    iput p1, p0, Le/a/s2/g/c/e;->b:I

    iput-object p2, p0, Le/a/s2/g/c/e;->c:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/s2/g/c/e;->d:Z

    .line 2
    sget-object p1, Lcom/truecaller/premium/analytics/LogLevel;->CORE:Lcom/truecaller/premium/analytics/LogLevel;

    iput-object p1, p0, Le/a/s2/g/c/e;->a:Lcom/truecaller/premium/analytics/LogLevel;

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

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/k;

    .line 2
    iget v2, p0, Le/a/s2/g/c/e;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    new-instance v3, Ls1/k;

    const-string v4, "CardPosition"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Le/a/s2/g/c/e;->c:Ljava/lang/String;

    .line 5
    new-instance v4, Ls1/k;

    const-string v5, "ProStatusV2"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 6
    iget-boolean v3, p0, Le/a/s2/g/c/e;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7
    new-instance v4, Ls1/k;

    const-string v5, "PromoShown"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 8
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "AC_CardSeen"

    .line 9
    invoke-direct {v0, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Le/a/q2/x$b;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Le/a/s2/g/c/e;->b:I

    const-string v2, "CardPosition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Le/a/s2/g/c/e;->c:Ljava/lang/String;

    const-string v2, "ProStatusV2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Le/a/s2/g/c/e;->d:Z

    const-string v2, "PromoShown"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "AC_CardSeen"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public d()Le/a/q2/x$d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/q2/x$d<",
            "Le/a/l5/a/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/e;->f:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/e$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/e$b;-><init>(Le/a/l5/a/e$a;)V

    .line 3
    iget-boolean v2, p0, Le/a/s2/g/c/e;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/e$b;->c:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget v2, p0, Le/a/s2/g/c/e;->b:I

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput v2, v1, Le/a/l5/a/e$b;->a:I

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 11
    iget-object v2, p0, Le/a/s2/g/c/e;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v2, v1, Le/a/l5/a/e$b;->b:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 15
    invoke-virtual {v1}, Le/a/l5/a/e$b;->a()Le/a/l5/a/e;

    move-result-object v1

    const-string v2, "AppACCardSeen.newBuilder\u2026tus)\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public e()Lcom/truecaller/premium/analytics/LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/g/c/e;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-object v0
.end method
