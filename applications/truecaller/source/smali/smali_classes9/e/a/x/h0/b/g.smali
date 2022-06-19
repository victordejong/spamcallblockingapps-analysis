.class public final Le/a/x/h0/b/g;
.super Le/a/l/l2/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/analytics/LogLevel;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "proStatus"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/l/l2/a;-><init>()V

    iput-object p1, p0, Le/a/x/h0/b/g;->b:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/truecaller/premium/analytics/LogLevel;->DEBUG:Lcom/truecaller/premium/analytics/LogLevel;

    iput-object p1, p0, Le/a/x/h0/b/g;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-void
.end method


# virtual methods
.method public b()Ls1/k;
    .locals 4
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

    .line 2
    iget-object v1, p0, Le/a/x/h0/b/g;->b:Ljava/lang/String;

    .line 3
    new-instance v2, Ls1/k;

    const-string v3, "ProStatusV2"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "PC_StoragePermissionAbsent"

    .line 5
    invoke-direct {v0, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Le/a/q2/x$b;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/x/h0/b/g;->b:Ljava/lang/String;

    const-string v2, "ProStatusV2"

    const-string v3, "PC_StoragePermissionAbsent"

    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Le/a/q2/x$d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/q2/x$d<",
            "Le/a/l5/a/q1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/q1;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/q1$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/q1$b;-><init>(Le/a/l5/a/q1$a;)V

    .line 3
    iget-object v2, p0, Le/a/x/h0/b/g;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/q1$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    invoke-virtual {v1}, Le/a/l5/a/q1$b;->a()Le/a/l5/a/q1;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public e()Lcom/truecaller/premium/analytics/LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/x/h0/b/g;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-object v0
.end method
