.class public final Le/a/o/b/s;
.super Le/a/d3/k;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/q;


# instance fields
.field public final o:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/x3/c;)V
    .locals 13
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "grpc_user_agent"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p2

    const-string v1, "context"

    move-object v3, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ioContext"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accountManager"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "temporaryAuthTokenManager"

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceInfoUtil"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "edgeLocationsManager"

    move-object/from16 v7, p6

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "domainResolver"

    move-object/from16 v8, p7

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAgent"

    move-object/from16 v9, p8

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelNetworkChangesHandler"

    move-object/from16 v10, p9

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "domainFrontingResolver"

    move-object/from16 v11, p10

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "forcedUpdateManager"

    move-object/from16 v12, p11

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    .line 1
    invoke-direct/range {v2 .. v12}, Le/a/d3/k;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/x3/c;)V

    move-object v1, p0

    iput-object v0, v1, Le/a/o/b/s;->o:Ls1/w/f;

    return-void
.end method
