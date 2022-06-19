.class public final Le/a/a/y0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/y0/j;


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


# direct methods
.method public constructor <init>(Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/k;->a:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/k<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noSearchReason"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    .line 6
    iget v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 8
    iget v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 9
    iget v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->g(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 10
    iget-boolean v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->e(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 11
    iget v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    const-string v2, "ContactInfo.newBuilder()\u2026URCE_PUSH_CALLER_ID != 0)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 13
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Le/a/m0/a1$k;->W0(Le/a/l5/a/m3$b;Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 14
    invoke-virtual {v1}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object p1

    .line 15
    invoke-static {}, Le/a/l5/a/i4;->a()Le/a/l5/a/i4$b;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v2}, Le/a/l5/a/i4$b;->c(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 17
    invoke-virtual {v1, v2}, Le/a/l5/a/i4$b;->b(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 18
    invoke-virtual {v1, v2}, Le/a/l5/a/i4$b;->d(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 19
    invoke-virtual {v1}, Le/a/l5/a/i4$b;->a()Le/a/l5/a/i4;

    move-result-object v1

    .line 20
    iget v5, v0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/2addr v4, v5

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_5

    .line 21
    :cond_5
    iget-object v4, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v5, "participant.normalizedAddress"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    :goto_5
    invoke-static {}, Le/a/l5/a/e4;->a()Le/a/l5/a/e4$b;

    move-result-object v5

    .line 23
    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v5, v0}, Le/a/l5/a/e4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 24
    invoke-virtual {v5, v1}, Le/a/l5/a/e4$b;->e(Le/a/l5/a/i4;)Le/a/l5/a/e4$b;

    .line 25
    invoke-virtual {v5, p1}, Le/a/l5/a/e4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/e4$b;

    .line 26
    invoke-virtual {v5, p2}, Le/a/l5/a/e4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 27
    invoke-virtual {v5, v4}, Le/a/l5/a/e4$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 28
    invoke-virtual {v5}, Le/a/l5/a/e4$b;->a()Le/a/l5/a/e4;

    move-result-object p1

    .line 29
    invoke-static {}, Le/a/l5/a/y1;->a()Le/a/l5/a/y1$b;

    move-result-object p2

    .line 30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/a/l5/a/y1$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    .line 31
    invoke-virtual {p2, p3}, Le/a/l5/a/y1$b;->i(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    const/16 p3, 0x14

    .line 32
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Le/a/l5/a/y1$b;->j(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    .line 33
    invoke-virtual {p2, v2}, Le/a/l5/a/y1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    .line 34
    invoke-virtual {p2, v3}, Le/a/l5/a/y1$b;->g(Z)Le/a/l5/a/y1$b;

    .line 35
    invoke-virtual {p2, v3}, Le/a/l5/a/y1$b;->h(Z)Le/a/l5/a/y1$b;

    .line 36
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/l5/a/y1$b;->e(Ljava/util/List;)Le/a/l5/a/y1$b;

    .line 37
    invoke-virtual {p2, p4}, Le/a/l5/a/y1$b;->b(Ljava/util/List;)Le/a/l5/a/y1$b;

    .line 38
    :try_start_0
    iget-object p1, p0, Le/a/a/y0/k;->a:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {p2}, Le/a/l5/a/y1$b;->a()Le/a/l5/a/y1;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
