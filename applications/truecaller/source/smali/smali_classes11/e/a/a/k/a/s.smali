.class public final Le/a/a/k/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/a/s$d;,
        Le/a/a/k/a/s$c;,
        Le/a/a/k/a/s$b;,
        Le/a/a/k/a/s$e;
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
    iput-object p1, p0, Le/a/a/k/a/s;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public b(Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;J)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;",
            "J)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/transport/im/SendResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/s;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/a/s$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/s$e;-><init>(Le/a/r2/e;Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;JLe/a/a/k/a/s$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/s;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/s$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/k/a/s$b;-><init>(Le/a/r2/e;Le/a/a/k/a/s$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public d(Lcom/truecaller/messaging/data/types/Entity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/s;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/s$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/a/s$c;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Entity;Le/a/a/k/a/s$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Le/a/r2/x;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/transport/im/SendResult;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/a/s;->a:Le/a/r2/w;

    new-instance v13, Le/a/a/k/a/s$d;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v12, 0x0

    move-object v2, v13

    move-object v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Le/a/a/k/a/s$d;-><init>(Le/a/r2/e;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Le/a/a/k/a/s$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v13}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
