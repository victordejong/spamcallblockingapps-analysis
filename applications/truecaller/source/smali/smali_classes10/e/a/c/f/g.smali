.class public final Le/a/c/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/g;->a:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Le/a/c/f/k/f;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "train"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/f/k/f$f;->d:Le/a/c/f/k/f$f;

    goto :goto_1

    :sswitch_1
    const-string v0, "alert"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/c/f/g;->a(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Le/a/c/f/k/f;

    move-result-object p1

    goto :goto_1

    :sswitch_2
    const-string p1, "bus"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/f/k/f$b;->d:Le/a/c/f/k/f$b;

    goto :goto_1

    :sswitch_3
    const-string p1, "flight"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/f/k/f$d;->d:Le/a/c/f/k/f$d;

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sget-object p1, Le/a/c/f/k/f$a;->d:Le/a/c/f/k/f$a;

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_3
        0x17e80 -> :sswitch_2
        0x589895c -> :sswitch_1
        0x697f208 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lw3/b/a/e0/a;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/b/a/e0/a;->q()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    rem-int/lit8 v2, v2, 0xa

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const-string v2, "th"

    goto :goto_1

    :cond_1
    const-string v2, "rd"

    goto :goto_1

    :cond_2
    const-string v2, "nd"

    goto :goto_1

    :cond_3
    const-string v2, "st"

    .line 5
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/b/a/b;->A()Lw3/b/a/b$a;

    move-result-object v2

    const-string v4, "dateTime.monthOfYear()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lw3/b/a/h0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v1, p2, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "12:00 AM"

    .line 9
    invoke-static {p1, v0, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v3

    xor-int/lit8 v1, v0, 0x1

    .line 10
    iput-boolean v1, p2, Le/a/c/r/b$f$a;->y:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 11
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p2, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final c(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "train"

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/truecaller/insights/R$drawable;->ic_tcx_travel_train:I

    .line 3
    iput p1, p2, Le/a/c/r/b$f$a;->t:I

    goto :goto_0

    :sswitch_1
    const-string v0, "alert"

    .line 4
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    sget p1, Lcom/truecaller/insights/R$drawable;->ic_tcx_travel_alert:I

    .line 7
    iput p1, p2, Le/a/c/r/b$f$a;->t:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Le/a/c/f/g;->c(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string p1, "bus"

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/truecaller/insights/R$drawable;->ic_tcx_travel_bus:I

    .line 10
    iput p1, p2, Le/a/c/r/b$f$a;->t:I

    goto :goto_0

    :sswitch_3
    const-string p1, "flight"

    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/truecaller/insights/R$drawable;->ic_tcx_travel_flight:I

    .line 12
    iput p1, p2, Le/a/c/r/b$f$a;->t:I

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_3
        0x17e80 -> :sswitch_2
        0x589895c -> :sswitch_1
        0x697f208 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Locale.ROOT"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "train"

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->m()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    move-object v1, p1

    :cond_1
    if-eqz v1, :cond_a

    const-string p1, "Train No"

    .line 5
    iput-object p1, p2, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    .line 6
    iput-object v1, p2, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "alert"

    .line 7
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x5185d186

    if-eq v0, v2, :cond_6

    const v2, 0x5b0b983

    if-eq v0, v2, :cond_4

    const v2, 0x1e1abdca

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "reschedule"

    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "Rescheduled"

    .line 10
    invoke-virtual {p2, p3}, Le/a/c/r/b$f$a;->a(Ljava/lang/String;)Le/a/c/r/b$f$a;

    .line 11
    sget p3, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    .line 12
    iput p3, p2, Le/a/c/r/b$f$a;->v:I

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v1, p3

    :cond_3
    if-eqz v1, :cond_a

    .line 15
    invoke-virtual {p0, p1, p2, v1}, Le/a/c/f/g;->d(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "delay"

    .line 16
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "Delayed"

    .line 17
    invoke-virtual {p2, p3}, Le/a/c/r/b$f$a;->a(Ljava/lang/String;)Le/a/c/r/b$f$a;

    .line 18
    sget p3, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    .line 19
    iput p3, p2, Le/a/c/r/b$f$a;->v:I

    .line 20
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v1, p3

    :cond_5
    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {p0, p1, p2, v1}, Le/a/c/f/g;->d(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "cancel"

    .line 23
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "Cancelled"

    .line 24
    invoke-virtual {p2, p3}, Le/a/c/r/b$f$a;->a(Ljava/lang/String;)Le/a/c/r/b$f$a;

    .line 25
    sget p3, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundRed:I

    .line 26
    iput p3, p2, Le/a/c/r/b$f$a;->v:I

    .line 27
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v1, p3

    :cond_7
    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {p0, p1, p2, v1}, Le/a/c/f/g;->d(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "bus"

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 31
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->l()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_0

    :cond_8
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_a

    const-string p3, "Bus"

    .line 33
    iput-object p3, p2, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    const/4 p3, 0x1

    .line 34
    invoke-static {p1, v1, p3}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 35
    iput-object p1, p2, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    const-string v0, "flight"

    .line 36
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 37
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->l()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    move-object v1, p1

    :cond_9
    if-eqz v1, :cond_a

    const-string p1, "Flight"

    .line 39
    iput-object p1, p2, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    .line 40
    iput-object v1, p2, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    :cond_a
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_3
        0x17e80 -> :sswitch_2
        0x589895c -> :sswitch_1
        0x697f208 -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(Lcom/truecaller/insights/models/InsightsDomain$f;Le/a/c/r/b$f$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object p1

    .line 2
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    const-string v1, "LocalDate.now()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p1}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object p1

    const-string v0, "Days.daysBetween(currentDate, date)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget p1, p1, Lw3/b/a/e0/i;->a:I

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    const-string p1, "Travelled"

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Today"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "Tomorrow"

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p2, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    :goto_0
    const-string v0, "value"

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p2, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    :cond_3
    return-void
.end method
