.class public final Le/a/q2/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/i0;


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

.field public final b:Le/a/q2/a;

.field public final c:Le/a/q2/j0;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/q2/a;Le/a/q2/j0;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/q2/a;",
            "Le/a/q2/j0;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsDataHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/o0;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    iput-object p3, p0, Le/a/q2/o0;->c:Le/a/q2/j0;

    iput-object p4, p0, Le/a/q2/o0;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/avro/generic/GenericRecord;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public b(Le/a/q2/v;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    invoke-interface {v0, p1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public c(Ljava/lang/String;JZ)V
    .locals 10

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/q2/o0;->d:Ls1/w/f;

    const/4 v3, 0x0

    new-instance p4, Le/a/q2/o0$d;

    const/4 v9, 0x0

    move-object v4, p4

    move-object v5, p0

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Le/a/q2/o0$d;-><init>(Le/a/q2/o0;JLjava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    :goto_0
    return-void
.end method

.method public d(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    .line 2
    invoke-static {}, Le/a/l5/a/z1;->a()Le/a/l5/a/z1$b;

    move-result-object v1

    const-string v2, "displayCallsInConversation"

    .line 3
    invoke-virtual {v1, v2}, Le/a/l5/a/z1$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/z1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 5
    invoke-virtual {v1, p2}, Le/a/l5/a/z1$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 6
    invoke-virtual {v1}, Le/a/l5/a/z1$b;->a()Le/a/l5/a/z1;

    move-result-object p1

    const-string p2, "AppSettingChanged.newBui\u2026\n                .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/o;)V
    .locals 12

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2
    :goto_0
    instance-of v4, p2, Le/a/a/k/o$b;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, p2

    check-cast v4, Le/a/a/k/o$b;

    .line 3
    iget-object v4, v4, Le/a/a/k/o$b;->a:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_1
    instance-of v4, p2, Le/a/a/k/o$a;

    if-eqz v4, :cond_2

    move-object v4, p2

    check-cast v4, Le/a/a/k/o$a;

    .line 5
    iget-object v4, v4, Le/a/a/k/o$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 6
    :goto_1
    iget-object v6, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v7, "message.entities"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    array-length v7, v6

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 8
    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v10

    xor-int/2addr v10, v1

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move-object v9, v5

    :goto_3
    if-eqz v9, :cond_5

    .line 9
    iget-object v6, v9, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_7

    const-string v7, "contentType"

    .line 10
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "text/vnd.plain-file"

    .line 11
    invoke-static {v7, v6, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "text/plain"

    goto :goto_5

    :cond_6
    move-object v7, v6

    goto :goto_5

    :cond_7
    move-object v7, v5

    .line 12
    :goto_5
    sget-object v8, Le/a/l5/a/y0;->o:Lorg/apache/avro/Schema;

    new-instance v8, Le/a/l5/a/y0$b;

    invoke-direct {v8, v5}, Le/a/l5/a/y0$b;-><init>(Le/a/l5/a/y0$a;)V

    .line 13
    iget-object v9, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_8

    iget-object v9, v9, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v9, v9, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    .line 14
    :goto_6
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v8, v10, v9}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object v9, v8, Le/a/l5/a/y0$b;->a:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v9

    aput-boolean v1, v9, v11

    .line 17
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 18
    iput-boolean v0, v8, Le/a/l5/a/y0$b;->b:Z

    .line 19
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v10

    .line 20
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->r:Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    const-string v0, "unknown"

    .line 21
    :goto_7
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v8, v9, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 22
    iput-object v0, v8, Le/a/l5/a/y0$b;->c:Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v2

    .line 24
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    .line 25
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v2, v2, v9

    invoke-virtual {v8, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 26
    iput-object v0, v8, Le/a/l5/a/y0$b;->d:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v9

    if-eqz v6, :cond_a

    .line 28
    invoke-static {v6}, Le/m/d/y/n;->r1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_a
    move-object v0, v5

    .line 29
    :goto_8
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v6, 0x6

    aget-object v2, v2, v6

    invoke-virtual {v8, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 30
    iput-object v0, v8, Le/a/l5/a/y0$b;->e:Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v6

    .line 32
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v8, v0, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 33
    iput-object v7, v8, Le/a/l5/a/y0$b;->f:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v2

    .line 35
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message.buildMessageText()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    move v3, v1

    .line 36
    :cond_b
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 37
    iput-boolean v3, v8, Le/a/l5/a/y0$b;->g:Z

    .line 38
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v2

    .line 39
    instance-of v0, p2, Le/a/a/k/o$d;

    if-nez v0, :cond_c

    move-object p2, v5

    :cond_c
    check-cast p2, Le/a/a/k/o$d;

    if-eqz p2, :cond_d

    .line 40
    iget-object v5, p2, Le/a/a/k/o$d;->a:Ljava/lang/String;

    .line 41
    :cond_d
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/16 v0, 0x9

    aget-object p2, p2, v0

    invoke-virtual {v8, p2, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput-object v5, v8, Le/a/l5/a/y0$b;->h:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v1, p2, v0

    .line 44
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/16 v0, 0xa

    aget-object p2, p2, v0

    invoke-virtual {v8, p2, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 45
    iput-object v4, v8, Le/a/l5/a/y0$b;->i:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v1, p2, v0

    .line 47
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->w:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 48
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-virtual {v8, v0, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 49
    iput-object p2, v8, Le/a/l5/a/y0$b;->j:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v1, p2, v2

    .line 51
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message;->A:Z

    .line 52
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 53
    iput-boolean p2, v8, Le/a/l5/a/y0$b;->k:Z

    .line 54
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    aput-boolean v1, p2, v2

    .line 55
    invoke-static {p1}, Le/a/c/p/a;->D1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "urgent"

    goto :goto_9

    :cond_e
    const-string p1, "regular"

    .line 56
    :goto_9
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/16 v0, 0xd

    aget-object p2, p2, v0

    invoke-virtual {v8, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 57
    iput-object p1, v8, Le/a/l5/a/y0$b;->l:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, v0

    .line 59
    invoke-virtual {v8}, Le/a/l5/a/y0$b;->a()Le/a/l5/a/y0;

    move-result-object p1

    .line 60
    iget-object p2, p0, Le/a/q2/o0;->a:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public f(Ljava/lang/String;J)V
    .locals 10

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/q2/o0;->d:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v0, Le/a/q2/o0$b;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Le/a/q2/o0$b;-><init>(Le/a/q2/o0;JLjava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public g(Ljava/util/Collection;Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/Long;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            "Ljava/lang/Long;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "participants"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "view"

    move-object/from16 v3, p2

    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "inboxTab"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "isBusiness"

    move-object/from16 v4, p5

    invoke-static {v4, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "none"

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3
    check-cast v6, Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    iget-boolean v8, v6, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    if-eqz v8, :cond_0

    const-string v7, "topSpammer"

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v6}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, "spammerFromServer"

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v6}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v7, "userSpammerList"

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v5}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v8, 0x0

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_6

    .line 10
    invoke-static {v1}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v7

    .line 11
    :goto_4
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const-string v4, "personal"

    goto :goto_5

    :cond_7
    const-string v4, "business"

    :goto_5
    move-object/from16 v16, v4

    if-eqz p4, :cond_8

    .line 12
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_8
    if-nez v8, :cond_9

    goto :goto_7

    .line 13
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_a

    const-string v4, "Sales"

    :goto_6
    move-object v11, v4

    goto/16 :goto_f

    :cond_a
    :goto_7
    if-nez v8, :cond_b

    goto :goto_8

    .line 14
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_c

    const-string v4, "Scam"

    goto :goto_6

    :cond_c
    :goto_8
    if-nez v8, :cond_d

    goto :goto_9

    .line 15
    :cond_d
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    const-string v4, "Harassment"

    goto :goto_6

    :cond_e
    :goto_9
    if-nez v8, :cond_f

    goto :goto_a

    .line 16
    :cond_f
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_10

    const-string v4, "Political"

    goto :goto_6

    :cond_10
    :goto_a
    if-nez v8, :cond_11

    goto :goto_b

    .line 17
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_12

    const-string v4, "Survey"

    goto :goto_6

    :cond_12
    :goto_b
    if-nez v8, :cond_13

    goto :goto_c

    .line 18
    :cond_13
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_14

    const-string v4, "Robocall"

    goto :goto_6

    :cond_14
    :goto_c
    if-nez v8, :cond_15

    goto :goto_d

    .line 19
    :cond_15
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    const-string v4, "Donation"

    goto :goto_6

    :cond_16
    :goto_d
    if-nez v8, :cond_17

    goto :goto_e

    .line 20
    :cond_17
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_18

    const-string v4, "Public Services"

    goto :goto_6

    :cond_18
    :goto_e
    if-nez v8, :cond_19

    const-string v4, "Empty Category"

    goto :goto_6

    :cond_19
    const-string v4, "Unknown Category"

    goto :goto_6

    .line 21
    :goto_f
    iget-object v14, v0, Le/a/q2/o0;->b:Le/a/q2/a;

    const-string v13, "BlockThread"

    const-string v4, "type"

    .line 22
    invoke-static {v13, v4}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v12

    const-string v10, "name"

    const-string v8, "value"

    move-object v4, v9

    move-object v5, v10

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v3, v8

    move-object v8, v12

    move-object/from16 p1, v13

    move-object v13, v10

    move-object/from16 v10, p2

    .line 23
    invoke-static/range {v4 .. v10}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v18

    const-string v4, "tab"

    .line 24
    invoke-virtual {v0, v2}, Le/a/q2/o0;->x(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v4, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v12, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "spammerType"

    .line 27
    invoke-static {v2, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "category"

    .line 29
    invoke-static {v1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {v12, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v15

    move-object v11, v13

    move-object v1, v12

    move-object/from16 v12, v16

    move-object/from16 v2, p1

    move-object v13, v3

    move-object v3, v14

    move-object v14, v1

    move-object/from16 v17, v2

    .line 31
    invoke-static/range {v10 .. v18}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v2

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 32
    invoke-static {v2, v1, v4, v3}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public h(ILcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 6

    const-string v0, "inboxTab"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    const-string v1, "BlockMultipleNumbers"

    const-string v2, "type"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "tab"

    .line 4
    invoke-virtual {p0, p2}, Le/a/q2/o0;->x(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "name"

    .line 5
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-static {p2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-double p1, p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v3}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string p2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v13, p2

    const-string v8, "transport"

    const-string v12, "context"

    const-string v18, "uiControl"

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p3

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/l5/a/k2;->e:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/k2$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/k2$b;-><init>(Le/a/l5/a/k2$a;)V

    .line 2
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 3
    iput-object v7, v1, Le/a/l5/a/k2$b;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v13}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 6
    iput-object v13, v1, Le/a/l5/a/k2$b;->b:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v3

    .line 8
    invoke-virtual {v1}, Le/a/l5/a/k2$b;->a()Le/a/l5/a/k2;

    move-result-object v1

    .line 9
    iget-object v2, v0, Le/a/q2/o0;->a:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-interface {v2, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    const-string v15, "SwitchMessageTransport"

    const-string v1, "type"

    .line 10
    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v16, "name"

    const-string v17, "value"

    move-object v1, v8

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    move-object v5, v14

    move-object v6, v8

    move-object v8, v12

    move-object/from16 v9, v16

    move-object/from16 v10, p2

    move-object/from16 v11, v17

    .line 12
    invoke-static/range {v1 .. v13}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v21

    move-object/from16 v13, v18

    move-object v1, v14

    move-object/from16 v14, v16

    move-object v2, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    move-object/from16 v19, p3

    move-object/from16 v20, v2

    .line 13
    invoke-static/range {v13 .. v21}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, v0, Le/a/q2/o0;->b:Le/a/q2/a;

    invoke-interface {v2, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 10

    const-string v5, "action"

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "UrgentMessageBubble"

    const-string v0, "type"

    .line 1
    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, "name"

    const-string v3, "value"

    move-object v0, v5

    move-object v1, v9

    move-object v2, p1

    move-object v4, v8

    move-object v6, p1

    .line 3
    invoke-static/range {v0 .. v6}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string p2, "timeToReact"

    long-to-double v0, v0

    .line 5
    invoke-static {p2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p2

    invoke-virtual {p2, v7}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p2, p1}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p2, v8}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string p2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Le/a/q2/o0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public k(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    iget-boolean v3, v2, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    if-eqz v3, :cond_0

    const-string v2, "topSpammer"

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "spammerFromServer"

    goto :goto_1

    :cond_1
    const-string v2, "categorizedAsSpam"

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 9
    invoke-static {v0}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const-string v0, "mixed"

    :goto_4
    const-string v1, "NeverMarkAsSpam"

    const-string v2, "type"

    .line 10
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    int-to-double v4, p1

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v4, "value"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "spammerType"

    const-string v5, "name"

    .line 14
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v3}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 4

    const-string v0, "eventName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    const-string v1, "type"

    .line 2
    invoke-static {p1, v1}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {p1, v2, v1, v3, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public m(Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 13

    const-string v7, "value"

    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "tab"

    invoke-static {p2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v9, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    const-string v10, "ToggleInboxThreadDisplay"

    const-string v0, "type"

    .line 2
    invoke-static {v10, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v11

    const-string v12, "name"

    move-object v0, v7

    move-object v1, v12

    move-object v2, p1

    move-object v3, v7

    move-object v4, v11

    move-object v5, v7

    move-object v6, p1

    .line 3
    invoke-static/range {v0 .. v6}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2}, Le/a/q2/o0;->x(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v8, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v11, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p2

    invoke-virtual {p2, v10}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p2, p1}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p2, v11}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string p2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v9, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public n(Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/Integer;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "action"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tab"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "InboxOverflowAction"

    const-string v6, "type"

    .line 1
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    move/from16 v7, p4

    int-to-double v7, v7

    .line 4
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v10, "value"

    invoke-interface {v14, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "name"

    .line 5
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v2}, Le/a/q2/o0;->x(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v6, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v12, "inboxSize"

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    const-string v1, "0-20"

    :goto_0
    move-object v13, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    const-string v1, "20-50"

    goto :goto_0

    :cond_1
    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    const-string v1, "50-100"

    goto :goto_0

    :cond_2
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_3

    const-string v1, "100-500"

    goto :goto_0

    :cond_3
    const-string v1, "500+"

    goto :goto_0

    :goto_1
    move-object v7, v12

    move-object v9, v13

    move-object v11, v6

    .line 11
    invoke-static/range {v7 .. v13}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v14}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v6}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, v0, Le/a/q2/o0;->b:Le/a/q2/a;

    invoke-interface {v2, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public o(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "confidenceValues"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceLang"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceLang"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    move v15, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v15

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    move v13, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    goto :goto_1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Ls1/u/i;->j(Ljava/lang/Iterable;)D

    move-result-wide v2

    double-to-float v0, v2

    move-object/from16 v12, p0

    .line 4
    iget-object v11, v12, Le/a/q2/o0;->b:Le/a/q2/a;

    const-string v10, "TextMessageTranslationConfidence"

    const-string v2, "type"

    .line 5
    invoke-static {v10, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v7, "sourceLanguage"

    const-string v6, "name"

    const-string v16, "value"

    const-string v17, "deviceLanguage"

    move-object v2, v7

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v5, v16

    move-object/from16 v18, v6

    move-object v6, v9

    move-object/from16 v8, p2

    move-object v1, v9

    move-object/from16 v9, v17

    move-object/from16 p2, v1

    move-object v1, v10

    move-object/from16 v10, v18

    move-object/from16 v19, v11

    move-object/from16 v11, p3

    move-object/from16 v12, v16

    move/from16 v16, v13

    move-object/from16 v13, v17

    move-object/from16 v14, p3

    .line 6
    invoke-static/range {v2 .. v14}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "numMessages"

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v5, v18

    .line 8
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v6, v4

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "minConf"

    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float/2addr v15, v4

    .line 10
    invoke-static {v15}, Le/q/f/a/d/a;->J2(F)I

    move-result v6

    .line 11
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v6, v6

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "maxConf"

    mul-float v13, v16, v4

    .line 13
    invoke-static {v13}, Le/q/f/a/d/a;->J2(F)I

    move-result v6

    .line 14
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v6, v6

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "meanConf"

    mul-float/2addr v0, v4

    .line 16
    invoke-static {v0}, Le/q/f/a/d/a;->J2(F)I

    move-result v0

    .line 17
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v4, v0

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v2}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v19

    .line 20
    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    .line 21
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 22
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public p(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;IZ)V
    .locals 14

    move/from16 v0, p3

    const-string v1, "message"

    move-object v5, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/m/d/y/n;->q1(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    const-string v2, "spam"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "personal"

    goto :goto_0

    :cond_0
    const-string v0, "promotional"

    goto :goto_0

    :cond_1
    move-object v8, v2

    goto :goto_1

    :cond_2
    const-string v0, "business"

    :goto_0
    move-object v8, v0

    :goto_1
    if-eqz p4, :cond_3

    move-object v7, v2

    goto :goto_2

    :cond_3
    const-string v0, "notSpam"

    move-object v7, v0

    .line 2
    :goto_2
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    move-object v11, p0

    iget-object v1, v11, Le/a/q2/o0;->d:Ls1/w/f;

    const/4 v12, 0x0

    new-instance v13, Le/a/q2/o0$c;

    const/4 v10, 0x0

    move-object v2, v13

    move-object v3, p0

    move/from16 v4, p4

    move-object v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Le/a/q2/o0$c;-><init>(Le/a/q2/o0;ZLcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v2, v12

    move-object v3, v13

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;ZLjava/lang/String;)V
    .locals 5

    const-string v0, "userInteraction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participants"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p3}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p3}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, ""

    .line 4
    :goto_1
    sget-object v2, Le/a/l5/a/v0;->i:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/v0$b;

    invoke-direct {v2, v1}, Le/a/l5/a/v0$b;-><init>(Le/a/l5/a/v0$a;)V

    .line 5
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v2, v1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 6
    iput-object p3, v2, Le/a/l5/a/v0$b;->a:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p3

    const/4 v1, 0x1

    aput-boolean v1, p3, v3

    .line 8
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p3

    const/4 v3, 0x3

    aget-object p3, p3, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p3, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-boolean v0, v2, Le/a/l5/a/v0$b;->b:Z

    .line 10
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p3

    aput-boolean v1, p3, v3

    .line 11
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p3

    const/4 v0, 0x4

    aget-object p3, p3, v0

    invoke-virtual {v2, p3, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 12
    iput-object p1, v2, Le/a/l5/a/v0$b;->c:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, v0

    .line 14
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 p3, 0x5

    aget-object p1, p1, p3

    invoke-virtual {v2, p1, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object p2, v2, Le/a/l5/a/v0$b;->d:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, p3

    .line 17
    invoke-static {p5}, Le/m/d/y/n;->r1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 p3, 0x6

    aget-object p2, p2, p3

    invoke-virtual {v2, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 19
    iput-object p1, v2, Le/a/l5/a/v0$b;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, p3

    .line 21
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 p2, 0x7

    aget-object p1, p1, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v2, p1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 22
    iput-boolean p4, v2, Le/a/l5/a/v0$b;->f:Z

    .line 23
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, p2

    .line 24
    invoke-virtual {v2}, Le/a/l5/a/v0$b;->a()Le/a/l5/a/v0;

    move-result-object p1

    .line 25
    iget-object p2, p0, Le/a/q2/o0;->a:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 4

    const-string v0, "chatType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/o0;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 2
    sget-object v1, Le/a/l5/a/i0;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/i0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/i0$b;-><init>(Le/a/l5/a/i0$a;)V

    .line 3
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object p1, v1, Le/a/l5/a/i0$b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v2, 0x1

    aput-boolean v2, p1, v3

    .line 6
    invoke-virtual {v1}, Le/a/l5/a/i0$b;->a()Le/a/l5/a/i0;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 10

    const-string v1, "userInteraction"

    const-string v3, "analyticsId"

    const-string v5, "transportName"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "participants"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    aget-object v7, p4, v3

    const-string v8, "participant"

    .line 3
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v8

    .line 5
    invoke-virtual {v7}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v9

    invoke-virtual {v8, v9}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    .line 6
    iget-object v9, v7, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v6

    invoke-virtual {v8, v9}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    .line 7
    iget v9, v7, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v9, v6, :cond_0

    move v9, v6

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Le/a/l5/a/m3$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 8
    iget-boolean v9, v7, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Le/a/l5/a/m3$b;->e(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 9
    iget v9, v7, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v9, v4, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v4}, Le/a/l5/a/m3$b;->g(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 10
    invoke-virtual {v7}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v4}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 11
    iget v4, v7, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v4}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 12
    iget v4, v7, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 13
    invoke-virtual {v8}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object v4

    .line 14
    sget-object v8, Le/a/l5/a/b4;->d:Lorg/apache/avro/Schema;

    new-instance v8, Le/a/l5/a/b4$b;

    invoke-direct {v8, v5}, Le/a/l5/a/b4$b;-><init>(Le/a/l5/a/b4$a;)V

    .line 15
    invoke-virtual {v7}, Lcom/truecaller/data/entity/messaging/Participant;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Le/a/l5/a/b4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/b4$b;

    .line 16
    invoke-virtual {v7}, Lcom/truecaller/data/entity/messaging/Participant;->f()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v8, v7, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 18
    iput-object v5, v8, Le/a/l5/a/b4$b;->b:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v8}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v6, v5, v6

    .line 20
    invoke-virtual {v8, v4}, Le/a/l5/a/b4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/b4$b;

    .line 21
    invoke-virtual {v8}, Le/a/l5/a/b4$b;->a()Le/a/l5/a/b4;

    move-result-object v4

    const-string v5, "com.truecaller.tracking.\u2026nfo)\n            .build()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 23
    :cond_3
    sget-object p4, Le/a/l5/a/b1;->g:Lorg/apache/avro/Schema;

    new-instance p4, Le/a/l5/a/b1$b;

    invoke-direct {p4, v5}, Le/a/l5/a/b1$b;-><init>(Le/a/l5/a/b1$a;)V

    .line 24
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {p4, v1, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 25
    iput-object v0, p4, Le/a/l5/a/b1$b;->a:Ljava/util/List;

    .line 26
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v6, v0, v4

    .line 27
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p4, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 28
    iput-object p1, p4, Le/a/l5/a/b1$b;->b:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v6, p1, v1

    .line 30
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 v0, 0x4

    aget-object p1, p1, v0

    invoke-virtual {p4, p1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 31
    iput-object p3, p4, Le/a/l5/a/b1$b;->c:Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v6, p1, v0

    .line 33
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 p3, 0x5

    aget-object p1, p1, p3

    invoke-virtual {p4, p1, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 34
    iput-object p2, p4, Le/a/l5/a/b1$b;->d:Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p4}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v6, p1, p3

    .line 36
    invoke-virtual {p4}, Le/a/l5/a/b1$b;->a()Le/a/l5/a/b1;

    move-result-object p1

    .line 37
    iget-object p2, p0, Le/a/q2/o0;->a:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public t(ZLjava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p4

    const-string v0, "transportList"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, "im"

    :goto_3
    move-object v12, v0

    goto/16 :goto_c

    .line 3
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_6

    .line 4
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v7, 0x4

    if-ne v4, v7, :cond_7

    goto :goto_4

    :cond_7
    move v4, v2

    goto :goto_5

    :cond_8
    :goto_4
    move v4, v3

    :goto_5
    if-nez v4, :cond_6

    move v0, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v0, v3

    :goto_7
    if-eqz v0, :cond_a

    const-string v0, "sms"

    goto :goto_3

    .line 5
    :cond_a
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_a

    .line 6
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_e

    const/4 v4, 0x7

    if-ne v1, v4, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    goto :goto_9

    :cond_e
    :goto_8
    move v1, v3

    :goto_9
    if-nez v1, :cond_c

    goto :goto_b

    :cond_f
    :goto_a
    move v2, v3

    :goto_b
    if-eqz v2, :cond_10

    const-string v0, "mms"

    goto :goto_3

    :cond_10
    const-string v0, "mixed"

    goto :goto_3

    :goto_c
    const-string v13, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    const-string v11, "type"

    const-string v15, "name"

    const-string v4, "value"

    if-eqz p1, :cond_12

    const-string v0, "MarkMessageAsImportant"

    .line 7
    invoke-static {v0, v11}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move/from16 v3, p3

    int-to-double v7, v3

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v5, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v11

    move-object v7, v15

    move-object v8, v12

    move-object v9, v4

    move-object v10, v1

    .line 12
    invoke-static/range {v6 .. v12}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_11

    const-string v19, "initiatedVia"

    move-object/from16 v14, v19

    move-object/from16 v16, p5

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v20, p5

    .line 13
    invoke-static/range {v14 .. v20}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_11
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v3, v2}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v3, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v3}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    invoke-static {v0, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_12
    const-string v14, "UnmarkMessageAsImportant"

    .line 15
    invoke-static {v14, v11}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v10

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, p4

    move-object v3, v4

    move-object/from16 v16, v4

    move-object v4, v10

    move-object/from16 v6, p4

    move-object v7, v11

    move-object v8, v15

    move-object v9, v12

    move-object v15, v10

    move-object/from16 v10, v16

    .line 16
    invoke-static/range {v0 .. v12}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 17
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    invoke-virtual {v1, v14}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v0}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v15}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    invoke-static {v0, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    move-object/from16 v1, p0

    .line 18
    invoke-virtual {v1, v0}, Le/a/q2/o0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public u(ZJILcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 13

    const-string v0, "tab"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "ArchiveConversation"

    goto :goto_0

    :cond_0
    const-string v0, "UnarchiveConversation"

    :goto_0
    move-object v6, v0

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    move-object v9, p0

    iget-object v10, v9, Le/a/q2/o0;->d:Ls1/w/f;

    const/4 v11, 0x0

    new-instance v12, Le/a/q2/o0$a;

    const/4 v8, 0x0

    move-object v1, v12

    move-object v2, p0

    move-wide v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Le/a/q2/o0$a;-><init>(Le/a/q2/o0;JILjava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public v(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/q2/o0;->d:Ls1/w/f;

    new-instance v0, Le/a/q2/o0$e;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Le/a/q2/o0$e;-><init>(Le/a/q2/o0;Ljava/util/List;Ljava/lang/String;ZLs1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public w(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q2/o0;->b:Le/a/q2/a;

    int-to-double v1, p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 3
    new-instance v1, Le/a/q2/g$b$a;

    const-string v2, "PersonalTabUnreadMessagesBannerClick"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p1, "AnalyticsEvent.Builder(M\u2026\n                .build()"

    .line 4
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public final x(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "promotional"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p1, "spam"

    goto :goto_0

    :cond_2
    const-string p1, "business"

    goto :goto_0

    :cond_3
    const-string p1, "other"

    goto :goto_0

    :cond_4
    const-string p1, "personal"

    :goto_0
    return-object p1
.end method
