.class public final Le/a/h0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h0/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h0/q$e;,
        Le/a/h0/q$g;,
        Le/a/h0/q$f;,
        Le/a/h0/q$c;,
        Le/a/h0/q$d;,
        Le/a/h0/q$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/q;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Le/a/r2/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/h0/q;->a:Le/a/r2/w;

    new-instance v11, Le/a/h0/q$f;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v10, 0x0

    move-object v2, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Le/a/h0/q$f;-><init>(Le/a/r2/e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLe/a/h0/q$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v11}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public b()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/h0/w/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/q;->a:Le/a/r2/w;

    new-instance v1, Le/a/h0/q$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/h0/q$e;-><init>(Le/a/r2/e;Le/a/h0/q$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public c(Le/a/h0/w/a;Ljava/lang/String;Z)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h0/w/a;",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/q;->a:Le/a/r2/w;

    new-instance v7, Le/a/h0/q$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/h0/q$g;-><init>(Le/a/r2/e;Le/a/h0/w/a;Ljava/lang/String;ZLe/a/h0/q$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/String;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/q;->a:Le/a/r2/w;

    new-instance v8, Le/a/h0/q$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/h0/q$d;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/String;Le/a/h0/q$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public e(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/q;->a:Le/a/r2/w;

    new-instance v1, Le/a/h0/q$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/h0/q$c;-><init>(Le/a/r2/e;Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;Le/a/h0/q$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/h0/q;->a:Le/a/r2/w;

    new-instance v13, Le/a/h0/q$b;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v12, 0x0

    move-object v2, v13

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Le/a/h0/q$b;-><init>(Le/a/r2/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;Le/a/h0/q$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v13}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
