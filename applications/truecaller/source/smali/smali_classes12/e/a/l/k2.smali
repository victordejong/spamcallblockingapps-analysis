.class public final Le/a/l/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/n0;


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

.field public final b:Le/a/l/s2/a;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/l/s2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/l/s2/a;",
            ")V"
        }
    .end annotation

    const-string v0, "eventTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebasePersonalisationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/k2;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/l/k2;->b:Le/a/l/s2/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/m0;)V
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/k2;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 2
    sget-object v1, Le/a/l5/a/i2;->f:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/i2$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/i2$b;-><init>(Le/a/l5/a/i2$a;)V

    .line 3
    iget-object v3, p1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 6
    iput-object v3, v1, Le/a/l5/a/i2$b;->a:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    .line 8
    iget-object v3, p1, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    if-eqz v3, :cond_0

    .line 9
    iget-object v2, v3, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;->b:Ljava/lang/String;

    .line 10
    :cond_0
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 11
    iput-object v2, v1, Le/a/l5/a/i2$b;->b:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v4, v2, v5

    .line 13
    iget-boolean p1, p1, Le/a/l/m0;->e:Z

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 15
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput-object p1, v1, Le/a/l5/a/i2$b;->c:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v4, p1, v3

    .line 18
    invoke-virtual {v1}, Le/a/l5/a/i2$b;->a()Le/a/l5/a/i2;

    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public b(Le/a/l/m0;)V
    .locals 10

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    const/4 v1, 0x2

    const-string v2, ""

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-object v6, Le/a/l5/a/q;->e:Lorg/apache/avro/Schema;

    new-instance v6, Le/a/l5/a/q$b;

    invoke-direct {v6, v4}, Le/a/l5/a/q$b;-><init>(Le/a/l5/a/q$a;)V

    const-string v7, "builder"

    .line 3
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 6
    iput-object v0, v6, Le/a/l5/a/q$b;->b:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v5, v0, v3

    .line 8
    iget-object v0, p1, Le/a/l/m0;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 9
    :goto_0
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v6, v7, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 10
    iput-object v0, v6, Le/a/l5/a/q$b;->a:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v6}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v5, v0, v1

    .line 12
    iget-object v0, p0, Le/a/l/k2;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-virtual {v6}, Le/a/l5/a/q$b;->a()Le/a/l5/a/q;

    move-result-object v6

    invoke-interface {v0, v6}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 13
    :cond_1
    iget-object v0, p1, Le/a/l/m0;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 14
    iget-object v6, p0, Le/a/l/k2;->a:Le/a/r2/f;

    invoke-interface {v6}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/q2/a0;

    .line 15
    sget-object v7, Le/a/l5/a/h2;->h:Lorg/apache/avro/Schema;

    new-instance v7, Le/a/l5/a/h2$b;

    invoke-direct {v7, v4}, Le/a/l5/a/h2$b;-><init>(Le/a/l5/a/h2$a;)V

    .line 16
    iget-object v8, p1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 17
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v7, v9, v8}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 19
    iput-object v8, v7, Le/a/l5/a/h2$b;->a:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v8

    aput-boolean v5, v8, v1

    .line 21
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v8, 0x4

    aget-object v1, v1, v8

    invoke-virtual {v7, v1, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 22
    iput-object v0, v7, Le/a/l5/a/h2$b;->c:Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v5, v0, v8

    .line 24
    iget-object v0, p1, Le/a/l/m0;->d:Le/a/l/n2/f;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, v0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 27
    :cond_3
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v7, v0, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 28
    iput-object v2, v7, Le/a/l5/a/h2$b;->b:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v5, v0, v3

    .line 30
    iget-object v0, p1, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    if-eqz v0, :cond_4

    .line 31
    iget-object v4, v0, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;->b:Ljava/lang/String;

    .line 32
    :cond_4
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v7, v0, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 33
    iput-object v4, v7, Le/a/l5/a/h2$b;->d:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v5, v0, v1

    .line 35
    iget-boolean p1, p1, Le/a/l/m0;->e:Z

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 37
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v7, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 38
    iput-object p1, v7, Le/a/l5/a/h2$b;->e:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v5, p1, v1

    .line 40
    invoke-virtual {v7}, Le/a/l5/a/h2$b;->a()Le/a/l5/a/h2;

    move-result-object p1

    .line 41
    invoke-interface {v6, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_5
    return-void
.end method

.method public c(Le/a/l/n2/f;)V
    .locals 1

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Le/a/l/m0;)V
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/l/m0;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2
    sget-object v1, Le/a/l5/a/j2;->k:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/j2$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/j2$b;-><init>(Le/a/l5/a/j2$a;)V

    .line 3
    iget-object v3, p1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 6
    iput-object v3, v1, Le/a/l5/a/j2$b;->a:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v5, 0x4

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v0, v1, Le/a/l5/a/j2$b;->c:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v5

    .line 11
    iget-object v0, p1, Le/a/l/m0;->d:Le/a/l/n2/f;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, v0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 14
    :goto_1
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object v0, v1, Le/a/l5/a/j2$b;->b:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v5

    .line 17
    iget-object v0, p1, Le/a/l/m0;->c:Ljava/util/List;

    if-nez v0, :cond_2

    const-string v0, "purchase"

    goto :goto_2

    :cond_2
    const-string v0, "upgrade"

    .line 18
    :goto_2
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v5, 0x6

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 19
    iput-object v0, v1, Le/a/l5/a/j2$b;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v5

    .line 21
    iget-object v0, p1, Le/a/l/m0;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 22
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v0, v2

    .line 23
    :goto_3
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v5, 0x5

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 24
    iput-object v0, v1, Le/a/l5/a/j2$b;->d:Ljava/lang/CharSequence;

    .line 25
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v5

    .line 26
    iget-object v0, p1, Le/a/l/m0;->g:Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    if-eqz v0, :cond_4

    .line 27
    iget-object v0, v0, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;->b:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v0, v2

    .line 28
    :goto_4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v5, 0x7

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput-object v0, v1, Le/a/l5/a/j2$b;->f:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v5

    .line 31
    iget-object v0, p0, Le/a/l/k2;->b:Le/a/l/s2/a;

    invoke-interface {v0}, Le/a/l/s2/a;->b()Lcom/truecaller/premium/personalisation/PersonalisationPromo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 32
    :cond_5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v3, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v1, v0, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 33
    iput-object v2, v1, Le/a/l5/a/j2$b;->g:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v3

    .line 35
    iget-boolean p1, p1, Le/a/l/m0;->e:Z

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 37
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v2, 0x9

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 38
    iput-object p1, v1, Le/a/l5/a/j2$b;->h:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v4, p1, v2

    .line 40
    invoke-virtual {v1}, Le/a/l5/a/j2$b;->a()Le/a/l5/a/j2;

    move-result-object p1

    .line 41
    iget-object v0, p0, Le/a/l/k2;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_6
    return-void
.end method
