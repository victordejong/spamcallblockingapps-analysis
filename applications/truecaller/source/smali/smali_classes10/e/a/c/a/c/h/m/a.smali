.class public final Le/a/c/a/c/h/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lw3/b/a/b;)Ljava/lang/String;
    .locals 3

    const-string v0, "msgDateTime"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lw3/b/a/e0/a;->u()I

    move-result v1

    const-string v2, "currentDate"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/a;->u()I

    move-result v0

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->MMMM:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DateFormat.MMMM.formatter().print(msgDateTime)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->MMMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DateFormat.MMMM_yyyy.for\u2026tter().print(msgDateTime)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static final b(Le/a/c/q/j$a;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/j$a;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 2
    iget-object v1, v0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    const-string v2, "PrepaidExpiry"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Le/a/c/q/j$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, v0, Le/a/c/r/b$b;->b:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    .line 6
    iget-object p0, v0, Le/a/c/r/b$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "Expiring"

    .line 7
    :goto_0
    sget v0, Lcom/truecaller/insights/ui/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    new-instance v1, Ls1/k;

    invoke-direct {v1, p0, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, v0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 10
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/truecaller/insights/ui/R$attr;->tcx_alertBackgroundGreen:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 11
    new-instance v1, Ls1/k;

    const-string v0, "Recharged"

    invoke-direct {v1, v0, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Le/a/c/q/j$a;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 13
    new-instance v1, Ls1/k;

    const-string v0, ""

    invoke-direct {v1, v0, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    sget p0, Lcom/truecaller/insights/ui/R$attr;->tcx_alertBackgroundGreen:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 15
    new-instance v1, Ls1/k;

    const-string v0, "Paid"

    invoke-direct {v1, v0, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v1
.end method

.method public static final c(Le/a/c/q/j$b;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/j$b;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/k;

    .line 2
    iget-object v1, p0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 3
    iget-object v1, v1, Le/a/c/r/b$f;->q:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 6
    iget-object v1, v1, Le/a/c/r/b$f;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 7
    :goto_1
    iget-object p0, p0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 8
    iget-object p0, p0, Le/a/c/r/b$f;->w:Ljava/lang/Integer;

    .line 9
    invoke-direct {v0, v1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final d(Le/a/c/q/c;)Le/a/c/a/l/b$b;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "$this$toFinanceTransactions"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/a/c/q/c;->e:Le/a/c/r/b$a;

    .line 2
    iget-object v2, v1, Le/a/c/r/b$a;->d:Ljava/lang/String;

    .line 3
    iget-object v1, v1, Le/a/c/r/b$a;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v0, Le/a/c/q/c;->e:Le/a/c/r/b$a;

    .line 6
    iget-object v1, v1, Le/a/c/r/b$a;->f:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/c/q/c;->e:Le/a/c/r/b$a;

    .line 8
    iget-object v1, v1, Le/a/c/r/b$a;->e:Ljava/lang/String;

    .line 9
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, " \u00b7 "

    .line 10
    invoke-static {v2, v3, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v6, v1

    .line 11
    new-instance v1, Le/a/c/a/l/b$b;

    .line 12
    iget-wide v3, v0, Le/a/c/q/c;->a:J

    .line 13
    iget-wide v12, v0, Le/a/c/q/c;->b:J

    .line 14
    iget-object v2, v0, Le/a/c/q/c;->e:Le/a/c/r/b$a;

    .line 15
    iget-object v5, v2, Le/a/c/r/b$a;->b:Ljava/lang/String;

    .line 16
    iget v7, v2, Le/a/c/r/b$a;->c:I

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v8, v0, Le/a/c/q/c;->e:Le/a/c/r/b$a;

    .line 19
    iget-object v8, v8, Le/a/c/r/b$a;->h:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v8, v0, Le/a/c/q/c;->e:Le/a/c/r/b$a;

    .line 22
    iget-object v8, v8, Le/a/c/r/b$a;->i:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 24
    iget-object v2, v0, Le/a/c/q/c;->e:Le/a/c/r/b$a;

    .line 25
    iget v9, v2, Le/a/c/r/b$a;->j:I

    .line 26
    iget-object v8, v0, Le/a/c/q/c;->c:Ljava/lang/String;

    .line 27
    iget-object v11, v2, Le/a/c/r/b$a;->g:Ljava/lang/String;

    .line 28
    iget-wide v14, v0, Le/a/c/q/c;->f:J

    .line 29
    iget v2, v0, Le/a/c/q/c;->g:I

    .line 30
    iget-boolean v0, v0, Le/a/c/q/c;->h:Z

    move/from16 v16, v2

    move-object v2, v1

    move/from16 v17, v0

    .line 31
    invoke-direct/range {v2 .. v17}, Le/a/c/a/l/b$b;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JJIZ)V

    return-object v1
.end method

.method public static final e(Le/a/c/q/j;)Le/a/c/a/l/b$g;
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "$this$toUpcomingReminder"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, v0, Le/a/c/q/j$a;

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    check-cast v0, Le/a/c/q/j$a;

    .line 2
    iget-wide v5, v0, Le/a/c/q/j$a;->a:J

    .line 3
    iget-wide v14, v0, Le/a/c/q/j$a;->b:J

    .line 4
    iget-object v1, v0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 5
    iget-object v1, v1, Le/a/c/r/b$b;->n:Ljava/util/List;

    .line 6
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/c/r/c;

    .line 7
    iget-object v1, v0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 8
    iget-object v1, v1, Le/a/c/r/b$b;->n:Ljava/util/List;

    .line 9
    invoke-static {v1}, Le/a/c/p/a;->z2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/c/r/c;

    .line 10
    iget-object v1, v0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 11
    iget-object v10, v1, Le/a/c/r/b$b;->k:Ljava/lang/String;

    .line 12
    iget-object v1, v1, Le/a/c/r/b$b;->o:Ljava/lang/String;

    const-string v4, "PrepaidExpiry"

    .line 13
    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 15
    iget-object v1, v1, Le/a/c/r/b$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v12, v1

    .line 16
    iget-object v1, v0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 17
    iget v1, v1, Le/a/c/r/b$b;->c:I

    .line 18
    iget-object v4, v0, Le/a/c/q/j$a;->f:Le/a/c/r/j/a;

    .line 19
    invoke-static {v4}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v16

    .line 20
    iget-object v4, v0, Le/a/c/q/j$a;->e:Le/a/c/r/j/a;

    .line 21
    invoke-static {v4}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v17

    .line 22
    iget-object v4, v0, Le/a/c/q/j$a;->g:Ljava/util/List;

    .line 23
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 25
    check-cast v4, Le/a/c/r/j/a;

    .line 26
    invoke-static {v4}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_1
    iget-object v11, v0, Le/a/c/q/j$a;->c:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Le/a/c/a/c/h/m/a;->b(Le/a/c/q/j$a;)Ls1/k;

    move-result-object v2

    .line 29
    iget-object v2, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 30
    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 31
    invoke-static {v0}, Le/a/c/a/c/h/m/a;->b(Le/a/c/q/j$a;)Ls1/k;

    move-result-object v2

    .line 32
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 33
    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/Integer;

    .line 34
    iget-object v2, v0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 35
    iget-object v4, v2, Le/a/c/r/b$b;->g:Ljava/lang/String;

    move-object/from16 v20, v4

    .line 36
    iget-object v4, v2, Le/a/c/r/b$b;->n:Ljava/util/List;

    .line 37
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/r/c;

    .line 38
    iget-object v4, v4, Le/a/c/r/c;->a:Ljava/lang/String;

    .line 39
    invoke-static {v2, v4}, Le/a/m0/a1$k;->w(Le/a/c/r/b$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 40
    iget v2, v0, Le/a/c/q/j$a;->i:I

    move/from16 v23, v2

    .line 41
    iget-boolean v2, v0, Le/a/c/q/j$a;->j:Z

    move/from16 v24, v2

    .line 42
    invoke-virtual {v0}, Le/a/c/q/j$a;->a()Z

    move-result v2

    xor-int/lit8 v28, v2, 0x1

    .line 43
    sget-object v25, Le/a/c/r/j/p$b;->b:Le/a/c/r/j/p$b;

    .line 44
    iget-object v0, v0, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 45
    iget-object v0, v0, Le/a/c/r/b$b;->p:Lw3/b/a/b;

    .line 46
    invoke-virtual {v0}, Lw3/b/a/e0/c;->S1()Lw3/b/a/n;

    move-result-object v0

    const-string v2, "data.billUiSchema.billDateTime.toInstant()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-wide v2, v0, Lw3/b/a/n;->a:J

    move-wide/from16 v26, v2

    const/16 v29, 0x0

    const v30, 0x200008

    .line 48
    new-instance v0, Le/a/c/a/l/b$g;

    move-object v4, v0

    const/4 v2, 0x0

    move-object v3, v9

    move-object v9, v2

    move-wide/from16 v18, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move/from16 v17, v1

    invoke-direct/range {v4 .. v30}, Le/a/c/a/l/b$g;-><init>(JLe/a/c/r/c;Le/a/c/r/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/a/l/c;Le/a/c/a/l/c;Ljava/util/List;IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLe/a/c/r/j/p;JZZI)V

    goto/16 :goto_3

    .line 49
    :cond_2
    instance-of v1, v0, Le/a/c/q/j$b;

    if-eqz v1, :cond_4

    check-cast v0, Le/a/c/q/j$b;

    .line 50
    invoke-static {v0}, Le/a/c/a/c/h/m/a;->c(Le/a/c/q/j$b;)Ls1/k;

    move-result-object v1

    .line 51
    iget-wide v5, v0, Le/a/c/q/j$b;->a:J

    .line 52
    iget-wide v14, v0, Le/a/c/q/j$b;->b:J

    .line 53
    iget-object v4, v0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 54
    iget-object v9, v4, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 55
    iget-object v10, v4, Le/a/c/r/b$f;->f:Ljava/lang/String;

    .line 56
    iget-object v12, v4, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 57
    iget-object v4, v0, Le/a/c/q/j$b;->e:Le/a/c/r/j/a;

    .line 58
    invoke-static {v4}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v16

    .line 59
    iget-object v4, v0, Le/a/c/q/j$b;->f:Le/a/c/r/j/a;

    .line 60
    invoke-static {v4}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v18

    .line 61
    iget-object v11, v0, Le/a/c/q/j$b;->c:Ljava/lang/String;

    .line 62
    iget-object v4, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 63
    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 64
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 65
    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/Integer;

    .line 66
    iget-object v1, v0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 67
    iget-object v1, v1, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v4, 0x0

    .line 68
    invoke-static {v1, v4, v3}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 69
    iget-object v1, v0, Le/a/c/q/j$b;->g:Ljava/util/List;

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 72
    check-cast v2, Le/a/c/r/j/a;

    .line 73
    invoke-static {v2}, Le/a/c/p/a;->p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_3
    iget-object v1, v0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 75
    iget-object v1, v1, Le/a/c/r/b$f;->q:Ljava/util/List;

    .line 76
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/c/r/c;

    const/16 v20, 0x0

    .line 77
    iget-object v1, v0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 78
    iget-object v1, v1, Le/a/c/r/b$f;->q:Ljava/util/List;

    .line 79
    invoke-static {v1}, Le/a/c/p/a;->z2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/r/c;

    move-object v2, v8

    move-object v8, v1

    .line 80
    sget v17, Lcom/truecaller/insights/ui/R$attr;->tcx_textPrimary:I

    .line 81
    iget v1, v0, Le/a/c/q/j$b;->i:I

    move/from16 v23, v1

    .line 82
    iget-boolean v1, v0, Le/a/c/q/j$b;->j:Z

    move/from16 v24, v1

    .line 83
    new-instance v1, Le/a/c/r/j/p$h;

    move-object/from16 v25, v1

    move-wide/from16 v31, v14

    .line 84
    iget-object v14, v0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 85
    iget-object v14, v14, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 86
    invoke-static {v14, v4, v3}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Le/a/c/r/j/p$h;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v0, v0, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 88
    iget-object v0, v0, Le/a/c/r/b$f;->x:Lw3/b/a/b;

    .line 89
    invoke-virtual {v0}, Lw3/b/a/e0/c;->S1()Lw3/b/a/n;

    move-result-object v0

    const-string v1, "data.uiSchema.travelDateTime.toInstant()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-wide v0, v0, Lw3/b/a/n;->a:J

    move-wide/from16 v26, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x302000

    .line 91
    new-instance v0, Le/a/c/a/l/b$g;

    move-object v4, v0

    move-object/from16 v14, v16

    move-object/from16 v15, v18

    move-object/from16 v16, v2

    move-wide/from16 v18, v31

    invoke-direct/range {v4 .. v30}, Le/a/c/a/l/b$g;-><init>(JLe/a/c/r/c;Le/a/c/r/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/a/l/c;Le/a/c/a/l/c;Ljava/util/List;IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLe/a/c/r/j/p;JZZI)V

    :goto_3
    return-object v0

    .line 92
    :cond_4
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public static final f(Le/a/c/q/k;Z)Le/a/c/a/l/b$h;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "$this$toUpdateItem"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1
    iget-object v1, v0, Le/a/c/q/k;->i:Ljava/lang/String;

    const-string v2, "Today"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Le/a/c/q/k;->i:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, v0, Le/a/c/q/k;->j:Ljava/lang/String;

    :goto_1
    move-object v8, v1

    if-eqz p1, :cond_2

    .line 5
    iget-object v1, v0, Le/a/c/q/k;->h:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "\n"

    const-string v5, " "

    .line 6
    invoke-static {v1, v4, v5, v2, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 7
    :cond_2
    iget-object v1, v0, Le/a/c/q/k;->h:Ljava/lang/String;

    :goto_2
    move-object v6, v1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    move/from16 v16, v1

    .line 8
    new-instance v1, Le/a/c/a/l/b$h;

    .line 9
    iget-wide v3, v0, Le/a/c/q/k;->c:J

    .line 10
    iget-wide v9, v0, Le/a/c/q/k;->a:J

    .line 11
    iget-object v5, v0, Le/a/c/q/k;->b:Ljava/lang/String;

    .line 12
    iget-object v7, v0, Le/a/c/q/k;->i:Ljava/lang/String;

    .line 13
    iget-wide v11, v0, Le/a/c/q/k;->e:J

    .line 14
    iget v13, v0, Le/a/c/q/k;->f:I

    .line 15
    iget-boolean v14, v0, Le/a/c/q/k;->g:Z

    .line 16
    iget-object v15, v0, Le/a/c/q/k;->d:Le/a/c/r/m/b;

    move-object v2, v1

    .line 17
    invoke-direct/range {v2 .. v16}, Le/a/c/a/l/b$h;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIZLe/a/c/r/m/b;I)V

    return-object v1
.end method
