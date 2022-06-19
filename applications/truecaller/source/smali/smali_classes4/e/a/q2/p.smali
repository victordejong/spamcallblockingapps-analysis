.class public final Le/a/q2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/Boolean;

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Ljava/lang/Boolean;

.field public final q:Ljava/lang/Boolean;

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZZLjava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZZZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    const-string v2, "themeName"

    const-string v4, "inCallUISettingValue"

    const-string v6, "inCallUIOptedInByDefaultValue"

    move-object/from16 v1, p11

    move-object/from16 v3, p30

    move-object/from16 v5, p31

    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Le/a/q2/p;->a:Z

    move v1, p2

    iput-boolean v1, v0, Le/a/q2/p;->b:Z

    move-object v1, p3

    iput-object v1, v0, Le/a/q2/p;->c:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Le/a/q2/p;->d:Z

    move-object v1, p5

    iput-object v1, v0, Le/a/q2/p;->e:Ljava/lang/String;

    move v1, p6

    iput-boolean v1, v0, Le/a/q2/p;->f:Z

    move-object v1, p7

    iput-object v1, v0, Le/a/q2/p;->g:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Le/a/q2/p;->h:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Le/a/q2/p;->i:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Le/a/q2/p;->j:Ljava/lang/Integer;

    move-object/from16 v1, p11

    iput-object v1, v0, Le/a/q2/p;->k:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Le/a/q2/p;->l:Ljava/lang/Boolean;

    move/from16 v1, p13

    iput-boolean v1, v0, Le/a/q2/p;->m:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Le/a/q2/p;->n:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Le/a/q2/p;->o:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/q2/p;->p:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/q2/p;->q:Ljava/lang/Boolean;

    move/from16 v1, p18

    iput-boolean v1, v0, Le/a/q2/p;->r:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Le/a/q2/p;->s:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Le/a/q2/p;->t:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Le/a/q2/p;->u:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Le/a/q2/p;->v:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Le/a/q2/p;->w:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Le/a/q2/p;->x:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Le/a/q2/p;->y:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Le/a/q2/p;->z:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Le/a/q2/p;->A:Z

    move/from16 v1, p28

    iput-boolean v1, v0, Le/a/q2/p;->B:Z

    move/from16 v1, p29

    iput-boolean v1, v0, Le/a/q2/p;->C:Z

    move-object/from16 v1, p30

    iput-object v1, v0, Le/a/q2/p;->D:Ljava/lang/String;

    move-object/from16 v1, p31

    iput-object v1, v0, Le/a/q2/p;->E:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 8

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/g0;->D:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/g0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/g0$b;-><init>(Le/a/l5/a/g0$a;)V

    .line 3
    iget-boolean v3, p0, Le/a/q2/p;->b:Z

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-boolean v3, v1, Le/a/l5/a/g0$b;->a:Z

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    .line 7
    iget-boolean v3, p0, Le/a/q2/p;->a:Z

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-boolean v3, v1, Le/a/l5/a/g0$b;->b:Z

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v4, v3, v6

    .line 11
    iget-object v3, p0, Le/a/q2/p;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v1, v5, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v3, v1, Le/a/l5/a/g0$b;->h:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v4, v3, v6

    .line 15
    iget-boolean v3, p0, Le/a/q2/p;->d:Z

    .line 16
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-boolean v3, v1, Le/a/l5/a/g0$b;->c:Z

    .line 18
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v4, v3, v6

    .line 19
    iget-object v3, p0, Le/a/q2/p;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v1, v5, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object v3, v1, Le/a/l5/a/g0$b;->d:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v4, v3, v6

    .line 23
    iget-boolean v3, p0, Le/a/q2/p;->f:Z

    .line 24
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 25
    iput-boolean v3, v1, Le/a/l5/a/g0$b;->e:Z

    .line 26
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v4, v3, v6

    .line 27
    iget-object v3, p0, Le/a/q2/p;->i:Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v1, v5, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput-object v3, v1, Le/a/l5/a/g0$b;->f:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v4, v3, v6

    .line 31
    iget-object v3, p0, Le/a/q2/p;->j:Ljava/lang/Integer;

    const/16 v5, 0x14

    const/16 v6, 0xa

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    const/16 v7, 0x1e

    if-eq v3, v7, :cond_2

    const/16 v7, 0x28

    if-eq v3, v7, :cond_1

    const/16 v7, 0x2d

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object v2, Lcom/truecaller/tracking/events/AppStandbyBucket;->RESTRICTED:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto :goto_0

    .line 33
    :cond_1
    sget-object v2, Lcom/truecaller/tracking/events/AppStandbyBucket;->RARE:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto :goto_0

    .line 34
    :cond_2
    sget-object v2, Lcom/truecaller/tracking/events/AppStandbyBucket;->FREQUENT:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto :goto_0

    .line 35
    :cond_3
    sget-object v2, Lcom/truecaller/tracking/events/AppStandbyBucket;->WORKING_SET:Lcom/truecaller/tracking/events/AppStandbyBucket;

    goto :goto_0

    .line 36
    :cond_4
    sget-object v2, Lcom/truecaller/tracking/events/AppStandbyBucket;->ACTIVE:Lcom/truecaller/tracking/events/AppStandbyBucket;

    .line 37
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v7, 0x8

    aget-object v3, v3, v7

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 38
    iput-object v2, v1, Le/a/l5/a/g0$b;->g:Lcom/truecaller/tracking/events/AppStandbyBucket;

    .line 39
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v7

    .line 40
    iget-object v2, p0, Le/a/q2/p;->k:Ljava/lang/String;

    .line 41
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput-object v2, v1, Le/a/l5/a/g0$b;->i:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 44
    iget-object v2, p0, Le/a/q2/p;->l:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v6, 0xd

    aget-object v3, v3, v6

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 46
    iput-object v2, v1, Le/a/l5/a/g0$b;->l:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 48
    iget-boolean v2, p0, Le/a/q2/p;->m:Z

    .line 49
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v6, 0xe

    aget-object v3, v3, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 50
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->m:Z

    .line 51
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 52
    iget-boolean v2, p0, Le/a/q2/p;->n:Z

    .line 53
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v6, 0xf

    aget-object v3, v3, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 54
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->n:Z

    .line 55
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 56
    iget-boolean v2, p0, Le/a/q2/p;->o:Z

    .line 57
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v6, 0x10

    aget-object v3, v3, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 58
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->o:Z

    .line 59
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 60
    iget-object v2, p0, Le/a/q2/p;->p:Ljava/lang/Boolean;

    .line 61
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v6, 0x11

    aget-object v3, v3, v6

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 62
    iput-object v2, v1, Le/a/l5/a/g0$b;->p:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 64
    iget-object v2, p0, Le/a/q2/p;->q:Ljava/lang/Boolean;

    .line 65
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v6, 0x12

    aget-object v3, v3, v6

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 66
    iput-object v2, v1, Le/a/l5/a/g0$b;->q:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 68
    iget-boolean v2, p0, Le/a/q2/p;->r:Z

    .line 69
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v6, 0x13

    aget-object v3, v3, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 70
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->r:Z

    .line 71
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v6

    .line 72
    iget-boolean v2, p0, Le/a/q2/p;->s:Z

    .line 73
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 74
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->s:Z

    .line 75
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 76
    iget-boolean v2, p0, Le/a/q2/p;->t:Z

    .line 77
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x16

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 78
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->u:Z

    .line 79
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 80
    iget-boolean v2, p0, Le/a/q2/p;->u:Z

    .line 81
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x17

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 82
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->v:Z

    .line 83
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 84
    iget-boolean v2, p0, Le/a/q2/p;->v:Z

    .line 85
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x18

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 86
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->w:Z

    .line 87
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 88
    iget-boolean v2, p0, Le/a/q2/p;->w:Z

    .line 89
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x1c

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 90
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->A:Z

    .line 91
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 92
    iget-boolean v2, p0, Le/a/q2/p;->x:Z

    .line 93
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x19

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 94
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->x:Z

    .line 95
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 96
    iget-boolean v2, p0, Le/a/q2/p;->y:Z

    .line 97
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0xb

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 98
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->j:Z

    .line 99
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 100
    iget-boolean v2, p0, Le/a/q2/p;->z:Z

    .line 101
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0xc

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 102
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->k:Z

    .line 103
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 104
    iget-boolean v2, p0, Le/a/q2/p;->A:Z

    .line 105
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x1a

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 106
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->y:Z

    .line 107
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 108
    iget-boolean v2, p0, Le/a/q2/p;->B:Z

    .line 109
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x1b

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 110
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->z:Z

    .line 111
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 112
    iget-boolean v2, p0, Le/a/q2/p;->C:Z

    .line 113
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x15

    aget-object v3, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 114
    iput-boolean v2, v1, Le/a/l5/a/g0$b;->t:Z

    .line 115
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 116
    invoke-virtual {v1}, Le/a/l5/a/g0$b;->a()Le/a/l5/a/g0;

    move-result-object v1

    const-string v2, "AppConfigStateAndroid.ne\u2026Enabled)\n        .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/q2/p;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/q2/p;

    iget-boolean v0, p0, Le/a/q2/p;->a:Z

    iget-boolean v1, p1, Le/a/q2/p;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->b:Z

    iget-boolean v1, p1, Le/a/q2/p;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/q2/p;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/p;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->d:Z

    iget-boolean v1, p1, Le/a/q2/p;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/q2/p;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/p;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->f:Z

    iget-boolean v1, p1, Le/a/q2/p;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/q2/p;->g:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/p;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/p;->h:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/p;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/p;->i:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/p;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/p;->j:Ljava/lang/Integer;

    iget-object v1, p1, Le/a/q2/p;->j:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/p;->k:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/p;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/p;->l:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/p;->l:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->m:Z

    iget-boolean v1, p1, Le/a/q2/p;->m:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->n:Z

    iget-boolean v1, p1, Le/a/q2/p;->n:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->o:Z

    iget-boolean v1, p1, Le/a/q2/p;->o:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/q2/p;->p:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/p;->p:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/p;->q:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/p;->q:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->r:Z

    iget-boolean v1, p1, Le/a/q2/p;->r:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->s:Z

    iget-boolean v1, p1, Le/a/q2/p;->s:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->t:Z

    iget-boolean v1, p1, Le/a/q2/p;->t:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->u:Z

    iget-boolean v1, p1, Le/a/q2/p;->u:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->v:Z

    iget-boolean v1, p1, Le/a/q2/p;->v:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->w:Z

    iget-boolean v1, p1, Le/a/q2/p;->w:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->x:Z

    iget-boolean v1, p1, Le/a/q2/p;->x:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->y:Z

    iget-boolean v1, p1, Le/a/q2/p;->y:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->z:Z

    iget-boolean v1, p1, Le/a/q2/p;->z:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->A:Z

    iget-boolean v1, p1, Le/a/q2/p;->A:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->B:Z

    iget-boolean v1, p1, Le/a/q2/p;->B:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/q2/p;->C:Z

    iget-boolean v1, p1, Le/a/q2/p;->C:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/q2/p;->D:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/p;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/p;->E:Ljava/lang/String;

    iget-object p1, p1, Le/a/q2/p;->E:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Le/a/q2/p;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->b:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->d:Z

    if-eqz v2, :cond_3

    move v2, v1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->f:Z

    if-eqz v2, :cond_5

    move v2, v1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->h:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->i:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_9
    move v2, v3

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->k:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_a
    move v2, v3

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->l:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_b
    move v2, v3

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->m:Z

    if-eqz v2, :cond_c

    move v2, v1

    :cond_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->n:Z

    if-eqz v2, :cond_d

    move v2, v1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->o:Z

    if-eqz v2, :cond_e

    move v2, v1

    :cond_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->p:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/p;->q:Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_10
    move v2, v3

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->r:Z

    if-eqz v2, :cond_11

    move v2, v1

    :cond_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->s:Z

    if-eqz v2, :cond_12

    move v2, v1

    :cond_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->t:Z

    if-eqz v2, :cond_13

    move v2, v1

    :cond_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->u:Z

    if-eqz v2, :cond_14

    move v2, v1

    :cond_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->v:Z

    if-eqz v2, :cond_15

    move v2, v1

    :cond_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->w:Z

    if-eqz v2, :cond_16

    move v2, v1

    :cond_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->x:Z

    if-eqz v2, :cond_17

    move v2, v1

    :cond_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->y:Z

    if-eqz v2, :cond_18

    move v2, v1

    :cond_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->z:Z

    if-eqz v2, :cond_19

    move v2, v1

    :cond_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->A:Z

    if-eqz v2, :cond_1a

    move v2, v1

    :cond_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->B:Z

    if-eqz v2, :cond_1b

    move v2, v1

    :cond_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/p;->C:Z

    if-eqz v2, :cond_1c

    goto :goto_a

    :cond_1c
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/q2/p;->D:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_1d
    move v1, v3

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/q2/p;->E:Ljava/lang/String;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1e
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AppStateEvent(multiSimDevice="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/q2/p;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", domainFrontingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", carrierMenuName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", googleServicesAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gmsVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInRegion1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", profileCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidSecurityPatchVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", standbyBucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", themeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enhancedSearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filteringTopSpammersEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filteringHiddenNumbersEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clipboardSearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enhancedNotificationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->p:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", missedCallNotificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->q:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", missedCallReminderEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callerIdForPhonebookEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", afterCallEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", afterCallForPhonebookEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", slimGroupCallsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whatsAppInCallLogEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mostCalledContactsDisplayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backupEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accountBackedUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flashEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", smsDeliveryReportRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callAlertEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/p;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inCallUISettingValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inCallUIOptedInByDefaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/p;->E:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
