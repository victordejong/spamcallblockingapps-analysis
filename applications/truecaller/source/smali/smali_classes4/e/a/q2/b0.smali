.class public final Le/a/q2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/a0;


# instance fields
.field public final a:Le/a/q2/i;

.field public final b:Le/a/q2/b1/a;

.field public final c:Le/a/q2/b1/d;

.field public final d:Le/a/q2/c0;

.field public final e:Le/a/p5/u;

.field public final f:Le/a/q2/g0;

.field public final g:Le/a/q2/d1/c;

.field public final h:Landroid/telephony/TelephonyManager;

.field public i:J


# direct methods
.method public constructor <init>(Le/a/q2/i;Le/a/q2/b1/a;Le/a/q2/b1/d;Le/a/q2/c0;Le/a/p5/u;Le/a/q2/g0;Le/a/q2/d1/c;Landroid/telephony/TelephonyManager;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/a/q2/b0;->i:J

    .line 3
    iput-object p1, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    .line 4
    iput-object p2, p0, Le/a/q2/b0;->b:Le/a/q2/b1/a;

    .line 5
    iput-object p3, p0, Le/a/q2/b0;->c:Le/a/q2/b1/d;

    .line 6
    iput-object p4, p0, Le/a/q2/b0;->d:Le/a/q2/c0;

    .line 7
    iput-object p5, p0, Le/a/q2/b0;->e:Le/a/p5/u;

    .line 8
    iput-object p6, p0, Le/a/q2/b0;->f:Le/a/q2/g0;

    .line 9
    iput-object p8, p0, Le/a/q2/b0;->h:Landroid/telephony/TelephonyManager;

    .line 10
    iput-object p7, p0, Le/a/q2/b0;->g:Le/a/q2/d1/c;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/avro/generic/GenericRecord;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Le/a/q2/b0;->e(Lorg/apache/avro/generic/GenericRecord;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :try_start_0
    iget-object p1, p0, Le/a/q2/b0;->c:Le/a/q2/b1/d;

    new-instance v1, Le/a/q2/b1/c;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Le/a/q2/b1/c;-><init>(J[B)V

    invoke-interface {p1, v1}, Le/a/q2/b1/d;->a(Le/a/q2/b1/c;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lorg/apache/avro/generic/GenericRecord;Lu3/e0;)Le/a/r2/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/generic/GenericRecord;",
            "Lu3/e0;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/analytics/EventsUploadResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/a/q2/b0;->e(Lorg/apache/avro/generic/GenericRecord;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/analytics/EventsUploadResult;->FAILURE:Lcom/truecaller/analytics/EventsUploadResult;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    invoke-virtual {v2}, Le/a/q2/i;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    invoke-static {v0}, Le/a/q2/y;->a([B)Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Le/a/q2/b0;->d:Le/a/q2/c0;

    iget-object v4, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    invoke-interface {v2, v4, p2, v3}, Le/a/q2/c0;->b(Le/a/q2/i;Lu3/e0;Ljava/util/ArrayList;)Z

    move-result v1
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 9
    :try_start_1
    iget-object p1, p0, Le/a/q2/b0;->c:Le/a/q2/b1/d;

    new-instance p2, Le/a/q2/b1/c;

    const-wide/16 v1, 0x0

    invoke-direct {p2, v1, v2, v0}, Le/a/q2/b1/c;-><init>(J[B)V

    invoke-interface {p1, p2}, Le/a/q2/b1/d;->a(Le/a/q2/b1/c;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    sget-object p1, Lcom/truecaller/analytics/EventsUploadResult;->QUEUED:Lcom/truecaller/analytics/EventsUploadResult;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget-object p1, Lcom/truecaller/analytics/EventsUploadResult;->SUCCESS:Lcom/truecaller/analytics/EventsUploadResult;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public c(Lu3/e0;)Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/e0;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/q2/b0;->d:Le/a/q2/c0;

    iget-object v1, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    invoke-interface {v0, v1, p1}, Le/a/q2/c0;->a(Le/a/q2/i;Lu3/e0;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Long;)Lcom/truecaller/tracking/events/ClientHeaderV2;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/AvroRuntimeException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/tracking/events/App;->e:Lorg/apache/avro/Schema;

    new-instance v0, Lcom/truecaller/tracking/events/App$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/tracking/events/App$b;-><init>(Lcom/truecaller/tracking/events/App$a;)V

    .line 2
    iget-object v2, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    .line 3
    iget-object v2, v2, Le/a/q2/i;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v0, Lcom/truecaller/tracking/events/App$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    iget-object v2, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    .line 8
    iget-object v2, v2, Le/a/q2/i;->d:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c3/a;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v0, v5, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 10
    iput-object v2, v0, Lcom/truecaller/tracking/events/App$b;->c:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v6

    .line 12
    iget-object v2, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    .line 13
    iget-object v2, v2, Le/a/q2/i;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v0, v5, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object v2, v0, Lcom/truecaller/tracking/events/App$b;->b:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v3

    .line 17
    iget-object v2, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    .line 18
    iget-object v2, v2, Le/a/q2/i;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v7, 0x3

    aget-object v5, v5, v7

    invoke-virtual {v0, v5, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-object v2, v0, Lcom/truecaller/tracking/events/App$b;->d:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v7

    .line 22
    invoke-virtual {v0}, Lcom/truecaller/tracking/events/App$b;->a()Lcom/truecaller/tracking/events/App;

    move-result-object v0

    .line 23
    sget-object v2, Lcom/truecaller/tracking/events/ClientHeaderV2;->i:Lorg/apache/avro/Schema;

    new-instance v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;

    invoke-direct {v2, v1}, Lcom/truecaller/tracking/events/ClientHeaderV2$b;-><init>(Lcom/truecaller/tracking/events/ClientHeaderV2$a;)V

    .line 24
    iget-wide v8, p0, Le/a/q2/b0;->i:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    const-string v8, "analyticsLastEventId"

    if-nez v5, :cond_0

    .line 25
    iget-object v5, p0, Le/a/q2/b0;->b:Le/a/q2/b1/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v5, v8, v9, v10}, Le/a/q2/b1/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Le/a/q2/b0;->i:J

    .line 26
    :cond_0
    iget-object v5, p0, Le/a/q2/b0;->b:Le/a/q2/b1/a;

    iget-wide v9, p0, Le/a/q2/b0;->i:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Le/a/q2/b0;->i:J

    invoke-interface {v5, v8, v9, v10}, Le/a/q2/b1/a;->putLong(Ljava/lang/String;J)V

    .line 27
    iget-wide v8, p0, Le/a/q2/b0;->i:J

    .line 28
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput-wide v8, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->a:J

    .line 30
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v3, v5, v4

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 33
    iput-wide v8, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->b:J

    .line 34
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v3, v5, v3

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 36
    :goto_0
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v2, v5, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 37
    iput-object p1, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->c:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v6

    .line 39
    iget-object p1, p0, Le/a/q2/b0;->g:Le/a/q2/d1/c;

    .line 40
    iget-object p1, p1, Le/a/q2/d1/c;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 41
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v2, v5, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput-object p1, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->d:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v7

    .line 44
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 v5, 0x4

    aget-object p1, p1, v5

    invoke-virtual {v2, p1, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 45
    iput-object v0, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->e:Lcom/truecaller/tracking/events/App;

    .line 46
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v5

    .line 47
    iget-object p1, p0, Le/a/q2/b0;->e:Le/a/p5/u;

    .line 48
    invoke-interface {p1}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v5, 0x5

    aget-object v0, v0, v5

    invoke-virtual {v2, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 50
    iput-object p1, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->f:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v5

    .line 52
    iget-object p1, p0, Le/a/q2/b0;->h:Landroid/telephony/TelephonyManager;

    .line 53
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v5, 0x6

    aget-object v0, v0, v5

    invoke-virtual {v2, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 55
    iput-object p1, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->g:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v5

    .line 57
    iget-object p1, p0, Le/a/q2/b0;->f:Le/a/q2/g0;

    invoke-interface {p1}, Le/a/q2/g0;->a()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    sget-object v0, Lcom/truecaller/tracking/events/Coordinates;->d:Lorg/apache/avro/Schema;

    new-instance v0, Lcom/truecaller/tracking/events/Coordinates$b;

    invoke-direct {v0, v1}, Lcom/truecaller/tracking/events/Coordinates$b;-><init>(Lcom/truecaller/tracking/events/Coordinates$a;)V

    .line 59
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    double-to-float v1, v7

    .line 60
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 61
    iput v1, v0, Lcom/truecaller/tracking/events/Coordinates$b;->a:F

    .line 62
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v3, v1, v4

    .line 63
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v1, v4

    .line 64
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 65
    iput v1, v0, Lcom/truecaller/tracking/events/Coordinates$b;->b:F

    .line 66
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v3, v1, v3

    .line 67
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    sub-long/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 68
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 69
    iput-wide v4, v0, Lcom/truecaller/tracking/events/Coordinates$b;->c:J

    .line 70
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v6

    .line 71
    invoke-virtual {v0}, Lcom/truecaller/tracking/events/Coordinates$b;->a()Lcom/truecaller/tracking/events/Coordinates;

    move-result-object v1

    .line 72
    :goto_1
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 v0, 0x7

    aget-object p1, p1, v0

    invoke-virtual {v2, p1, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 73
    iput-object v1, v2, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->h:Lcom/truecaller/tracking/events/Coordinates;

    .line 74
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v0

    .line 75
    invoke-virtual {v2}, Lcom/truecaller/tracking/events/ClientHeaderV2$b;->a()Lcom/truecaller/tracking/events/ClientHeaderV2;

    move-result-object p1

    return-object p1

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "BuildHelper was not injected"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lorg/apache/avro/generic/GenericRecord;)[B
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/q2/b0;->a:Le/a/q2/i;

    invoke-virtual {v0}, Le/a/q2/i;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Le/a/q2/b0;->d(Ljava/lang/Long;)Lcom/truecaller/tracking/events/ClientHeaderV2;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/q2/y;->d(Lcom/truecaller/tracking/events/ClientHeaderV2;Lorg/apache/avro/generic/GenericRecord;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    invoke-interface {p1}, Lorg/apache/avro/generic/GenericContainer;->getSchema()Lorg/apache/avro/Schema;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getName()Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v2
.end method
