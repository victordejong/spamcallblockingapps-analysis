.class public final Le/a/s2/g/c/c;
.super Le/a/l/l2/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/analytics/LogLevel;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "callType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/l/l2/a;-><init>()V

    iput-boolean p1, p0, Le/a/s2/g/c/c;->b:Z

    iput-boolean p2, p0, Le/a/s2/g/c/c;->c:Z

    iput-object p3, p0, Le/a/s2/g/c/c;->d:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;

    iput-object p4, p0, Le/a/s2/g/c/c;->e:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/truecaller/premium/analytics/LogLevel;->CORE:Lcom/truecaller/premium/analytics/LogLevel;

    iput-object p1, p0, Le/a/s2/g/c/c;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-void
.end method


# virtual methods
.method public c()Le/a/q2/x$b;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-boolean v1, p0, Le/a/s2/g/c/c;->b:Z

    const-string v2, "IsPhoneBookContact"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-boolean v1, p0, Le/a/s2/g/c/c;->c:Z

    const-string v2, "AnnouncingOnHeadset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v1, p0, Le/a/s2/g/c/c;->d:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/s2/g/c/c;->e:Ljava/lang/String;

    const-string v2, "Language"

    const-string v3, "AC_CallAnnounced"

    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Le/a/q2/x$d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/q2/x$d<",
            "Le/a/l5/a/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/d;->g:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/d$b;-><init>(Le/a/l5/a/d$a;)V

    .line 3
    iget-object v2, p0, Le/a/s2/g/c/c;->d:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/d$b;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget-boolean v2, p0, Le/a/s2/g/c/c;->c:Z

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-boolean v2, v1, Le/a/l5/a/d$b;->b:Z

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 11
    iget-boolean v2, p0, Le/a/s2/g/c/c;->b:Z

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-boolean v2, v1, Le/a/l5/a/d$b;->a:Z

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 15
    iget-object v2, p0, Le/a/s2/g/c/c;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object v2, v1, Le/a/l5/a/d$b;->d:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 19
    invoke-virtual {v1}, Le/a/l5/a/d$b;->a()Le/a/l5/a/d;

    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public e()Lcom/truecaller/premium/analytics/LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/g/c/c;->a:Lcom/truecaller/premium/analytics/LogLevel;

    return-object v0
.end method
