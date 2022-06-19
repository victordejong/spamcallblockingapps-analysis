.class public final Le/a/o5/c2/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le/a/o5/c2/k;


# direct methods
.method public static a(Landroid/content/Context;)Le/a/o5/c2/k;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Le/a/b0/g/a;

    invoke-virtual {p0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p0

    .line 2
    sget-object v0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p0}, Le/a/b0/c;->v()Le/a/c3/a;

    move-result-object p0

    invoke-interface {p0}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/truecaller/buildinfo/BuildName;->toBuildName(Ljava/lang/String;)Lcom/truecaller/buildinfo/BuildName;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    new-instance p0, Le/a/o5/c2/q0;

    invoke-direct {p0}, Le/a/o5/c2/q0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 7
    :pswitch_1
    new-instance p0, Le/a/o5/c2/a;

    invoke-direct {p0}, Le/a/o5/c2/a;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 8
    :pswitch_2
    new-instance p0, Le/a/o5/c2/d;

    invoke-direct {p0}, Le/a/o5/c2/d;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 9
    :pswitch_3
    new-instance p0, Le/a/o5/c2/c;

    invoke-direct {p0}, Le/a/o5/c2/c;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 10
    :pswitch_4
    new-instance p0, Le/a/o5/c2/g;

    invoke-direct {p0}, Le/a/o5/c2/g;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 11
    :pswitch_5
    new-instance p0, Le/a/o5/c2/b;

    invoke-direct {p0}, Le/a/o5/c2/b;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 12
    :pswitch_6
    new-instance p0, Le/a/o5/c2/t;

    invoke-direct {p0}, Le/a/o5/c2/t;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 13
    :pswitch_7
    new-instance p0, Le/a/o5/c2/q;

    invoke-direct {p0}, Le/a/o5/c2/q;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 14
    :pswitch_8
    new-instance p0, Le/a/o5/c2/u;

    invoke-direct {p0}, Le/a/o5/c2/u;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 15
    :pswitch_9
    new-instance p0, Le/a/o5/c2/g0;

    invoke-direct {p0}, Le/a/o5/c2/g0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 16
    :pswitch_a
    new-instance p0, Le/a/o5/c2/p;

    invoke-direct {p0}, Le/a/o5/c2/p;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 17
    :pswitch_b
    new-instance p0, Le/a/o5/c2/j;

    invoke-direct {p0}, Le/a/o5/c2/j;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 18
    :pswitch_c
    new-instance p0, Le/a/o5/c2/j0;

    invoke-direct {p0}, Le/a/o5/c2/j0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 19
    :pswitch_d
    new-instance p0, Le/a/o5/c2/t0;

    invoke-direct {p0}, Le/a/o5/c2/t0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 20
    :pswitch_e
    new-instance p0, Le/a/o5/c2/a0;

    invoke-direct {p0}, Le/a/o5/c2/a0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 21
    :pswitch_f
    new-instance p0, Le/a/o5/c2/n;

    invoke-direct {p0}, Le/a/o5/c2/n;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 22
    :pswitch_10
    new-instance p0, Le/a/o5/c2/w;

    invoke-direct {p0}, Le/a/o5/c2/w;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 23
    :pswitch_11
    new-instance p0, Le/a/o5/c2/o;

    invoke-direct {p0}, Le/a/o5/c2/o;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 24
    :pswitch_12
    new-instance p0, Le/a/o5/c2/p0;

    invoke-direct {p0}, Le/a/o5/c2/p0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 25
    :pswitch_13
    new-instance p0, Le/a/o5/c2/r;

    invoke-direct {p0}, Le/a/o5/c2/r;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 26
    :pswitch_14
    new-instance p0, Le/a/o5/c2/y;

    invoke-direct {p0}, Le/a/o5/c2/y;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 27
    :pswitch_15
    new-instance p0, Le/a/o5/c2/x;

    invoke-direct {p0}, Le/a/o5/c2/x;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 28
    :pswitch_16
    new-instance p0, Le/a/o5/c2/m0;

    invoke-direct {p0}, Le/a/o5/c2/m0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 29
    :pswitch_17
    new-instance p0, Le/a/o5/c2/n0;

    invoke-direct {p0}, Le/a/o5/c2/n0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 30
    :pswitch_18
    new-instance p0, Le/a/o5/c2/o0;

    invoke-direct {p0}, Le/a/o5/c2/o0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 31
    :pswitch_19
    new-instance p0, Le/a/o5/c2/l0;

    invoke-direct {p0}, Le/a/o5/c2/l0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 32
    :pswitch_1a
    new-instance p0, Le/a/o5/c2/v;

    invoke-direct {p0}, Le/a/o5/c2/v;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 33
    :pswitch_1b
    new-instance p0, Le/a/o5/c2/c0;

    invoke-direct {p0}, Le/a/o5/c2/c0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 34
    :pswitch_1c
    new-instance p0, Le/a/o5/c2/s0;

    invoke-direct {p0}, Le/a/o5/c2/s0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 35
    :pswitch_1d
    new-instance p0, Le/a/o5/c2/h;

    invoke-direct {p0}, Le/a/o5/c2/h;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 36
    :pswitch_1e
    new-instance p0, Le/a/o5/c2/s;

    invoke-direct {p0}, Le/a/o5/c2/s;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 37
    :pswitch_1f
    new-instance p0, Le/a/o5/c2/l;

    invoke-direct {p0}, Le/a/o5/c2/l;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 38
    :pswitch_20
    new-instance p0, Le/a/o5/c2/h0;

    invoke-direct {p0}, Le/a/o5/c2/h0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 39
    :pswitch_21
    new-instance p0, Le/a/o5/c2/i;

    invoke-direct {p0}, Le/a/o5/c2/i;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 40
    :pswitch_22
    new-instance p0, Le/a/o5/c2/d0;

    invoke-direct {p0}, Le/a/o5/c2/d0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 41
    :pswitch_23
    new-instance p0, Le/a/o5/c2/k0;

    invoke-direct {p0}, Le/a/o5/c2/k0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 42
    :pswitch_24
    new-instance p0, Le/a/o5/c2/i0;

    invoke-direct {p0}, Le/a/o5/c2/i0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 43
    :pswitch_25
    new-instance p0, Le/a/o5/c2/z;

    invoke-direct {p0}, Le/a/o5/c2/z;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 44
    :pswitch_26
    new-instance p0, Le/a/o5/c2/e0;

    invoke-direct {p0}, Le/a/o5/c2/e0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 45
    :pswitch_27
    new-instance p0, Le/a/o5/c2/m;

    invoke-direct {p0}, Le/a/o5/c2/m;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 46
    :pswitch_28
    new-instance p0, Le/a/o5/c2/b0;

    invoke-direct {p0}, Le/a/o5/c2/b0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    .line 47
    :pswitch_29
    new-instance p0, Le/a/o5/c2/f0;

    invoke-direct {p0}, Le/a/o5/c2/f0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    goto/16 :goto_4

    :goto_0
    const-string p0, "featureOperatorCustomization"

    .line 48
    invoke-static {p0}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 50
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "Telenor"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "Claro"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "Vivo"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "Tim"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "Oi"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    move-object p0, v1

    goto :goto_2

    .line 51
    :pswitch_2a
    new-instance p0, Le/a/o5/c2/c;

    invoke-direct {p0}, Le/a/o5/c2/c;-><init>()V

    goto :goto_2

    .line 52
    :pswitch_2b
    new-instance p0, Le/a/o5/c2/a;

    invoke-direct {p0}, Le/a/o5/c2/a;-><init>()V

    goto :goto_2

    .line 53
    :pswitch_2c
    new-instance p0, Le/a/o5/c2/g;

    invoke-direct {p0}, Le/a/o5/c2/g;-><init>()V

    goto :goto_2

    .line 54
    :pswitch_2d
    new-instance p0, Le/a/o5/c2/d;

    invoke-direct {p0}, Le/a/o5/c2/d;-><init>()V

    goto :goto_2

    .line 55
    :pswitch_2e
    new-instance p0, Le/a/o5/c2/b;

    invoke-direct {p0}, Le/a/o5/c2/b;-><init>()V

    :goto_2
    if-eqz p0, :cond_8

    .line 56
    invoke-virtual {p0}, Le/a/o5/c2/k;->a()Le/a/o5/c2/k$b;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "key_carrier_logged"

    invoke-static {v2}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 57
    invoke-static {v2, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 58
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Le/a/o5/c2/k;->a()Le/a/o5/c2/k$b;

    move-result-object v2

    iget-object v2, v2, Le/a/o5/c2/k$b;->a:Ljava/lang/String;

    const-string v3, "Partner"

    .line 60
    invoke-static {v3, v2}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 61
    new-instance v3, Le/a/q2/g$b$a;

    const-string v4, "CARRIER_Customization_Applied"

    invoke-direct {v3, v4, v1, v2, v1}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 62
    invoke-interface {v0, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    :cond_8
    move-object v1, p0

    .line 63
    :goto_3
    sput-object v1, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    if-nez v1, :cond_9

    .line 64
    new-instance p0, Le/a/o5/c2/q0;

    invoke-direct {p0}, Le/a/o5/c2/q0;-><init>()V

    sput-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    .line 65
    :cond_9
    :goto_4
    sget-object p0, Le/a/o5/c2/r0;->a:Le/a/o5/c2/k;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9fa -> :sswitch_4
        0x14878 -> :sswitch_3
        0x28b0cc -> :sswitch_2
        0x3e2b935 -> :sswitch_1
        0xe0666c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Le/a/o5/c2/k$c;
    .locals 1

    .line 1
    invoke-static {p0}, Le/a/o5/c2/r0;->a(Landroid/content/Context;)Le/a/o5/c2/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/a/o5/c2/k;->b(Landroid/content/Context;)Le/a/o5/c2/k$c;

    move-result-object p0

    return-object p0
.end method
