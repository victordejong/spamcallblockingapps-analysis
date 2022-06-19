.class public Le/a/h0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h0/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h0/k$a;,
        Le/a/h0/k$b;
    }
.end annotation


# static fields
.field public static final o:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/h0/m;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/q2/a;

.field public final e:Le/a/b0/q/z;

.field public final f:Le/a/u3/g;

.field public final g:Le/a/b0/e/l;

.field public final h:Landroid/telephony/TelephonyManager;

.field public final i:Le/a/p5/a0;

.field public final j:Le/a/l/p2/v0;

.field public k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Le/a/h0/e;

.field public m:Lcom/truecaller/clevertap/CleverTapManager;

.field public n:Le/a/c/h/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "91140\\d{7}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/a/h0/k;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/a/h0/m;Le/a/r2/f;Le/a/q2/a;Le/a/b0/q/z;Le/a/u3/g;Le/a/b0/e/l;Landroid/telephony/TelephonyManager;Le/a/p5/a0;Le/a/l/p2/v0;Le/a/r2/f;Le/a/h0/e;Lcom/truecaller/clevertap/CleverTapManager;Le/a/c/h/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/h0/m;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/q2/a;",
            "Le/a/b0/q/z;",
            "Le/a/u3/g;",
            "Le/a/b0/e/l;",
            "Landroid/telephony/TelephonyManager;",
            "Le/a/p5/a0;",
            "Le/a/l/p2/v0;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/h0/e;",
            "Lcom/truecaller/clevertap/CleverTapManager;",
            "Le/a/c/h/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/h0/k;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    .line 4
    iput-object p3, p0, Le/a/h0/k;->c:Le/a/r2/f;

    .line 5
    iput-object p4, p0, Le/a/h0/k;->d:Le/a/q2/a;

    .line 6
    iput-object p5, p0, Le/a/h0/k;->e:Le/a/b0/q/z;

    .line 7
    iput-object p6, p0, Le/a/h0/k;->f:Le/a/u3/g;

    .line 8
    iput-object p7, p0, Le/a/h0/k;->g:Le/a/b0/e/l;

    .line 9
    iput-object p8, p0, Le/a/h0/k;->h:Landroid/telephony/TelephonyManager;

    .line 10
    iput-object p9, p0, Le/a/h0/k;->i:Le/a/p5/a0;

    .line 11
    iput-object p10, p0, Le/a/h0/k;->j:Le/a/l/p2/v0;

    .line 12
    iput-object p11, p0, Le/a/h0/k;->k:Le/a/r2/f;

    .line 13
    iput-object p12, p0, Le/a/h0/k;->l:Le/a/h0/e;

    .line 14
    iput-object p13, p0, Le/a/h0/k;->m:Lcom/truecaller/clevertap/CleverTapManager;

    .line 15
    iput-object p14, p0, Le/a/h0/k;->n:Le/a/c/h/e;

    return-void
.end method

