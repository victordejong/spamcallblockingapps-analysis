.class public Le/a/o5/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/i1$b;,
        Le/a/o5/i1$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/k3/j/j;

.field public final c:Le/a/p5/m0;

.field public final d:Le/a/p5/a0;

.field public final e:Le/a/a/k/a/l;

.field public final f:Le/a/k/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/m0;Le/a/p5/a0;Le/a/a/k/a/l;Le/a/k/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/i1;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Le/a/k3/j/j;

    invoke-direct {v0, p1}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/o5/i1;->b:Le/a/k3/j/j;

    .line 4
    iput-object p2, p0, Le/a/o5/i1;->c:Le/a/p5/m0;

    .line 5
    iput-object p3, p0, Le/a/o5/i1;->d:Le/a/p5/a0;

    .line 6
    iput-object p4, p0, Le/a/o5/i1;->e:Le/a/a/k/a/l;

    .line 7
    iput-object p5, p0, Le/a/o5/i1;->f:Le/a/k/h;

    return-void
.end method

.method public static c(JJ)J
    .locals 3

    const/4 v0, 0x7

    shl-long v0, p0, v0

    const/16 v2, 0x39

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    xor-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final a(Le/a/o5/h1;)Lcom/truecaller/data/entity/Contact;
    .locals 17

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/o5/h1;->b()J

    move-result-wide v1

    .line 2
    new-instance v3, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v3}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 3
    iget-object v4, v0, Le/a/o5/h1;->f:Le/a/p5/s0/e;

    sget-object v5, Le/a/o5/h1;->x:[Ls1/a/l;

    const/4 v6, 0x5

    aget-object v7, v5, v6

    invoke-virtual {v4, v0, v7}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Contact;->T0(Ljava/lang/Long;)V

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    .line 7
    iget-object v7, v0, Le/a/o5/h1;->g:Le/a/p5/s0/e;

    const/4 v8, 0x6

    aget-object v5, v5, v8

    invoke-virtual {v7, v0, v5}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-ne v5, v9, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    move v5, v7

    .line 8
    :goto_0
    invoke-virtual {v3, v5}, Lcom/truecaller/data/entity/Contact;->Q0(Z)V

    .line 9
    :goto_1
    iget-object v5, v0, Le/a/o5/h1;->e:Le/a/p5/s0/e;

    sget-object v10, Le/a/o5/h1;->x:[Ls1/a/l;

    const/4 v11, 0x4

    aget-object v12, v10, v11

    invoke-virtual {v5, v0, v12}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    iget-object v12, v0, Le/a/o5/h1;->h:Le/a/p5/s0/e;

    const/4 v13, 0x7

    aget-object v13, v10, v13

    invoke-virtual {v12, v0, v13}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-ne v12, v9, :cond_1

    move v12, v9

    goto :goto_2

    :cond_1
    move v12, v7

    .line 11
    :goto_2
    iget-object v13, v0, Le/a/o5/h1;->a:Le/a/p5/s0/e;

    aget-object v14, v10, v7

    invoke-virtual {v13, v0, v14}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v15, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v11, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    move v11, v8

    goto :goto_4

    :sswitch_1
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move v11, v6

    goto :goto_4

    :sswitch_2
    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :sswitch_3
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x3

    goto :goto_4

    :sswitch_4
    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x2

    goto :goto_4

    :sswitch_5
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v11, v9

    goto :goto_4

    :sswitch_6
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move v11, v7

    goto :goto_4

    :goto_3
    move v11, v15

    :cond_8
    :goto_4
    const/16 v4, 0xb

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_5

    .line 13
    :pswitch_0
    iget-object v4, v0, Le/a/o5/h1;->r:Le/a/p5/s0/e;

    const/16 v5, 0x11

    aget-object v5, v10, v5

    invoke-virtual {v4, v0, v5}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Contact;->R0(Ljava/lang/String;)V

    .line 15
    iget-object v4, v0, Le/a/o5/h1;->q:Le/a/p5/s0/e;

    const/16 v5, 0x10

    aget-object v5, v10, v5

    invoke-virtual {v4, v0, v5}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 17
    :pswitch_1
    iget-object v4, v0, Le/a/o5/h1;->i:Le/a/p5/s0/e;

    const/16 v5, 0x8

    aget-object v5, v10, v5

    invoke-virtual {v4, v0, v5}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    invoke-static {v4}, Le/a/p5/g0;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 20
    new-instance v11, Lcom/truecaller/data/entity/Number;

    const/4 v15, 0x0

    .line 21
    invoke-direct {v11, v5, v15}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v11, v12}, Lcom/truecaller/data/entity/RowEntity;->setIsPrimary(Z)V

    .line 23
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/truecaller/data/entity/RowEntity;->setDataPhonebookId(Ljava/lang/Long;)V

    .line 24
    iget-object v5, v0, Le/a/o5/h1;->j:Le/a/p5/s0/e;

    const/16 v12, 0x9

    aget-object v12, v10, v12

    invoke-virtual {v5, v0, v12}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 25
    invoke-virtual {v11, v5}, Lcom/truecaller/data/entity/Number;->y(I)V

    .line 26
    iget-object v5, v0, Le/a/o5/h1;->k:Le/a/p5/s0/e;

    const/16 v12, 0xa

    aget-object v10, v10, v12

    invoke-virtual {v5, v0, v10}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 27
    invoke-virtual {v11, v5}, Lcom/truecaller/data/entity/Number;->z(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v11, v4}, Lcom/truecaller/data/entity/Number;->w(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, v11}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 30
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 31
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Contact;->O0(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 32
    :pswitch_2
    new-instance v5, Lcom/truecaller/data/entity/Link;

    invoke-direct {v5}, Lcom/truecaller/data/entity/Link;-><init>()V

    .line 33
    invoke-virtual {v5, v12}, Lcom/truecaller/data/entity/RowEntity;->setIsPrimary(Z)V

    .line 34
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/truecaller/data/entity/RowEntity;->setDataPhonebookId(Ljava/lang/Long;)V

    const-string v11, "link"

    .line 35
    invoke-virtual {v5, v11}, Lcom/truecaller/data/entity/Link;->setService(Ljava/lang/String;)V

    .line 36
    iget-object v11, v0, Le/a/o5/h1;->l:Le/a/p5/s0/e;

    aget-object v4, v10, v4

    invoke-virtual {v11, v0, v4}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    invoke-virtual {v5, v4}, Lcom/truecaller/data/entity/Link;->setInfo(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v5}, Lcom/truecaller/data/entity/Contact;->c(Lcom/truecaller/data/entity/Link;)V

    goto/16 :goto_5

    .line 39
    :pswitch_3
    new-instance v4, Lcom/truecaller/data/entity/Address;

    invoke-direct {v4}, Lcom/truecaller/data/entity/Address;-><init>()V

    .line 40
    invoke-virtual {v4, v12}, Lcom/truecaller/data/entity/RowEntity;->setIsPrimary(Z)V

    .line 41
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/RowEntity;->setDataPhonebookId(Ljava/lang/Long;)V

    .line 42
    iget-object v5, v0, Le/a/o5/h1;->m:Le/a/p5/s0/e;

    const/16 v11, 0xc

    aget-object v11, v10, v11

    invoke-virtual {v5, v0, v11}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 43
    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/Address;->setStreet(Ljava/lang/String;)V

    .line 44
    iget-object v5, v0, Le/a/o5/h1;->n:Le/a/p5/s0/e;

    const/16 v11, 0xd

    aget-object v11, v10, v11

    invoke-virtual {v5, v0, v11}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/Address;->setZipCode(Ljava/lang/String;)V

    .line 46
    iget-object v5, v0, Le/a/o5/h1;->o:Le/a/p5/s0/e;

    const/16 v11, 0xe

    aget-object v11, v10, v11

    invoke-virtual {v5, v0, v11}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/Address;->setCity(Ljava/lang/String;)V

    .line 48
    iget-object v5, v0, Le/a/o5/h1;->p:Le/a/p5/s0/e;

    const/16 v11, 0xf

    aget-object v10, v10, v11

    invoke-virtual {v5, v0, v10}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 49
    invoke-static {v5}, Le/a/p5/g0;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v5}, Le/a/b0/q/j;->d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v10

    if-nez v10, :cond_9

    .line 51
    invoke-static {v5}, Le/a/b0/q/j;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v10

    :cond_9
    if-eqz v10, :cond_a

    .line 52
    iget-object v5, v10, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v10}, Le/a/p5/g0;->M(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/Address;->setCountryCode(Ljava/lang/String;)V

    .line 53
    :cond_a
    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Contact;->b(Lcom/truecaller/data/entity/Address;)V

    goto :goto_5

    .line 54
    :pswitch_4
    iget-object v4, v0, Le/a/o5/h1;->v:Le/a/p5/s0/e;

    const/16 v5, 0x15

    aget-object v5, v10, v5

    invoke-virtual {v4, v0, v5}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 55
    new-instance v5, Lcom/truecaller/data/entity/Note;

    invoke-direct {v5}, Lcom/truecaller/data/entity/Note;-><init>()V

    .line 56
    invoke-virtual {v5, v4}, Lcom/truecaller/data/entity/Note;->setValue(Ljava/lang/String;)V

    .line 57
    iput-object v5, v3, Lcom/truecaller/data/entity/Contact;->t:Lcom/truecaller/data/entity/Note;

    goto :goto_5

    .line 58
    :pswitch_5
    new-instance v4, Lcom/truecaller/data/entity/StructuredName;

    invoke-direct {v4}, Lcom/truecaller/data/entity/StructuredName;-><init>()V

    .line 59
    iget-object v5, v0, Le/a/o5/h1;->s:Le/a/p5/s0/e;

    const/16 v11, 0x12

    aget-object v11, v10, v11

    invoke-virtual {v5, v0, v11}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/StructuredName;->setFamilyName(Ljava/lang/String;)V

    .line 61
    iget-object v5, v0, Le/a/o5/h1;->t:Le/a/p5/s0/e;

    const/16 v11, 0x13

    aget-object v11, v10, v11

    invoke-virtual {v5, v0, v11}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 62
    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/StructuredName;->setGivenName(Ljava/lang/String;)V

    .line 63
    iget-object v5, v0, Le/a/o5/h1;->u:Le/a/p5/s0/e;

    const/16 v11, 0x14

    aget-object v10, v10, v11

    invoke-virtual {v5, v0, v10}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v5}, Lcom/truecaller/data/entity/StructuredName;->setMiddleName(Ljava/lang/String;)V

    .line 65
    iput-object v4, v3, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    goto :goto_5

    .line 66
    :pswitch_6
    new-instance v5, Lcom/truecaller/data/entity/Link;

    invoke-direct {v5}, Lcom/truecaller/data/entity/Link;-><init>()V

    .line 67
    invoke-virtual {v5, v12}, Lcom/truecaller/data/entity/RowEntity;->setIsPrimary(Z)V

    .line 68
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/truecaller/data/entity/RowEntity;->setDataPhonebookId(Ljava/lang/Long;)V

    const-string v11, "email"

    .line 69
    invoke-virtual {v5, v11}, Lcom/truecaller/data/entity/Link;->setService(Ljava/lang/String;)V

    .line 70
    iget-object v11, v0, Le/a/o5/h1;->l:Le/a/p5/s0/e;

    aget-object v4, v10, v4

    invoke-virtual {v11, v0, v4}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 71
    invoke-virtual {v5, v4}, Lcom/truecaller/data/entity/Link;->setInfo(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v5}, Lcom/truecaller/data/entity/Contact;->c(Lcom/truecaller/data/entity/Link;)V

    .line 73
    :cond_b
    :goto_5
    invoke-virtual/range {p1 .. p1}, Le/a/o5/h1;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p1 .. p1}, Le/a/o5/h1;->b()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_d
    :goto_6
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_6
        -0x4053a7f0 -> :sswitch_5
        -0x40537289 -> :sswitch_4
        -0x23d6087c -> :sswitch_3
        0x1b3458f6 -> :sswitch_2
        0x28c7a9f2 -> :sswitch_1
        0x291e75b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/i1;->d:Le/a/p5/a0;

    const-string v1, "android.permission.READ_CONTACTS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Le/a/o5/i1$c;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "_id"

    const-string v3, "contact_id"

    const-string v4, "lookup"

    const-string v5, "data_version"

    const-string v6, "mimetype"

    const-string v7, "display_name"

    const-string v8, "starred"

    const-string v9, "data1"

    const-string v10, "data2"

    const-string v11, "data3"

    const-string v12, "data4"

    const-string v13, "data9"

    const-string v14, "data7"

    const-string v15, "data10"

    const-string v16, "is_super_primary"

    const-string v17, "data5"

    const-string v18, "data1"

    .line 1
    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v21

    .line 2
    iget-object v2, v1, Le/a/o5/i1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v24, "contact_id ASC"

    move-object/from16 v20, p2

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3
    new-instance v0, Le/a/o5/i1$c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v4, v4, v3}, Le/a/o5/i1$c;-><init>(Ljava/util/List;IILe/a/o5/i1$a;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v5, Le/a/o5/i1$b;

    invoke-direct {v5, v1, v3}, Le/a/o5/i1$b;-><init>(Le/a/o5/i1;Le/a/o5/i1$a;)V

    .line 5
    new-instance v6, Le/a/o5/h1;

    invoke-direct {v6, v2}, Le/a/o5/h1;-><init>(Landroid/database/Cursor;)V

    .line 6
    :try_start_0
    invoke-virtual {v6}, Le/a/o5/h1;->moveToFirst()Z

    .line 7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "contact_phonebook_id"

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v7, "contact_phonebook_hash"

    .line 9
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "tc_id"

    .line 10
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move v9, v4

    goto :goto_0

    :cond_1
    move v2, v4

    move v7, v2

    move v8, v7

    move v9, v8

    .line 11
    :goto_0
    invoke-virtual {v6}, Le/a/o5/h1;->isAfterLast()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, v6, Le/a/o5/h1;->w:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v5}, Le/a/o5/i1$b;->a()V

    .line 14
    iget-object v0, v5, Le/a/o5/i1$b;->d:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 16
    iget v4, v5, Le/a/o5/i1$b;->e:I

    add-int/2addr v2, v4

    .line 17
    new-instance v4, Le/a/o5/i1$c;

    invoke-direct {v4, v0, v2, v9, v3}, Le/a/o5/i1$c;-><init>(Ljava/util/List;IILe/a/o5/i1$a;)V

    return-object v4

    .line 18
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Le/a/o5/h1;->isAfterLast()Z

    move-result v10

    if-eqz v10, :cond_4

    const-wide/16 v10, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Le/a/o5/h1;->b()J

    move-result-wide v10

    .line 19
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-eqz v12, :cond_5

    const-wide v12, 0x7fffffffffffffffL

    goto :goto_3

    :cond_5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 20
    :goto_3
    invoke-virtual {v6}, Le/a/o5/h1;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_12

    cmp-long v12, v12, v10

    if-gez v12, :cond_6

    goto/16 :goto_d

    .line 21
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_8

    if-lez v12, :cond_7

    goto :goto_4

    :cond_7
    move v12, v4

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v12, 0x1

    .line 22
    :goto_5
    invoke-virtual {v6}, Le/a/o5/h1;->getPosition()I

    move-result v13

    .line 23
    iget-object v14, v6, Le/a/o5/h1;->c:Le/a/p5/s0/e;

    sget-object v15, Le/a/o5/h1;->x:[Ls1/a/l;

    const/16 v16, 0x2

    aget-object v3, v15, v16

    invoke-virtual {v14, v6, v3}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    iget-object v14, v6, Le/a/o5/h1;->g:Le/a/p5/s0/e;

    const/16 v16, 0x6

    aget-object v4, v15, v16

    invoke-virtual {v14, v6, v4}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 25
    iget-object v14, v6, Le/a/o5/h1;->f:Le/a/p5/s0/e;

    const/16 v16, 0x5

    aget-object v15, v15, v16

    invoke-virtual {v14, v6, v15}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 26
    invoke-static {v14}, Le/a/p5/g0;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    int-to-long v14, v14

    move/from16 v17, v8

    move/from16 v16, v9

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v14, v15}, Le/a/o5/i1;->c(JJ)J

    move-result-wide v14

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v14, v15, v8, v9}, Le/a/o5/i1;->c(JJ)J

    move-result-wide v8

    int-to-long v14, v4

    .line 28
    invoke-static {v8, v9, v14, v15}, Le/a/o5/i1;->c(JJ)J

    move-result-wide v8

    .line 29
    :goto_6
    iget-object v4, v6, Le/a/o5/h1;->a:Le/a/p5/s0/e;

    sget-object v14, Le/a/o5/h1;->x:[Ls1/a/l;

    move/from16 v20, v2

    const/4 v15, 0x0

    aget-object v2, v14, v15

    invoke-virtual {v4, v6, v2}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    move-object/from16 p3, v5

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 30
    invoke-static {v8, v9, v4, v5}, Le/a/o5/i1;->c(JJ)J

    move-result-wide v4

    .line 31
    iget-object v2, v6, Le/a/o5/h1;->d:Le/a/p5/s0/e;

    const/4 v8, 0x3

    aget-object v8, v14, v8

    invoke-virtual {v2, v6, v8}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v8, v2

    .line 32
    invoke-static {v4, v5, v8, v9}, Le/a/o5/i1;->c(JJ)J

    move-result-wide v8

    .line 33
    invoke-virtual {v6}, Le/a/o5/h1;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v6}, Le/a/o5/h1;->b()J

    move-result-wide v4

    cmp-long v2, v10, v4

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v5, p3

    move/from16 v2, v20

    goto :goto_6

    :cond_a
    :goto_7
    if-nez v12, :cond_c

    .line 34
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v8, v4

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    move-object/from16 v5, p3

    move/from16 v4, v17

    goto/16 :goto_b

    .line 35
    :cond_c
    :goto_8
    invoke-virtual {v6, v13}, Le/a/o5/h1;->moveToPosition(I)Z

    .line 36
    invoke-virtual {v1, v6}, Le/a/o5/i1;->a(Le/a/o5/h1;)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    .line 37
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 38
    iget-object v5, v2, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    if-nez v4, :cond_d

    const-wide/16 v8, 0x0

    goto :goto_9

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_9
    iput-wide v8, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookHash:J

    .line 39
    iget-object v4, v2, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v4, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v3, v4, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookLookupKey:Ljava/lang/String;

    if-nez v12, :cond_f

    move/from16 v4, v17

    .line 40
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v5, p3

    .line 43
    iget-object v8, v5, Le/a/o5/i1$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v5}, Le/a/o5/i1$b;->b()V

    .line 45
    iget-object v3, v5, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v5}, Le/a/o5/i1$b;->b()V

    goto :goto_a

    :cond_e
    move-object/from16 v5, p3

    .line 47
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 48
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    .line 49
    iget-object v8, v5, Le/a/o5/i1$b;->b:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v5}, Le/a/o5/i1$b;->b()V

    goto :goto_a

    :cond_f
    move-object/from16 v5, p3

    move/from16 v4, v17

    .line 51
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 52
    iget-object v3, v5, Le/a/o5/i1$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v5}, Le/a/o5/i1$b;->b()V

    .line 54
    :cond_10
    :goto_a
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v2

    if-nez v2, :cond_11

    add-int/lit8 v9, v16, 0x1

    goto :goto_c

    :cond_11
    :goto_b
    move/from16 v9, v16

    :goto_c
    if-nez v12, :cond_13

    .line 55
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_e

    :cond_12
    :goto_d
    move/from16 v20, v2

    move v15, v4

    move v4, v8

    move/from16 v16, v9

    .line 56
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v3, v5, Le/a/o5/i1$b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v5}, Le/a/o5/i1$b;->b()V

    .line 59
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v9, v16

    :cond_13
    :goto_e
    move v8, v4

    move v4, v15

    move/from16 v2, v20

    const/4 v3, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 60
    :try_start_2
    iget-object v0, v6, Le/a/o5/h1;->w:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v0

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v2
.end method

