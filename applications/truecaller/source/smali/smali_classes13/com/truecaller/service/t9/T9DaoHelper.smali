.class public final Lcom/truecaller/service/t9/T9DaoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;
    }
.end annotation


# instance fields
.field public a:Le/a/y4/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/truecaller/service/t9/T9DaoHelper;Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;ZI)Ljava/util/List;
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object p3, Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;->MATCH_ANY_WORD:Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/service/t9/T9DaoHelper;->a(Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILcom/truecaller/service/t9/T9DaoHelper$MappingRule;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_b

    .line 2
    iget-object v2, p0, Lcom/truecaller/service/t9/T9DaoHelper;->a:Le/a/y4/g/a;

    if-eqz v2, :cond_a

    .line 3
    sget-object v4, Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;->MATCH_ANY_WORD:Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;

    if-ne p3, v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    invoke-interface {v2, p1, v4, p4}, Le/a/y4/g/a;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p4

    .line 4
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object p4, v3

    :goto_4
    if-eqz p4, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 5
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p4, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    if-ltz v0, :cond_9

    .line 7
    check-cast v4, Ljava/lang/String;

    .line 8
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_8

    if-eq v7, v1, :cond_7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    goto :goto_7

    .line 10
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_7
    const-string v7, "t9_anywhere"

    goto :goto_8

    :cond_8
    :goto_7
    const-string v7, "t9_starts_with"

    .line 11
    :goto_8
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "matched_value"

    .line 12
    invoke-virtual {v6, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v0, p2, v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "hit_priority"

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_6

    .line 15
    :cond_9
    invoke-static {}, Ls1/u/i;->N0()V

    throw v3

    :cond_a
    const-string p1, "t9Mapper"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_b
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    :cond_c
    return-object v2
.end method
