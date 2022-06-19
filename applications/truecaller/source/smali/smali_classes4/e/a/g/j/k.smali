.class public final Le/a/g/j/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p1

    const-string v0, "activity"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v14, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 2
    sget-object v7, Lcom/truecaller/details_view/analytics/SourceType;->AfterCall:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c00

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v15, v14

    move/from16 v14, v16

    .line 3
    invoke-static/range {v0 .. v14}, Le/a/v/p/n;->d(Le/a/v/p/n;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/details_view/analytics/SourceType;ZZILjava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x30000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v1, p1

    move-object v2, v15

    .line 5
    invoke-virtual {v2, v1, v0}, Le/a/v/p/n;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