.method public e()V
    .locals 8

    const-string v0, "Result"

    .line 1
    invoke-virtual {p0}, Le/a/o5/i1;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/o5/i1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/b0/g/a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "1"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/o5/i1;->c:Le/a/p5/m0;

    const-string v3, "PhoneBookSync"

    invoke-interface {v2, v3}, Le/a/p5/m0;->a(Ljava/lang/String;)Le/a/p5/l0;

    move-result-object v2

    const-string v3, "initialContactsSyncComplete"

    .line 6
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v6, "IsInitialSync"

    invoke-interface {v2, v6, v4}, Le/a/p5/l0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v4, p0, Le/a/o5/i1;->b:Le/a/k3/j/j;

    invoke-virtual {v4}, Le/a/k3/j/j;->h()Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "has_phone_number=?"

    invoke-virtual {p0, v4, v6, v7, v1}, Le/a/o5/i1;->d(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Le/a/o5/i1$c;

    move-result-object v1

    .line 9
    invoke-static {v3}, Le/a/j4/b/a/h;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 10
    invoke-static {v3, v5}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 11
    iget-object v3, p0, Le/a/o5/i1;->e:Le/a/a/k/a/l;

    invoke-interface {v3}, Le/a/a/k/a/l;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iget-object v3, p0, Le/a/o5/i1;->e:Le/a/a/k/a/l;

    invoke-interface {v3}, Le/a/a/k/a/l;->b()V

    .line 13
    :cond_2
    iget-object v3, p0, Le/a/o5/i1;->f:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->z()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    iget-object v3, p0, Le/a/o5/i1;->f:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->E()V

    :cond_3
    const-string v3, "Success"

    .line 15
    invoke-interface {v2, v0, v3}, Le/a/p5/l0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ContactHasNoNumberCount"

    .line 16
    iget v5, v1, Le/a/o5/i1$c;->c:I

    .line 17
    invoke-interface {v2, v3, v5}, Le/a/p5/l0;->a(Ljava/lang/String;I)V

    const-string v3, "SyncedContactCount"

    .line 18
    iget v1, v1, Le/a/o5/i1$c;->b:I

    .line 19
    invoke-interface {v2, v3, v1}, Le/a/p5/l0;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    .line 20
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v4, :cond_4

    .line 21
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_5
    const-string v3, "Phone book sync failed"

    .line 22
    invoke-static {v1, v3}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Failure"

    .line 23
    invoke-interface {v2, v0, v1}, Le/a/p5/l0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 24
    :cond_5
    :goto_1
    invoke-interface {v2}, Le/a/p5/l0;->stop()V

    return-void

    :goto_2
    invoke-interface {v2}, Le/a/p5/l0;->stop()V

    .line 25
    throw v0
.end method

.method public f(J)Landroid/net/Uri;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p0}, Le/a/o5/i1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v5, "contact_id=?"

    move-object v1, p0

    move-wide v3, p1

    invoke-virtual/range {v1 .. v6}, Le/a/o5/i1;->h(Landroid/net/Uri;JLjava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Le/a/o5/i1;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Le/a/o5/i1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    const-string v1, "data"

    .line 4
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Le/a/o5/i1;->h(Landroid/net/Uri;JLjava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final h(Landroid/net/Uri;JLjava/lang/String;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Bad contactId, "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/o5/i1;->b:Le/a/k3/j/j;

    .line 3
    iget-object v2, v0, Le/a/k3/j/f;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "tc_id"

    const-string v4, "contact_phonebook_id"

    const-string v5, "contact_phonebook_hash"

    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 4
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v6, p3

    const/4 v7, 0x0

    const-string v5, "contact_phonebook_id=?"

    .line 5
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 6
    :try_start_0
    invoke-virtual {p0, p2, p1, p4, p5}, Le/a/o5/i1;->d(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Le/a/o5/i1$c;

    move-result-object p1

    .line 7
    iget-object p1, p1, Le/a/o5/i1$c;->a:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-eq p4, v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object p4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_5

    .line 11
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
.end method
