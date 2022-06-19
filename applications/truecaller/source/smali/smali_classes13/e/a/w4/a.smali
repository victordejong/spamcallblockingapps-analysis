.class public abstract Le/a/w4/a;
.super Le/a/j4/a/a;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lcom/truecaller/data/entity/Contact;

.field public final f:Le/a/h0/j;

.field public final g:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/UUID;

.field public final j:I

.field public k:Le/a/f4/g/i;

.field public l:Le/a/p5/u;

.field public final m:Le/a/g5/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/j4/a/d;Le/a/h0/j;Le/a/r2/f;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/util/UUID;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/j4/a/d;",
            "Le/a/h0/j;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p2, v0, v0, v1}, Le/a/j4/a/a;-><init>(Le/a/j4/a/d;ZZ[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/a;->d:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/a/w4/a;->f:Le/a/h0/j;

    .line 4
    iput-object p4, p0, Le/a/w4/a;->g:Le/a/r2/f;

    .line 5
    iput-object p5, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    .line 6
    iput-object p6, p0, Le/a/w4/a;->h:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Le/a/w4/a;->i:Ljava/util/UUID;

    .line 8
    iput p8, p0, Le/a/w4/a;->j:I

    .line 9
    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object p2

    iput-object p2, p0, Le/a/w4/a;->l:Le/a/p5/u;

    .line 11
    invoke-interface {p1}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/a;->m:Le/a/g5/p;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Le/a/l5/a/y1;->a()Le/a/l5/a/y1$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/w4/a;->i:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    iget-object v1, p0, Le/a/w4/a;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->i(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    iget v1, p0, Le/a/w4/a;->j:I

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->j(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Le/a/l5/a/y1$b;->g(Z)Le/a/l5/a/y1$b;

    .line 7
    invoke-virtual {v0, v2}, Le/a/l5/a/y1$b;->h(Z)Le/a/l5/a/y1$b;

    .line 8
    iget-object v3, p0, Le/a/w4/a;->f:Le/a/h0/j;

    iget-object v4, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Le/a/h0/j;->e(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v3

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_0

    move-object v5, v1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v5, v3, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

    .line 11
    :goto_0
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v6

    iget-object v7, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-static {v6, v7, v5}, Le/a/m0/a1$k;->W0(Le/a/l5/a/m3$b;Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    iget-object v5, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    .line 12
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v5

    const/4 v7, 0x1

    xor-int/2addr v5, v7

    invoke-virtual {v6, v5}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    iget-object v5, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    .line 13
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v6, v5}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    iget-object v5, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    .line 14
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    move v2, v7

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    iget-object v2, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    .line 15
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    iget-object v2, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    .line 16
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 17
    invoke-virtual {v3}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Le/a/l5/a/m3$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 18
    invoke-virtual {v3}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Le/a/l5/a/m3$b;->g(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 19
    invoke-virtual {v3}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Le/a/l5/a/m3$b;->e(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 20
    invoke-virtual {v6}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v8, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->d0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/Tag;

    .line 25
    invoke-virtual {v9}, Lcom/truecaller/data/entity/RowEntity;->getSource()I

    move-result v10

    if-ne v10, v7, :cond_3

    .line 26
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_4
    iget-object v8, p0, Le/a/w4/a;->m:Le/a/g5/p;

    iget-object v9, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v8, v9}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 29
    iget-wide v8, v8, Le/a/b0/p/c;->a:J

    .line 30
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    invoke-static {}, Le/a/l5/a/i4;->a()Le/a/l5/a/i4$b;

    move-result-object v8

    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v3, v1

    :cond_6
    invoke-virtual {v8, v3}, Le/a/l5/a/i4$b;->c(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 33
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v5, v1

    :cond_7
    invoke-virtual {v8, v5}, Le/a/l5/a/i4$b;->b(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 34
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v6, v1

    :cond_8
    invoke-virtual {v8, v6}, Le/a/l5/a/i4$b;->d(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 35
    invoke-virtual {v8}, Le/a/l5/a/i4$b;->a()Le/a/l5/a/i4;

    move-result-object v3

    .line 36
    iget-object v5, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v5

    .line 37
    iget-object v6, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v8, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/Number;

    .line 39
    iget v10, v9, Lcom/truecaller/data/entity/Number;->a:I

    and-int/2addr v10, v7

    if-nez v10, :cond_9

    goto :goto_3

    .line 40
    :cond_9
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->f()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->h()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 42
    :cond_a
    invoke-static {}, Le/a/l5/a/e4;->a()Le/a/l5/a/e4$b;

    move-result-object v5

    .line 43
    invoke-virtual {v5, v6}, Le/a/l5/a/e4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 44
    invoke-virtual {v5, v3}, Le/a/l5/a/e4$b;->e(Le/a/l5/a/i4;)Le/a/l5/a/e4$b;

    .line 45
    invoke-virtual {v5, v2}, Le/a/l5/a/e4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/e4$b;

    .line 46
    invoke-virtual {v5, p1}, Le/a/l5/a/e4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 47
    invoke-virtual {v5, v8}, Le/a/l5/a/e4$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 48
    invoke-virtual {v5}, Le/a/l5/a/e4$b;->a()Le/a/l5/a/e4;

    move-result-object p1

    .line 49
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0, v4}, Le/a/l5/a/y1$b;->e(Ljava/util/List;)Le/a/l5/a/y1$b;

    .line 51
    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->b(Ljava/util/List;)Le/a/l5/a/y1$b;

    .line 52
    :try_start_0
    iget-object p1, p0, Le/a/w4/a;->g:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {v0}, Le/a/l5/a/y1$b;->a()Le/a/l5/a/y1;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 53
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public final c(Lcom/truecaller/data/entity/Contact;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p0

    check-cast v0, Le/a/w4/i;

    .line 3
    iget-object v0, v0, Le/a/w4/i;->o:Le/a/w4/d;

    invoke-interface {v0, p1}, Le/a/w4/d;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Le/a/w4/a;->l:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    const-string v1, "Cannot refresh "

    if-nez v0, :cond_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", internet not OK"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "noConnection"

    .line 6
    invoke-virtual {p0, p1}, Le/a/w4/a;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is stale, attempt to refresh it"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/Number;

    .line 9
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v3

    :cond_2
    if-nez v0, :cond_3

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", no searchable number"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Le/a/w4/a;->k:Le/a/f4/g/i;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Le/a/f4/g/i$b;

    invoke-direct {v2, p2, v1, v0}, Le/a/f4/g/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Le/a/f4/g/i;->d:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string p1, "validCacheResult"

    .line 16
    invoke-virtual {p0, p1}, Le/a/w4/a;->b(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/w4/a;->k:Le/a/f4/g/i;

    .line 2
    invoke-virtual {p1}, Le/a/f4/g/i;->b()Le/a/f4/g/i;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Le/a/f4/g/i;->e:Z

    .line 4
    iput-boolean v0, p1, Le/a/f4/g/i;->f:Z

    .line 5
    invoke-virtual {p1}, Le/a/f4/g/i;->a()Le/a/f4/g/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Le/a/f4/g/t;->c:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Searching for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    :try_start_0
    new-instance p1, Le/a/f4/g/i;

    iget-object v0, p0, Le/a/w4/a;->d:Landroid/content/Context;

    iget-object v1, p0, Le/a/w4/a;->i:Ljava/util/UUID;

    iget-object v2, p0, Le/a/w4/a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Le/a/f4/g/i;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    iget v0, p0, Le/a/w4/a;->j:I

    .line 2
    iput v0, p1, Le/a/f4/g/i;->g:I

    .line 3
    iput-object p1, p0, Le/a/w4/a;->k:Le/a/f4/g/i;

    .line 4
    sget-boolean p1, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    .line 5
    new-instance v0, Le/a/k3/j/b;

    invoke-direct {v0, p1}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Le/a/k3/j/j;

    invoke-direct {v1, p1}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v2, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 10
    iget-object v5, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-static {v5}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Le/a/k3/j/j;->f(J)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v2, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/Contact;

    .line 12
    invoke-virtual {p0, v5, v4}, Le/a/w4/a;->c(Lcom/truecaller/data/entity/Contact;Ljava/util/List;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p0, v2, v4}, Le/a/w4/a;->c(Lcom/truecaller/data/entity/Contact;Ljava/util/List;)V

    .line 14
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    invoke-virtual {p0, p1, v4}, Le/a/w4/a;->d(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 17
    invoke-virtual {v1, p1}, Le/a/k3/j/j;->d(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    if-eqz v3, :cond_2

    .line 19
    iget-object p1, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, p1}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1

    .line 20
    :cond_2
    iget-object p1, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    invoke-virtual {v1, p1}, Le/a/k3/j/j;->g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error storing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No contacts were refreshed for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/a/w4/a;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