.method public static C(Le/a/r2/f;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "value"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/l0/c;

    invoke-interface {p0, p1}, Le/a/l0/c;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p0

    invoke-virtual {p0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Le/a/h0/w/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h0/w/a;

    .line 3
    iget-object v5, v4, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    sget-object v6, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    if-nez p4, :cond_3

    .line 4
    iget v9, v4, Le/a/h0/w/a;->c:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :cond_3
    :goto_2
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 5
    iget v5, v5, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    sget-object v6, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->CONTAIN:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget v6, v6, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    if-ne v5, v6, :cond_4

    .line 6
    invoke-static/range {p3 .. p3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, Le/a/h0/w/a;->e:Ljava/lang/String;

    iget-object v6, v4, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget v6, v6, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    move-object/from16 v7, p3

    invoke-virtual {v0, v7, v5, v6}, Le/a/h0/k;->G(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7
    new-instance v5, Lcom/truecaller/blocking/FilterMatch;

    iget-wide v9, v4, Le/a/h0/w/a;->a:J

    sget-object v11, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    sget-object v12, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_WILDCARD:Lcom/truecaller/blocking/ActionSource;

    iget-object v13, v4, Le/a/h0/w/a;->d:Ljava/lang/String;

    iget v14, v4, Le/a/h0/w/a;->c:I

    const/4 v15, 0x0

    iget-object v6, v4, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v4, v4, Le/a/h0/w/a;->h:Ljava/lang/Long;

    .line 8
    invoke-static {v4}, Le/a/p5/s0/g;->L1(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    move-object v8, v5

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v18}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    return-object v2

    :cond_4
    move-object/from16 v7, p3

    .line 11
    :cond_5
    invoke-static/range {p1 .. p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v4, Le/a/h0/w/a;->e:Ljava/lang/String;

    iget-object v6, v4, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget v6, v6, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    move-object/from16 v8, p1

    invoke-virtual {v0, v8, v5, v6}, Le/a/h0/k;->G(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v9, p2

    goto :goto_4

    :cond_7
    move-object/from16 v8, p1

    .line 12
    :goto_3
    invoke-static/range {p2 .. p2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v4, Le/a/h0/w/a;->e:Ljava/lang/String;

    iget-object v6, v4, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget v6, v6, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    move-object/from16 v9, p2

    invoke-virtual {v0, v9, v5, v6}, Le/a/h0/k;->G(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    :goto_4
    new-instance v5, Lcom/truecaller/blocking/FilterMatch;

    iget-wide v11, v4, Le/a/h0/w/a;->a:J

    sget-object v13, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    sget-object v14, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_WILDCARD:Lcom/truecaller/blocking/ActionSource;

    iget-object v15, v4, Le/a/h0/w/a;->d:Ljava/lang/String;

    iget v6, v4, Le/a/h0/w/a;->c:I

    const/16 v17, 0x0

    iget-object v10, v4, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v4, v4, Le/a/h0/w/a;->h:Ljava/lang/Long;

    .line 14
    invoke-static {v4}, Le/a/p5/s0/g;->L1(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    move-object v4, v10

    move-object v10, v5

    move/from16 v16, v6

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v20}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    return-object v2

    :cond_8
    move-object/from16 v9, p2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v7, p3

    goto/16 :goto_0

    :cond_a
    return-object v2
.end method

.method public final B(Ljava/lang/String;)Le/a/h0/x/b;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Le/a/h0/k;->k:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/c;

    invoke-interface {v1, p1}, Le/a/l0/c;->w(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/HistoryEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v1, p0, Le/a/h0/k;->l:Le/a/h0/e;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    new-instance v1, Le/a/h0/x/b;

    invoke-direct {v1}, Le/a/h0/x/b;-><init>()V

    .line 5
    iget-wide v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 6
    iput-wide v2, v1, Le/a/h0/x/b;->b:J

    .line 7
    iget-wide v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 8
    iput-wide v2, v1, Le/a/h0/x/b;->c:J

    .line 9
    iget v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    if-ne v2, v3, :cond_2

    const-string v2, "MISSED"

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported direction: "

    invoke-static {v0, v2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v2, "OUTGOING"

    goto :goto_0

    :cond_4
    const-string v2, "INCOMING"

    .line 11
    :goto_0
    iput-object v2, v1, Le/a/h0/x/b;->a:Ljava/lang/String;

    .line 12
    iget v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const-string v5, "NONE"

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_5

    const-string v2, "UNKNOWN"

    goto :goto_1

    :cond_5
    const-string v2, "MUTED"

    goto :goto_1

    :cond_6
    const-string v2, "HUNG_UP"

    goto :goto_1

    :cond_7
    move-object v2, v5

    .line 13
    :goto_1
    iput-object v2, v1, Le/a/h0/x/b;->d:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    const-string v2, "Unexpected FILTER_SOURCE: "

    if-nez p1, :cond_8

    goto :goto_2

    .line 15
    :cond_8
    :try_start_1
    invoke-static {p1}, Lcom/truecaller/blocking/ActionSource;->valueOf(Ljava/lang/String;)Lcom/truecaller/blocking/ActionSource;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    const-string v0, "SPAMMER_FROM_SEARCH"

    goto :goto_2

    :pswitch_1
    const-string v0, "WHITELIST"

    goto :goto_2

    :pswitch_2
    const-string v0, "BLACKLISTED_NUMBER_SERIE"

    goto :goto_2

    :pswitch_3
    const-string v0, "COUNTRY_BLOCK"

    goto :goto_2

    :pswitch_4
    const-string v0, "BLACKLISTED_NUMBER"

    goto :goto_2

    :pswitch_5
    const-string v0, "TOP_SPAMMER_LIST"

    goto :goto_2

    :pswitch_6
    const-string v0, "REGISTERED_TELEMARKETERS"

    goto :goto_2

    :pswitch_7
    const-string v0, "NEIGHBOUR_SPOOFING"

    goto :goto_2

    :pswitch_8
    const-string v0, "FOREIGN_NUMBER"

    goto :goto_2

    :pswitch_9
    const-string v0, "NON_PHONEBOOK"

    goto :goto_2

    :pswitch_a
    const-string v0, "HIDDEN_NUMBER"

    goto :goto_2

    :pswitch_b
    move-object v0, v5

    goto :goto_2

    .line 18
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 19
    :goto_2
    iput-object v0, v1, Le/a/h0/x/b;->e:Ljava/lang/String;

    move-object v0, v1

    :catch_1
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public final D(Landroid/content/ContentValues;Ljava/util/List;)Le/a/h0/x/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/List<",
            "Le/a/h0/x/c;",
            ">;)",
            "Le/a/h0/x/c;"
        }
    .end annotation

    const-string v0, "value"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "tracking_type"

    .line 2
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "IM_ID"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "*"

    .line 3
    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h0/x/c;

    .line 5
    iget-object v2, p2, Le/a/h0/x/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p2

    :cond_3
    return-object v1
.end method

.method public final varargs E(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final F(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/k;->i:Le/a/p5/a0;

    const-string v1, "android.permission.READ_CONTACTS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a/l4/k;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    new-instance v0, Le/a/h0/k$b;

    invoke-direct {v0, p2, p3}, Le/a/h0/k$b;-><init>(Ljava/lang/String;I)V

    .line 2
    iget-object p2, v0, Le/a/h0/k$b;->a:Ljava/util/regex/Pattern;

    if-eqz p2, :cond_2

    .line 3
    invoke-static {p1}, Le/a/b0/q/b0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p3, v0, Le/a/h0/k$b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, v0, Le/a/h0/k$b;->a:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final H()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h0/w/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Le/a/h0/w/c;

    iget-object v3, p0, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v2, v3}, Le/a/h0/w/c;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v2}, Le/a/h0/w/c;->getFilter()Le/a/h0/w/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/database/CursorWrapper;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/CursorWrapper;->close()V

    .line 6
    :cond_1
    throw v0
.end method

.method public final I(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/h0/k;->f:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->L3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xf7

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    iget-object v1, p0, Le/a/h0/k;->e:Le/a/b0/q/z;

    invoke-interface {v1, v0}, Le/a/b0/q/z;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Le/a/h0/k;->K(Ljava/lang/String;)Z

    move-result v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Le/a/h0/k$a;->a([Ljava/lang/String;)Le/a/h0/k$a;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v2}, Le/a/h0/k;->p(Ljava/util/List;Le/a/h0/k$a;I)Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 8
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "foreign"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "topSpammer"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Le/a/h0/k;->m:Lcom/truecaller/clevertap/CleverTapManager;

    const-string v0, "PhoneNumberBlocked"

    invoke-interface {p1, v0, v1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public final varargs J([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, p0, Le/a/h0/k;->e:Le/a/b0/q/z;

    invoke-interface {v3, v2}, Le/a/b0/q/z;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final K(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h0/k;->g:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/h0/k;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/h0/k;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_1

    .line 4
    aget-object v2, v4, v1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/lit8 p1, v5, 0x1

    return p1
.end method

.method public a()Z
    .locals 14

    const-string v0, "don\'t call uploadFilters() on main thread, it is a blocking call"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->notOnMainThread([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v7, 0x1

    .line 4
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v5, v8

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v3, 0x0

    const-string v4, "(sync_state=? OR sync_state=?)"

    const/4 v6, 0x0

    .line 6
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {v0, v1}, Le/a/b0/i/f/a;->d(Landroid/database/Cursor;Ljava/util/Collection;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " filters needing sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "sync_state"

    const-string v9, "server_id"

    if-eqz v5, :cond_9

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v10, "value"

    .line 14
    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "tracking_type"

    .line 15
    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 16
    invoke-static {v11}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v11, "OTHER"

    :cond_1
    const-string v12, "IM_ID"

    .line 17
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 18
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    const-string v12, "entity_type"

    .line 19
    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 20
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->fromValue(I)Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    move-result-object v12

    const-string v13, "history_event_id"

    .line 21
    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_7

    .line 23
    new-instance v6, Le/a/h0/x/c;

    invoke-direct {v6}, Le/a/h0/x/c;-><init>()V

    .line 24
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Le/a/h0/x/c;->a:Ljava/lang/String;

    .line 25
    iput-object v10, v6, Le/a/h0/x/c;->b:Ljava/lang/String;

    const-string v9, "label"

    .line 26
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Le/a/h0/x/c;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v13}, Le/a/h0/k;->B(Ljava/lang/String;)Le/a/h0/x/b;

    move-result-object v9

    iput-object v9, v6, Le/a/h0/x/c;->j:Le/a/h0/x/b;

    const-string v9, "rule"

    .line 28
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v10

    .line 29
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_5

    if-eq v10, v7, :cond_4

    new-array v5, v7, [Ljava/lang/String;

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown client filter rule "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v9, "WHITELIST"

    .line 31
    iput-object v9, v6, Le/a/h0/x/c;->d:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v9, "BLACKLIST"

    .line 32
    iput-object v9, v6, Le/a/h0/x/c;->d:Ljava/lang/String;

    .line 33
    :goto_2
    iput-object v11, v6, Le/a/h0/x/c;->e:Ljava/lang/String;

    const-string v9, "tracking_source"

    .line 34
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Le/a/h0/x/c;->f:Ljava/lang/String;

    .line 35
    sget-object v9, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    if-eq v12, v9, :cond_6

    .line 36
    iget v9, v12, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->value:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v6, Le/a/h0/x/c;->g:Ljava/lang/Integer;

    :cond_6
    const-string v9, "category_id"

    .line 37
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v6, Le/a/h0/x/c;->h:Ljava/lang/Long;

    const-string v9, "spam_version"

    .line 38
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Le/a/h0/x/c;->i:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :cond_7
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "_id"

    .line 41
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 42
    invoke-static {v6}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 43
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    new-instance v9, Ln3/k/h/c;

    invoke-direct {v9, v5, v6}, Ln3/k/h/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 46
    :cond_8
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Le/a/h0/k;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 47
    :cond_9
    invoke-static {}, Le/a/m0/a1$k;->U()Le/a/h0/x/a;

    move-result-object v4

    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 49
    invoke-interface {v4, v2}, Le/a/h0/x/a;->a(Ljava/util/List;)Lx3/b;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Lx3/b;->execute()Lx3/a0;

    move-result-object v2

    .line 51
    iget-object v2, v2, Lx3/a0;->b:Ljava/lang/Object;

    .line 52
    check-cast v2, Le/a/h0/x/d;

    if-eqz v2, :cond_c

    .line 53
    iget-object v5, v2, Le/a/h0/x/d;->a:Ljava/util/List;

    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v8

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 55
    iget-object v11, v2, Le/a/h0/x/d;->a:Ljava/util/List;

    invoke-virtual {p0, v10, v11}, Le/a/h0/k;->D(Landroid/content/ContentValues;Ljava/util/List;)Le/a/h0/x/c;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    iget-object v11, v11, Le/a/h0/x/c;->a:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v11, p0, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    :cond_a
    move v5, v7

    goto :goto_3

    :cond_b
    move v8, v5

    goto :goto_4

    :cond_c
    move v8, v7

    :cond_d
    :goto_4
    const-string v1, ","

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/k/h/c;

    if-eqz v2, :cond_e

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 61
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    :goto_6
    iget-object v6, v6, Ln3/k/h/c;->b:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    if-eqz v2, :cond_10

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_10
    const-string v1, ""

    .line 64
    :goto_7
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 65
    invoke-interface {v4, v1}, Le/a/h0/x/a;->b(Ljava/lang/String;)Lx3/b;

    move-result-object v1

    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/k/h/c;

    .line 69
    iget-object v3, v3, Ln3/k/h/c;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 70
    :cond_11
    invoke-virtual {p0, v1}, Le/a/h0/k;->q(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_12
    move v7, v8

    goto :goto_a

    :catchall_0
    move-exception v1

    goto :goto_b

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    .line 71
    :goto_9
    :try_start_2
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :cond_13
    :goto_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v7

    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 73
    throw v1

    :cond_14
    :goto_c
    if-eqz v0, :cond_15

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_15
    return v8
.end method

.method public b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    move-object v9, p0

    .line 1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 3
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 5
    invoke-static {v12}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const-string v1, ""

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    const/4 v4, 0x1

    .line 6
    sget-object v6, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v7, 0x0

    .line 7
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    move-object v0, p0

    move-object v1, v12

    move-object v2, p2

    move-object/from16 v5, p4

    .line 9
    invoke-virtual/range {v0 .. v8}, Le/a/h0/k;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move/from16 v5, p6

    .line 10
    invoke-virtual/range {v0 .. v5}, Le/a/h0/k;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v10, v0}, Le/a/h0/k;->l(Ljava/util/Collection;Z)V

    .line 13
    iget-object v0, v9, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    .line 14
    :cond_3
    iget-object v0, v9, Le/a/h0/k;->n:Le/a/c/h/e;

    invoke-interface {v0}, Le/a/c/h/e;->b()V

    .line 15
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "rule=1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Le/a/h0/x/e;

    invoke-direct {v0}, Le/a/h0/x/e;-><init>()V

    .line 3
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->u()Z

    move-result v2

    iput v2, v0, Le/a/h0/x/e;->a:I

    .line 4
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->r()Z

    move-result v2

    iput v2, v0, Le/a/h0/x/e;->b:I

    .line 5
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->b()Z

    move-result v2

    iput v2, v0, Le/a/h0/x/e;->c:I

    .line 6
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->x()Z

    move-result v2

    iput v2, v0, Le/a/h0/x/e;->d:I

    .line 7
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->f()Z

    move-result v2

    iput v2, v0, Le/a/h0/x/e;->e:I

    .line 8
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->s()Z

    move-result v2

    iput v2, v0, Le/a/h0/x/e;->g:I

    .line 9
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->i()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Le/a/h0/x/e;->f:I

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Le/a/m0/a1$k;->U()Le/a/h0/x/a;

    move-result-object v2

    invoke-interface {v2, v0}, Le/a/h0/x/a;->d(Le/a/h0/x/e;)Lx3/b;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v0, v1}, Le/a/h0/m;->c(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public e(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v6}, Le/a/h0/k;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/truecaller/blocking/FilterMatch;
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2, p6}, Le/a/h0/k;->r(Ljava/lang/String;Ljava/lang/String;Z)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 2
    :cond_0
    new-instance p3, Le/a/h0/b;

    invoke-direct {p3, p0, p1}, Le/a/h0/b;-><init>(Le/a/h0/k;Ljava/lang/String;)V

    invoke-static {p3}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p3

    const-string v0, ""

    if-nez p1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-nez p2, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v3, p2

    .line 3
    :goto_1
    invoke-static {p4}, Le/a/b0/q/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p2, v2

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {v2, p1}, Le/a/b0/q/b0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    if-nez p1, :cond_4

    move-object p1, v3

    goto :goto_3

    .line 5
    :cond_4
    invoke-static {v3, p1}, Le/a/b0/q/b0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_3
    invoke-static {v2, p2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x1

    const/4 v8, 0x0

    if-eqz p4, :cond_6

    invoke-static {v3, p1}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_4

    :cond_5
    move p4, v8

    goto :goto_5

    :cond_6
    :goto_4
    move p4, v0

    .line 7
    :goto_5
    invoke-virtual {p0}, Le/a/h0/k;->H()Ljava/util/List;

    move-result-object v7

    .line 8
    invoke-virtual {p0, p2, p1, v7}, Le/a/h0/k;->y(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v1

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    if-eqz p4, :cond_8

    .line 9
    invoke-virtual {p0, v2, v3, v7}, Le/a/h0/k;->y(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p4

    if-eqz p4, :cond_8

    return-object p4

    :cond_8
    if-eqz p6, :cond_9

    .line 10
    invoke-virtual {p0, p3}, Le/a/h0/k;->v(Ls1/g;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 11
    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->m:Lcom/truecaller/blocking/FilterMatch;

    return-object p1

    :cond_9
    const/4 p4, 0x4

    new-array v1, p4, [Ljava/lang/String;

    aput-object p2, v1, v8

    aput-object p1, v1, v0

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 12
    invoke-virtual {p0, v1}, Le/a/h0/k;->J([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p6, :cond_a

    .line 13
    invoke-virtual {p0, v1, p3}, Le/a/h0/k;->s(Ljava/lang/String;Ls1/g;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 14
    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->n:Lcom/truecaller/blocking/FilterMatch;

    return-object p1

    :cond_a
    if-eqz p6, :cond_b

    .line 15
    invoke-virtual {p0, p2, p3}, Le/a/h0/k;->u(Ljava/lang/String;Ls1/g;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 16
    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->o:Lcom/truecaller/blocking/FilterMatch;

    return-object p1

    :cond_b
    if-eqz p6, :cond_c

    .line 17
    invoke-virtual {p0, p2, p3}, Le/a/h0/k;->t(Ljava/lang/String;Ls1/g;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 18
    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->p:Lcom/truecaller/blocking/FilterMatch;

    return-object p1

    :cond_c
    if-eqz v1, :cond_d

    .line 19
    invoke-virtual {p0, v1, v7}, Le/a/h0/k;->x(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p3

    if-eqz p3, :cond_d

    return-object p3

    :cond_d
    new-array p3, p4, [Ljava/lang/String;

    aput-object p2, p3, v8

    aput-object p1, p3, v0

    aput-object v2, p3, v4

    aput-object v3, p3, v5

    const/4 p1, 0x0

    if-eqz p6, :cond_11

    const p2, 0x7fffffff

    .line 20
    invoke-virtual {p0, p5, p2, v7, p3}, Le/a/h0/k;->w(ZILjava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 21
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, v0, :cond_f

    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/truecaller/blocking/FilterMatch;

    .line 23
    invoke-virtual {p0, p4, v0}, Le/a/h0/k;->m(Lcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p6

    if-eqz p6, :cond_e

    .line 24
    iget-object p6, p6, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 25
    sget-object v1, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne p6, v1, :cond_e

    goto :goto_7

    .line 26
    :cond_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_10

    move-object p2, p1

    goto :goto_6

    :cond_10
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/blocking/FilterMatch;

    :goto_6
    invoke-virtual {p0, p2, v0}, Le/a/h0/k;->m(Lcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p4

    goto :goto_7

    .line 27
    :cond_11
    invoke-virtual {p0, p5, v0, v7, p3}, Le/a/h0/k;->w(ZILjava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 28
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_12

    move-object p4, p1

    goto :goto_7

    :cond_12
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/truecaller/blocking/FilterMatch;

    :goto_7
    if-eqz p4, :cond_13

    return-object p4

    :cond_13
    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p5

    .line 29
    invoke-virtual/range {v1 .. v7}, Le/a/h0/k;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 30
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    :goto_8
    if-eqz p1, :cond_15

    return-object p1

    .line 31
    :cond_15
    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->j:Lcom/truecaller/blocking/FilterMatch;

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    sget-object v5, Le/a/l5/a/l;->j:Lorg/apache/avro/Schema;

    new-instance v5, Le/a/l5/a/l$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Le/a/l5/a/l$b;-><init>(Le/a/l5/a/l$a;)V

    .line 2
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v5, v7, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 3
    iput-object v0, v5, Le/a/l5/a/l$b;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 5
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    const/4 v10, 0x5

    aget-object v7, v7, v10

    invoke-virtual {v5, v7, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 6
    iput-object v3, v5, Le/a/l5/a/l$b;->d:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v9, v7, v10

    .line 8
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    const/4 v10, 0x6

    aget-object v7, v7, v10

    invoke-virtual {v5, v7, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v4, v5, Le/a/l5/a/l$b;->e:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v9, v7, v10

    const-string v7, "REG_EXP"

    .line 11
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v10, "COUNTRY_CODE"

    if-nez v7, :cond_c

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_9

    .line 12
    :cond_0
    sget-object v2, Le/a/l5/a/x3;->e:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/x3$b;

    invoke-direct {v2, v6}, Le/a/l5/a/x3$b;-><init>(Le/a/l5/a/x3$a;)V

    .line 13
    invoke-virtual/range {p0 .. p1}, Le/a/h0/k;->e(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v7

    .line 14
    iget-object v10, v7, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 15
    sget-object v11, Lcom/truecaller/blocking/FilterAction;->ALLOW_WHITELISTED:Lcom/truecaller/blocking/FilterAction;

    const/4 v12, 0x0

    if-ne v10, v11, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v12

    .line 16
    :goto_0
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v11, v13}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-boolean v10, v2, Le/a/l5/a/x3$b;->c:Z

    .line 18
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v10

    aput-boolean v9, v10, v8

    .line 19
    iget-object v8, v7, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 20
    sget-object v10, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-eq v8, v10, :cond_3

    sget-object v10, Lcom/truecaller/blocking/FilterAction;->FILTER_DISABLED:Lcom/truecaller/blocking/FilterAction;

    if-ne v8, v10, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v2, v12}, Le/a/l5/a/x3$b;->c(Z)Le/a/l5/a/x3$b;

    .line 22
    invoke-virtual {v2, v12}, Le/a/l5/a/x3$b;->b(Z)Le/a/l5/a/x3$b;

    goto :goto_2

    .line 23
    :cond_3
    :goto_1
    invoke-virtual {v7}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v8

    invoke-virtual {v2, v8}, Le/a/l5/a/x3$b;->c(Z)Le/a/l5/a/x3$b;

    .line 24
    invoke-virtual {v7}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v7

    invoke-virtual {v2, v7}, Le/a/l5/a/x3$b;->b(Z)Le/a/l5/a/x3$b;

    .line 25
    :goto_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Le/a/b0/q/b0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v0, v6

    :goto_3
    if-nez v0, :cond_4

    goto :goto_6

    .line 26
    :cond_4
    iget-object v7, v1, Le/a/h0/k;->a:Landroid/content/Context;

    .line 27
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 28
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 29
    invoke-static {}, Le/a/m0/a1$a;->c()Landroid/net/Uri;

    move-result-object v14

    new-array v7, v9, [Ljava/lang/String;

    aput-object v0, v7, v12

    .line 30
    array-length v8, v7

    if-nez v8, :cond_5

    move-object/from16 v17, v6

    goto :goto_4

    :cond_5
    move-object/from16 v17, v7

    :goto_4
    const/16 v18, 0x0

    const/4 v15, 0x0

    const-string v16, "data1=? AND data_type=4"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 31
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 32
    new-instance v8, Le/a/k3/j/d;

    invoke-direct {v8, v7}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 33
    invoke-virtual {v8, v9}, Le/a/k3/j/d;->h(Z)V

    .line 34
    invoke-virtual {v8, v7}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v10

    .line 35
    :cond_6
    invoke-virtual {v8, v7, v10}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 36
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 37
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->b1()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_7
    move-object v10, v6

    .line 38
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 39
    throw v0

    :cond_8
    :goto_6
    move-object v10, v6

    :goto_7
    if-eqz v10, :cond_9

    .line 40
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v7

    if-eqz v7, :cond_9

    move v12, v9

    .line 41
    :cond_9
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput-boolean v12, v2, Le/a/l5/a/x3$b;->d:Z

    .line 43
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v9, v7, v8

    const-string v7, "+"

    .line 44
    invoke-static {v0, v7}, Lw3/c/a/a/a/h;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 45
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v7, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->NUMERIC:Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;

    invoke-virtual {v7}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 47
    :cond_a
    sget-object v7, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->ALPHANUMERIC:Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;

    invoke-virtual {v7}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->getValue()Ljava/lang/String;

    move-result-object v7

    :goto_8
    const-string v8, "address"

    .line 48
    invoke-virtual {v5, v8}, Le/a/l5/a/l$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/l$b;

    .line 49
    invoke-virtual {v5, v0}, Le/a/l5/a/l$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l$b;

    .line 50
    invoke-virtual {v2}, Le/a/l5/a/x3$b;->a()Le/a/l5/a/x3;

    move-result-object v0

    invoke-virtual {v5, v0}, Le/a/l5/a/l$b;->c(Le/a/l5/a/x3;)Le/a/l5/a/l$b;

    if-eqz p5, :cond_b

    if-eqz v10, :cond_b

    .line 51
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_b
    invoke-virtual {v5, v6}, Le/a/l5/a/l$b;->d(Ljava/lang/Integer;)Le/a/l5/a/l$b;

    goto :goto_b

    .line 52
    :cond_c
    :goto_9
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->COUNTRY:Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;

    invoke-virtual {v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "country"

    goto :goto_a

    .line 54
    :cond_d
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->WILDCARD:Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;

    invoke-virtual {v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wildcard"

    :goto_a
    move-object v7, v0

    .line 55
    invoke-virtual {v5, v2}, Le/a/l5/a/l$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/l$b;

    .line 56
    invoke-virtual {v5, v6}, Le/a/l5/a/l$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l$b;

    .line 57
    invoke-virtual {v5, v6}, Le/a/l5/a/l$b;->c(Le/a/l5/a/x3;)Le/a/l5/a/l$b;

    .line 58
    invoke-virtual {v5, v6}, Le/a/l5/a/l$b;->d(Ljava/lang/Integer;)Le/a/l5/a/l$b;

    .line 59
    :goto_b
    :try_start_2
    iget-object v0, v1, Le/a/h0/k;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-virtual {v5}, Le/a/l5/a/l$b;->a()Le/a/l5/a/l;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_2
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 61
    :goto_c
    iget-object v0, v1, Le/a/h0/k;->d:Le/a/q2/a;

    const-string v2, "action"

    .line 62
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v2, v3, v7, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public h(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "Ljava/lang/Long;",
            ")I"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p5

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v0, p2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    .line 3
    iget-object v2, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast v2, Ls1/k;

    .line 5
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    .line 7
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    .line 9
    invoke-static {v13}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "PHONE_NUMBER"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {p0, v13}, Le/a/h0/k;->I(Ljava/lang/String;)V

    :cond_1
    const-string v3, "OTHER"

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v14, v0

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    iget-object v0, v9, Le/a/h0/k;->e:Le/a/b0/q/z;

    invoke-interface {v0, v13}, Le/a/b0/q/z;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0, v13}, Le/a/h0/k;->I(Ljava/lang/String;)V

    move-object v14, v1

    goto :goto_2

    :cond_4
    move-object v14, v3

    .line 15
    :goto_2
    iget-object v0, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    sget-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const-string v2, ""

    if-ne v10, v1, :cond_6

    if-nez v0, :cond_5

    move-object v3, v2

    goto :goto_3

    :cond_5
    move-object v3, v0

    :goto_3
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 18
    invoke-virtual/range {v0 .. v8}, Le/a/h0/k;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    if-nez v0, :cond_7

    move-object v3, v2

    goto :goto_4

    :cond_7
    move-object v3, v0

    :goto_4
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v10, v13}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->formatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 21
    sget-object v6, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "REG_EXP"

    move-object v0, p0

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v8}, Le/a/h0/k;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    .line 22
    iget v1, v10, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wildcard_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const-string v3, "block"

    move-object v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Le/a/h0/k;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v14

    goto/16 :goto_0

    .line 25
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v11, v0}, Le/a/h0/k;->l(Ljava/util/Collection;Z)V

    .line 27
    iget-object v0, v9, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    .line 28
    :cond_9
    iget-object v0, v9, Le/a/h0/k;->n:Le/a/c/h/e;

    invoke-interface {v0}, Le/a/c/h/e;->b()V

    .line 29
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public i(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "Ljava/lang/Long;",
            ")I"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/k;

    .line 3
    new-instance v3, Ls1/k;

    new-instance v4, Ls1/k;

    .line 4
    iget-object v5, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v5, Ljava/lang/String;

    move-object v6, p3

    invoke-direct {v4, v5, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 8
    invoke-virtual/range {v0 .. v7}, Le/a/h0/k;->h(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/a/h0/k;->r(Ljava/lang/String;Ljava/lang/String;Z)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/h0/k;->H()Ljava/util/List;

    move-result-object v8

    const v1, 0x7fffffff

    .line 5
    invoke-virtual {p0, p1, p2, v1, v8}, Le/a/h0/k;->z(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    .line 7
    invoke-virtual {p0, v4, v1, v8, v3}, Le/a/h0/k;->w(ZILjava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/blocking/FilterMatch;

    .line 9
    invoke-virtual {p0, v3, p3}, Le/a/h0/k;->m(Lcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    aput-object p1, v1, v5

    .line 10
    invoke-virtual {p0, v1}, Le/a/h0/k;->J([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0, v1, v8}, Le/a/h0/k;->x(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 13
    invoke-virtual/range {v2 .. v8}, Le/a/h0/k;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 15
    new-instance p2, Le/a/h0/c;

    invoke-direct {p2, p0, p1}, Le/a/h0/c;-><init>(Le/a/h0/k;Ljava/lang/String;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    if-eqz p3, :cond_3

    .line 16
    invoke-virtual {p0, p2}, Le/a/h0/k;->v(Ls1/g;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    sget-object v2, Lcom/truecaller/blocking/FilterMatch;->m:Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 18
    invoke-virtual {p0, v1, p2}, Le/a/h0/k;->s(Ljava/lang/String;Ls1/g;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    sget-object v1, Lcom/truecaller/blocking/FilterMatch;->n:Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p3, :cond_5

    .line 20
    invoke-virtual {p0, p1, p2}, Le/a/h0/k;->u(Ljava/lang/String;Ls1/g;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    sget-object v1, Lcom/truecaller/blocking/FilterMatch;->o:Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p3, :cond_6

    .line 22
    invoke-virtual {p0, p1, p2}, Le/a/h0/k;->t(Ljava/lang/String;Ls1/g;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->p:Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public k()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "count"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Le/a/b0/i/f/b;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6
    throw v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-lez v8, :cond_2

    const-string v1, "Filters are already present"

    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    return v0

    .line 8
    :cond_2
    invoke-static {}, Le/a/m0/a1$k;->U()Le/a/h0/x/a;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Le/a/h0/x/a;->c()Lx3/b;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Lx3/b;->execute()Lx3/a0;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lx3/a0;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 12
    iget-object v2, v2, Lx3/a0;->b:Ljava/lang/Object;

    .line 13
    check-cast v2, Le/a/h0/x/d;

    if-eqz v2, :cond_4

    .line 14
    iget-object v3, v2, Le/a/h0/x/d;->a:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v2, v2, Le/a/h0/x/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h0/x/c;

    .line 17
    :try_start_3
    invoke-virtual {p0, v4}, Le/a/h0/k;->n(Le/a/h0/x/c;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 18
    invoke-static {v5}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad values from backend, skip storing this filter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0, v3, v9}, Le/a/h0/k;->l(Ljava/util/Collection;Z)V

    .line 21
    :cond_4
    invoke-interface {v1}, Le/a/h0/x/a;->S()Lx3/b;

    move-result-object v1

    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lx3/a0;->b:Ljava/lang/Object;

    .line 23
    check-cast v1, Le/a/h0/x/e;

    if-eqz v1, :cond_8

    .line 24
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    iget v3, v1, Le/a/h0/x/e;->a:I

    if-lez v3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v9

    :goto_2
    invoke-interface {v2, v3}, Le/a/h0/m;->k(Z)V

    .line 25
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    iget v3, v1, Le/a/h0/x/e;->b:I

    if-lez v3, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    move v3, v9

    :goto_3
    invoke-interface {v2, v3}, Le/a/h0/m;->j(Z)V

    .line 26
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    iget-object v3, p0, Le/a/h0/k;->f:Le/a/u3/g;

    .line 27
    invoke-virtual {v3}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Le/a/h0/k;->j:Le/a/l/p2/v0;

    .line 28
    invoke-interface {v3}, Le/a/l/p2/v0;->H()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v1, v1, Le/a/h0/x/e;->g:I

    if-lez v1, :cond_7

    move v9, v0

    .line 29
    :cond_7
    invoke-interface {v2, v9}, Le/a/h0/m;->a(Z)V

    .line 30
    :cond_8
    iget-object v1, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Le/a/h0/m;->v(J)V

    return v0

    :cond_9
    const-string v0, "Could not restore filters"

    .line 31
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return v9
.end method

.method public final l(Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ContentValues;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sync_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 4
    iget-object v2, p0, Le/a/h0/k;->k:Le/a/r2/f;

    invoke-static {v2, v1}, Le/a/h0/k;->C(Le/a/r2/f;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "history_event_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Unexpected # of filters added, got "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", added "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public final m(Lcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/blocking/FilterMatch;
    .locals 11

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 2
    sget-object v0, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p1, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 4
    sget-object v0, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    .line 5
    invoke-interface {p2}, Le/a/h0/m;->u()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Lcom/truecaller/blocking/FilterMatch;

    .line 7
    iget-wide v1, p1, Lcom/truecaller/blocking/FilterMatch;->a:J

    .line 8
    sget-object v3, Lcom/truecaller/blocking/FilterAction;->FILTER_DISABLED:Lcom/truecaller/blocking/FilterAction;

    .line 9
    iget-object v4, p1, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 10
    iget-object v5, p1, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    .line 11
    iget v6, p1, Lcom/truecaller/blocking/FilterMatch;->e:I

    .line 12
    iget v7, p1, Lcom/truecaller/blocking/FilterMatch;->f:I

    .line 13
    iget-object v8, p1, Lcom/truecaller/blocking/FilterMatch;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 14
    iget-object v9, p1, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    .line 15
    iget-object v10, p1, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

    move-object v0, p2

    .line 16
    invoke-direct/range {v0 .. v10}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    return-object p2

    :cond_0
    return-object p1
.end method

.method public final n(Le/a/h0/x/c;)Landroid/content/ContentValues;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/a/h0/x/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-object v1, p1, Le/a/h0/x/c;->a:Ljava/lang/String;

    const-string v2, "server_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Le/a/h0/x/c;->e:Ljava/lang/String;

    const-string v3, "IM_ID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p1, Le/a/h0/x/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p1, Le/a/h0/x/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Le/a/h0/x/c;->b:Ljava/lang/String;

    :goto_0
    const-string v4, "value"

    .line 8
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p1, Le/a/h0/x/c;->c:Ljava/lang/String;

    const-string v5, "label"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p1, Le/a/h0/x/c;->d:Ljava/lang/String;

    const-string v5, "BLACKLIST"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p1, Le/a/h0/x/c;->d:Ljava/lang/String;

    const-string v6, "WHITELIST"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 12
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "rule"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    iget-object v1, p1, Le/a/h0/x/c;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->valueOfPattern(Ljava/lang/String;)Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "wildcard_type"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "sync_state"

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    iget-object v1, p1, Le/a/h0/x/c;->f:Ljava/lang/String;

    const-string v7, "tracking_source"

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p1, Le/a/h0/x/c;->e:Ljava/lang/String;

    const-string v1, "tracking_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v3

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v3

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long p1, v1, v6

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    new-array p1, v5, [Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    return-object v0

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown backend filter rule "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Le/a/h0/x/c;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Filter value is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    .line 3
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "rule"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    sget-object p1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget p1, p1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "wildcard_type"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "sync_state"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "tracking_type"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tracking_source"

    .line 8
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget p1, p6, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->value:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "entity_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "category_id"

    .line 10
    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "spam_version"

    .line 11
    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final p(Ljava/util/List;Le/a/h0/k$a;I)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;",
            "Le/a/h0/k$a;",
            "I)",
            "Ljava/util/List<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    .line 1
    iget-object v3, v2, Le/a/h0/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2
    invoke-static {}, Le/a/m0/a1$k;->M()Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v1, Le/a/h0/k$a;->a:Ljava/lang/String;

    iget-object v8, v1, Le/a/h0/k$a;->b:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 3
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v3, "_id"

    .line 4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    .line 5
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "count"

    .line 6
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "spam_categories"

    .line 7
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "spam_version"

    .line 8
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 9
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v9, p3

    if-ge v8, v9, :cond_1

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 11
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 13
    sget-object v8, Lcom/truecaller/data/entity/SpamData;->Companion:Lcom/truecaller/data/entity/SpamData$b;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/truecaller/data/entity/SpamData$b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 14
    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v20, v8

    goto :goto_2

    :cond_0
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    .line 15
    :goto_2
    new-instance v8, Lcom/truecaller/blocking/FilterMatch;

    sget-object v13, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    sget-object v14, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    const/16 v16, 0x0

    sget-object v18, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    move-object v10, v8

    invoke-direct/range {v10 .. v20}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_2

    .line 17
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v3
.end method

.method public final q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "_id IN (?"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, ",?"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Z)Lcom/truecaller/blocking/FilterMatch;
    .locals 0

    if-eqz p3, :cond_1

    .line 1
    invoke-static {p1}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    iget-object p1, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->k:Lcom/truecaller/blocking/FilterMatch;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->l:Lcom/truecaller/blocking/FilterMatch;

    :goto_0
    return-object p1

    .line 3
    :cond_1
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/truecaller/blocking/FilterMatch;->j:Lcom/truecaller/blocking/FilterMatch;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/String;Ls1/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/g<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ls1/n;

    invoke-virtual {p2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/h0/k;->K(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final t(Ljava/lang/String;Ls1/g;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/g<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "+"

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p0, Le/a/h0/k;->f:Le/a/u3/g;

    .line 4
    invoke-virtual {v1}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/h0/k;->b:Le/a/h0/m;

    .line 5
    invoke-interface {v1}, Le/a/h0/m;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Le/a/h0/k;->o:Ljava/util/regex/Pattern;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    check-cast p2, Ls1/n;

    invoke-virtual {p2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u(Ljava/lang/String;Ls1/g;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/g<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/k;->g:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v1}, Le/a/h0/m;->f()Z

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->i()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 4
    check-cast p2, Ls1/n;

    invoke-virtual {p2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string p1, "Invalid neighbour spoofing filter (too short)"

    .line 7
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return v3

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    return v3
.end method

.method public final v(Ls1/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/g<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/k;->b:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ls1/n;

    invoke-virtual {p1}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs w(ZILjava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Le/a/h0/w/a;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h0/w/a;

    .line 3
    iget v5, v4, Le/a/h0/w/a;->b:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    .line 4
    :goto_1
    iget-object v8, v4, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    sget-object v15, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    if-ne v8, v15, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    if-nez p1, :cond_4

    .line 5
    iget v9, v4, Le/a/h0/w/a;->c:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    goto :goto_3

    :cond_3
    move v6, v7

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    if-eqz v8, :cond_5

    if-eqz v6, :cond_5

    .line 6
    iget-object v5, v4, Le/a/h0/w/a;->e:Ljava/lang/String;

    move-object/from16 v6, p4

    invoke-virtual {v0, v5, v6}, Le/a/h0/k;->E(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    new-instance v5, Lcom/truecaller/blocking/FilterMatch;

    iget-wide v10, v4, Le/a/h0/w/a;->a:J

    sget-object v12, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    sget-object v13, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_NUMBER:Lcom/truecaller/blocking/ActionSource;

    iget-object v14, v4, Le/a/h0/w/a;->d:Ljava/lang/String;

    iget v7, v4, Le/a/h0/w/a;->c:I

    const/16 v16, 0x0

    iget-object v4, v4, Le/a/h0/w/a;->h:Ljava/lang/Long;

    .line 8
    invoke-static {v4}, Le/a/p5/s0/g;->L1(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    move-object v9, v5

    move-object v4, v15

    move v15, v7

    move-object/from16 v17, v4

    invoke-direct/range {v9 .. v19}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    return-object v2

    :cond_5
    move-object/from16 v6, p4

    goto :goto_0

    :cond_6
    move-object/from16 v6, p4

    .line 11
    invoke-static/range {p4 .. p4}, Le/a/h0/k$a;->a([Ljava/lang/String;)Le/a/h0/k$a;

    move-result-object v3

    if-nez v3, :cond_7

    return-object v2

    .line 12
    :cond_7
    invoke-virtual {v0, v2, v3, v1}, Le/a/h0/k;->p(Ljava/util/List;Le/a/h0/k$a;I)Ljava/util/List;

    return-object v2
.end method

.method public final x(Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/blocking/FilterMatch;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/h0/w/a;",
            ">;)",
            "Lcom/truecaller/blocking/FilterMatch;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h0/w/a;

    .line 2
    iget v1, v0, Le/a/h0/w/a;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3
    :goto_0
    iget-object v4, v0, Le/a/h0/w/a;->f:Ljava/lang/String;

    const-string v5, "COUNTRY_CODE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 4
    iget-object v1, v0, Le/a/h0/w/a;->e:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Le/a/h0/k;->E(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance p1, Lcom/truecaller/blocking/FilterMatch;

    iget-wide v3, v0, Le/a/h0/w/a;->a:J

    sget-object v5, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    sget-object v6, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_COUNTRY:Lcom/truecaller/blocking/ActionSource;

    iget-object v7, v0, Le/a/h0/w/a;->e:Ljava/lang/String;

    iget v8, v0, Le/a/h0/w/a;->c:I

    const/4 v9, 0x0

    sget-object v10, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object p2, v0, Le/a/h0/w/a;->h:Ljava/lang/Long;

    .line 6
    invoke-static {p2}, Le/a/p5/s0/g;->L1(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/blocking/FilterMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/h0/w/a;",
            ">;)",
            "Lcom/truecaller/blocking/FilterMatch;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Le/a/h0/k;->z(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    :goto_0
    return-object p1
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Le/a/h0/w/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h0/w/a;

    .line 3
    iget v3, v2, Le/a/h0/w/a;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    .line 4
    :goto_1
    iget-object v6, v2, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    sget-object v15, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    if-ne v6, v15, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 5
    iget-object v3, v2, Le/a/h0/w/a;->e:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v4

    aput-object p2, v6, v5

    move-object/from16 v4, p0

    invoke-virtual {v4, v3, v6}, Le/a/h0/k;->E(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    new-instance v3, Lcom/truecaller/blocking/FilterMatch;

    iget-wide v8, v2, Le/a/h0/w/a;->a:J

    sget-object v10, Lcom/truecaller/blocking/FilterAction;->ALLOW_WHITELISTED:Lcom/truecaller/blocking/FilterAction;

    sget-object v11, Lcom/truecaller/blocking/ActionSource;->CUSTOM_WHITELIST:Lcom/truecaller/blocking/ActionSource;

    iget-object v12, v2, Le/a/h0/w/a;->d:Ljava/lang/String;

    iget v13, v2, Le/a/h0/w/a;->c:I

    const/4 v14, 0x0

    iget-object v2, v2, Le/a/h0/w/a;->h:Ljava/lang/Long;

    .line 7
    invoke-static {v2}, Le/a/p5/s0/g;->L1(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v17}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, p3

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_3
    move-object/from16 v4, p0

    :cond_4
    move/from16 v3, p3

    goto :goto_0

    :cond_5
    move-object/from16 v4, p0

    return-object v0
.end method
