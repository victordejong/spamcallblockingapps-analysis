.class public final Le/a/q2/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/Boolean;

.field public final d:Ljava/lang/Boolean;

.field public final e:Ljava/lang/Boolean;

.field public final f:Ljava/lang/Boolean;

.field public final g:Ljava/lang/Boolean;

.field public final h:Ljava/lang/Boolean;

.field public final i:Ljava/lang/Boolean;

.field public final j:Z

.field public final k:Ljava/lang/Boolean;

.field public final l:Ljava/lang/Boolean;

.field public final m:Ljava/lang/Boolean;

.field public final n:Ljava/lang/Boolean;

.field public final o:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/r0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Le/a/q2/r0;->b:Z

    iput-object p3, p0, Le/a/q2/r0;->c:Ljava/lang/Boolean;

    iput-object p4, p0, Le/a/q2/r0;->d:Ljava/lang/Boolean;

    iput-object p5, p0, Le/a/q2/r0;->e:Ljava/lang/Boolean;

    iput-object p6, p0, Le/a/q2/r0;->f:Ljava/lang/Boolean;

    iput-object p7, p0, Le/a/q2/r0;->g:Ljava/lang/Boolean;

    iput-object p8, p0, Le/a/q2/r0;->h:Ljava/lang/Boolean;

    iput-object p9, p0, Le/a/q2/r0;->i:Ljava/lang/Boolean;

    iput-boolean p10, p0, Le/a/q2/r0;->j:Z

    iput-object p11, p0, Le/a/q2/r0;->k:Ljava/lang/Boolean;

    iput-object p12, p0, Le/a/q2/r0;->l:Ljava/lang/Boolean;

    iput-object p13, p0, Le/a/q2/r0;->m:Ljava/lang/Boolean;

    iput-object p14, p0, Le/a/q2/r0;->n:Ljava/lang/Boolean;

    iput-object p15, p0, Le/a/q2/r0;->o:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 6

    .line 1
    sget-object v0, Le/a/l5/a/r1;->r:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/r1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/r1$b;-><init>(Le/a/l5/a/r1$a;)V

    const-string v1, "eventBuilder"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/q2/r0;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object v1, v0, Le/a/l5/a/r1$b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v3

    .line 6
    iget-boolean v1, p0, Le/a/q2/r0;->b:Z

    .line 7
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 8
    iput-boolean v1, v0, Le/a/l5/a/r1$b;->b:Z

    .line 9
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 10
    iget-object v1, p0, Le/a/q2/r0;->c:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 12
    iput-object v1, v0, Le/a/l5/a/r1$b;->d:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 14
    iget-object v1, p0, Le/a/q2/r0;->d:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput-object v1, v0, Le/a/l5/a/r1$b;->n:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 18
    iget-object v1, p0, Le/a/q2/r0;->e:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-object v1, v0, Le/a/l5/a/r1$b;->e:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 22
    iget-object v1, p0, Le/a/q2/r0;->f:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 24
    iput-object v1, v0, Le/a/l5/a/r1$b;->f:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 26
    iget-object v1, p0, Le/a/q2/r0;->g:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 28
    iput-object v1, v0, Le/a/l5/a/r1$b;->g:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 30
    iget-object v1, p0, Le/a/q2/r0;->h:Ljava/lang/Boolean;

    .line 31
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 32
    iput-object v1, v0, Le/a/l5/a/r1$b;->h:Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 34
    iget-object v1, p0, Le/a/q2/r0;->i:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 36
    iput-object v1, v0, Le/a/l5/a/r1$b;->i:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 38
    iget-boolean v1, p0, Le/a/q2/r0;->j:Z

    .line 39
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 40
    iput-boolean v1, v0, Le/a/l5/a/r1$b;->c:Z

    .line 41
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 42
    iget-object v1, p0, Le/a/q2/r0;->k:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 44
    iput-object v1, v0, Le/a/l5/a/r1$b;->j:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 46
    iget-object v1, p0, Le/a/q2/r0;->l:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 48
    iput-object v1, v0, Le/a/l5/a/r1$b;->k:Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 50
    iget-object v1, p0, Le/a/q2/r0;->m:Ljava/lang/Boolean;

    .line 51
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 52
    iput-object v1, v0, Le/a/l5/a/r1$b;->l:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 54
    iget-object v1, p0, Le/a/q2/r0;->n:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 56
    iput-object v1, v0, Le/a/l5/a/r1$b;->m:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 58
    iget-object v1, p0, Le/a/q2/r0;->o:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 60
    iput-object v1, v0, Le/a/l5/a/r1$b;->o:Ljava/lang/Boolean;

    .line 61
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v2, v1, v4

    .line 62
    new-instance v1, Le/a/q2/x$d;

    invoke-virtual {v0}, Le/a/l5/a/r1$b;->a()Le/a/l5/a/r1;

    move-result-object v0

    invoke-direct {v1, v0}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/q2/r0;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/q2/r0;

    iget-object v0, p0, Le/a/q2/r0;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/q2/r0;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/q2/r0;->b:Z

    iget-boolean v1, p1, Le/a/q2/r0;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->c:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->c:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->d:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->d:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->e:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->e:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->f:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->f:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->g:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->g:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->h:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->h:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->i:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->i:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/q2/r0;->j:Z

    iget-boolean v1, p1, Le/a/q2/r0;->j:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->k:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->k:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->l:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->l:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->m:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->m:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->n:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/q2/r0;->n:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q2/r0;->o:Ljava/lang/Boolean;

    iget-object p1, p1, Le/a/q2/r0;->o:Ljava/lang/Boolean;

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

    iget-object v0, p0, Le/a/q2/r0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/r0;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->f:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/q2/r0;->j:Z

    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    move v3, v2

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_a
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->l:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_b
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_c
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->n:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_d
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/q2/r0;->o:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PermissionStateEvent(dialerAppPackage="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/q2/r0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationsShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/r0;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", microphone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationsAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/q2/r0;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", batteryOptimization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingsWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callerIdApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->m:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/r0;->o:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
