.class public final Le/a/s2/g/c/g;
.super Le/a/l/l2/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/analytics/LogLevel;

.field public final b:Ljava/lang/Integer;

.field public final c:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;Z)V
    .locals 1

    const-string v0, "announceCallerToggleSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/l/l2/a;-><init>()V

    iput-object p1, p0, Le/a/s2/g/c/g;->b:Ljava/lang/Integer;

    iput-object p2, p0, Le/a/s2/g/c/g;->c:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;

    iput-boolean p3, p0, Le/a/s2/g/c/g;->d:Z

    .line 2
    sget-object p1, Lcom/truecaller/premium/analytics/LogLevel;->CORE:Lcom/truecaller/premium/analytics/LogLevel;

    iput-object p1, p0, Le/a/s2/g/c/g;->a:Lcom/truecaller/premium/analytics/LogLevel;

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
    iget-object v2, p0, Le/a/s2/g/c/g;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
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
    iget-object v3, p0, Le/a/s2/g/c/g;->c:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ls1/k;

    const-string v5, "source"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 6
    iget-boolean v3, p0, Le/a/s2/g/c/g;->d:Z

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

    const-string v2, "AC_ToggleDisabled"

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
    iget-object v1, p0, Le/a/s2/g/c/g;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string v2, "CardPosition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Le/a/s2/g/c/g;->c:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Le/a/s2/g/c/g;->d:Z

    const-string v2, "PromoShown"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "AC_ToggleDisabled"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public d()Le/a/q2/x$d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/q2/x$d<",
            "Le/a/l5/a/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/h;->f:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/h$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/h$b;-><init>(Le/a/l5/a/h$a;)V

    .line 3
    iget-boolean v2, p0, Le/a/s2/g/c/g;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/h$b;->c:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget-object v2, p0, Le/a/s2/g/c/g;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 8
    :goto_0
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput v2, v1, Le/a/l5/a/h$b;->b:I

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 11
    iget-object v2, p0, Le/a/s2/g/c/g;->c:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v2, v1, Le/a/l5/a/h$b;->a:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 15
    invoke-virtual {v1}, Le/a/l5/a/h$b;->a()Le/a/l5/a/h;

    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public e()Lcom/truecaller/premium/analytics/LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/g/c/g;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-object v0
.end method
