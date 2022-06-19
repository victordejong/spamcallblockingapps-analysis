.class public abstract Le/i/b/u2/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/i/b/u2/d0;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1
    invoke-static/range {v0 .. v9}, Le/i/b/u2/d0;->b(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)Le/i/b/u2/d0;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)Le/i/b/u2/d0;
    .locals 12

    .line 1
    new-instance v11, Le/i/b/u2/n;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Le/i/b/u2/n;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)V

    return-object v11
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidAdTagDataMacro"
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidAdTagDataMode"
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidAdTagUrlMode"
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidDisplayUrlMacro"
    .end annotation
.end method

.method public abstract g()Ljava/lang/Boolean;
.end method

.method public abstract h()Ljava/lang/Boolean;
.end method

.method public abstract i()Ljava/lang/Boolean;
.end method

.method public abstract j()Ljava/lang/Integer;
.end method

.method public abstract k()Ljava/lang/Boolean;
.end method

.method public abstract l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
.end method
