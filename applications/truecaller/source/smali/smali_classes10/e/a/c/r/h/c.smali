.class public final Le/a/c/r/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/r/h/b;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Ls1/g;

.field public final c:Le/a/c/c0/a;


# direct methods
.method public constructor <init>(Le/a/c/c0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/h/c;->c:Le/a/c/c0/a;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/c/r/h/c;->a:Le/m/e/k;

    .line 3
    new-instance p1, Le/a/c/r/h/c$a;

    invoke-direct {p1, p0}, Le/a/c/r/h/c$a;-><init>(Le/a/c/r/h/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/c/r/h/c;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/r/h/f$b;Le/a/c/b0/c;)Lcom/truecaller/insights/models/pdo/SmsBackup;
    .locals 11

    const-string v0, "smsResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object v1, p2, Le/a/c/b0/c;->a:Ljava/lang/String;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p2, Le/a/c/b0/c;->b:Lcom/truecaller/insights/models/pdo/ClassifierType;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object p2, Lcom/truecaller/insights/models/pdo/ClassifierType;->DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

    :goto_1
    move-object v5, p2

    .line 4
    iget-object p2, p1, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    .line 5
    instance-of v1, p2, Le/a/c/r/h/i$a;

    if-eqz v1, :cond_4

    .line 6
    new-instance p2, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 7
    iget-object v3, p1, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 8
    iget-object v1, p1, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    if-eqz v1, :cond_2

    .line 9
    iget v1, v1, Le/a/c/g/a;->a:F

    .line 10
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v0

    .line 11
    :goto_2
    iget-object v1, p1, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    if-eqz v1, :cond_3

    .line 12
    iget v0, v1, Le/a/c/g/a;->b:I

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    move-object v7, v0

    .line 14
    iget-object p1, p1, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    .line 15
    check-cast p1, Le/a/c/r/h/i$a;

    .line 16
    iget-object v8, p1, Le/a/c/r/h/i$a;->a:Ljava/lang/Throwable;

    move-object v2, p2

    .line 17
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/insights/models/pdo/SmsBackup;-><init>(Le/a/c/h/m/c;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 18
    :cond_4
    instance-of p2, p2, Le/a/c/r/h/i$b;

    if-eqz p2, :cond_7

    new-instance p2, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 19
    iget-object v3, p1, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 20
    iget-object v1, p1, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    if-eqz v1, :cond_5

    .line 21
    iget v1, v1, Le/a/c/g/a;->a:F

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_5
    move-object v6, v0

    .line 23
    :goto_3
    iget-object p1, p1, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    if-eqz p1, :cond_6

    .line 24
    iget p1, p1, Le/a/c/g/a;->b:I

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_6
    move-object v7, v0

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p2

    .line 26
    invoke-direct/range {v2 .. v10}, Lcom/truecaller/insights/models/pdo/SmsBackup;-><init>(Le/a/c/h/m/c;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Throwable;ILs1/z/c/f;)V

    :goto_4
    return-object p2

    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public b(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "pdo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/r/h/c;->getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.PdoBinderType.PdoBinder"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;->getBinderByCategoryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4c867654    # -5.8100042E-8f

    if-eq v1, v2, :cond_a

    const/16 v2, 0x63

    if-eq v1, v2, :cond_9

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_8

    const/16 v2, 0x73

    if-eq v1, v2, :cond_7

    const v2, 0x2eefae

    if-eq v1, v2, :cond_6

    const v2, 0x6ae9bb7b

    if-eq v1, v2, :cond_5

    const/16 v2, 0x66

    if-eq v1, v2, :cond_4

    const/16 v2, 0x67

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x70

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string v1, "val5"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "val4"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "val3"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "val2"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "val1"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "dffVal5"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "dffVal4"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "dffVal3"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_8
    const-string v1, "dffVal2"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "dffVal1"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v1, "p"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v1, "o"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v1, "g"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v1, "f"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v1, "datetime"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v1, "date"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    const-string v1, "s"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string v1, "k"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v1, "c"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_a
    const-string v1, "msg_date"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p2, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/utils/DateFormat;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_b
    :goto_1
    if-eqz p3, :cond_c

    const-string p1, "Attempt to unBind an unknown key: "

    .line 24
    invoke-static {p1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    sget-object p2, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 26
    sget-object p2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance p3, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->BINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {p3, v0}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    invoke-virtual {p2, p3, p1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_c
    const-string p1, ""

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x371d30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5dc36374
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public c(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Le/a/c/r/h/h;
    .locals 1

    const-string v0, "pdo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Delivery"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$c;->a:Le/a/c/r/h/h$c;

    goto :goto_1

    :sswitch_1
    const-string v0, "Notif"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$e;->a:Le/a/c/r/h/h$e;

    goto :goto_1

    :sswitch_2
    const-string v0, "Event"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$d;->a:Le/a/c/r/h/h$d;

    goto :goto_1

    :sswitch_3
    const-string v0, "Bill"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$b;->a:Le/a/c/r/h/h$b;

    goto :goto_1

    :sswitch_4
    const-string v0, "Bank"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$a;->a:Le/a/c/r/h/h$a;

    goto :goto_1

    :sswitch_5
    const-string v0, "OTP"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$g;->a:Le/a/c/r/h/h$g;

    goto :goto_1

    :sswitch_6
    const-string v0, "Travel"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$i;->a:Le/a/c/r/h/h$i;

    goto :goto_1

    :sswitch_7
    const-string v0, "Offers"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Le/a/c/r/h/h$f;->a:Le/a/c/r/h/h$f;

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    sget-object p1, Le/a/c/r/h/h$h;->a:Le/a/c/r/h/h$h;

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7363e249 -> :sswitch_7
        -0x6a3494c6 -> :sswitch_6
        0x1330b -> :sswitch_5
        0x1f7a5c -> :sswitch_4
        0x1f9827 -> :sswitch_3
        0x403827a -> :sswitch_2
        0x47f5f10 -> :sswitch_1
        0x34ef8014 -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Le/a/c/r/h/f$b;)Lcom/truecaller/insights/models/pdo/ParsedDataObject;
    .locals 9

    const-string v0, "smsResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    const-string v1, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.SmsDetailedResponseType.SmsDetailedResponse"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/c/r/h/i$b;

    .line 3
    iget-object v0, v0, Le/a/c/r/h/i$b;->a:Le/q/f/a/f/j;

    .line 4
    iget-object v0, v0, Le/q/f/a/f/j;->c:Le/q/c/b/a;

    const-string v1, "(smsResponse.detailedRes\u2026Response).response.valMap"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/q/f/a/f/n;

    .line 6
    iget-object v0, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v1, "(smsResponse.detailedRes\u2026onse).response.valMap.all"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/a/c/r/h/c;->a:Le/m/e/k;

    .line 9
    iget-object v2, p1, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    const-string v3, "valMap"

    .line 10
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "responseType"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/util/Map$Entry;

    .line 15
    invoke-virtual {p0}, Le/a/c/r/h/c;->getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.PdoBinderType.PdoBinder"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    invoke-virtual {v6, v2}, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;->getBinderByCategory(Le/a/c/r/h/h;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v5, v6

    :cond_0
    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    const-string v8, ""

    .line 20
    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-eqz v4, :cond_2

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v1, v0}, Le/m/e/k;->t(Ljava/lang/Object;)Le/m/e/q;

    move-result-object v0

    const-class v2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    new-instance v3, Le/m/e/e0/a0/e;

    invoke-direct {v3, v0}, Le/m/e/e0/a0/e;-><init>(Le/m/e/q;)V

    invoke-virtual {v1, v3, v2}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 25
    :goto_3
    invoke-static {v2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gson.fromJson(gson.toJso\u2026edDataObject::class.java)"

    .line 26
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 27
    iget-object v1, p1, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 28
    iget-wide v2, v1, Le/a/c/h/m/c;->a:J

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 30
    iget-object v2, p1, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    .line 32
    iget-object p1, p1, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    .line 33
    invoke-virtual {p1}, Le/a/c/r/h/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 34
    iget-object p1, v1, Le/a/c/h/m/c;->d:Ljava/util/Date;

    .line 35
    invoke-virtual {v0, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    .line 36
    iget p1, v1, Le/a/c/h/m/c;->h:I

    .line 37
    invoke-virtual {v0, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 38
    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v4, v6

    :goto_4
    if-eqz v4, :cond_7

    .line 39
    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    .line 40
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public e(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "pdo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4c867654    # -5.8100042E-8f

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_9

    const/16 v1, 0x73

    if-eq v0, v1, :cond_8

    const v1, 0x2eefae

    if-eq v0, v1, :cond_7

    const v1, 0x6ae9bb7b

    if-eq v0, v1, :cond_6

    const/16 v1, 0x63

    if-eq v0, v1, :cond_5

    const/16 v1, 0x64

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3

    const/16 v1, 0x67

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "val5"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "val4"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "val3"

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "val2"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "val1"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "dff_val5"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "dff_val4"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "dff_val3"

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "dff_val2"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "dff_val1"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "p"

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "o"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "g"

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "f"

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v0, "d"

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v0, "c"

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v0, "datetime"

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    const-string v0, "date"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string v0, "s"

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v0, "k"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_a
    const-string v0, "msg_date"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p2, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/utils/DateFormat;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_b
    :goto_1
    const-string p1, "Attempt to unBind an unknown columnName: "

    .line 23
    invoke-static {p1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    sget-object p2, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 25
    sget-object p2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->BINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    invoke-virtual {p2, v0, p1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :pswitch_data_0
    .packed-switch 0x371d30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b31486b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public f(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "pdo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Le/a/c/r/h/c;->b(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p1

    :goto_0
    return-object p3
.end method

.method public getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;
    .locals 1

    iget-object v0, p0, Le/a/c/r/h/c;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/models/pdo/PdoBinderType;

    return-object v0
.end method
