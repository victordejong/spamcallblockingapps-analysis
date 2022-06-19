.class public final Le/a/a/c1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c1/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c1/k$b;,
        Le/a/a/c1/k$c;
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
    iput-object p1, p0, Le/a/a/c1/k;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;ZLjava/lang/String;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Le/a/a/c1/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c1/k;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/c1/k$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/a/c1/k$b;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;ZLjava/lang/String;Le/a/a/c1/k$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public b(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;J)Le/a/r2/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "J)",
            "Le/a/r2/x<",
            "Le/a/a/c1/c;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c1/k;->a:Le/a/r2/w;

    new-instance v12, Le/a/a/c1/k$c;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v11, 0x0

    move-object v2, v12

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v2 .. v11}, Le/a/a/c1/k$c;-><init>(Le/a/r2/e;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;JLe/a/a/c1/k$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v12}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
