.class public final synthetic Le/i/b/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/d1;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Le/i/b/d1;->a:Le/i/b/x2;

    .line 1
    invoke-virtual {v1}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    new-instance v6, Le/p/b/u;

    invoke-direct {v6, v1}, Le/p/b/u;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v9, Le/p/b/p;

    invoke-direct {v9, v1}, Le/p/b/p;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v4, Le/p/b/w;

    invoke-direct {v4}, Le/p/b/w;-><init>()V

    .line 6
    sget-object v10, Lcom/squareup/picasso/Picasso$f;->a:Lcom/squareup/picasso/Picasso$f;

    .line 7
    new-instance v11, Le/p/b/b0;

    invoke-direct {v11, v9}, Le/p/b/b0;-><init>(Le/p/b/d;)V

    .line 8
    new-instance v12, Le/p/b/i;

    sget-object v5, Lcom/squareup/picasso/Picasso;->o:Landroid/os/Handler;

    move-object v2, v12

    move-object v3, v1

    move-object v7, v9

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Le/p/b/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Le/p/b/j;Le/p/b/d;Le/p/b/b0;)V

    .line 9
    new-instance v13, Lcom/squareup/picasso/Picasso;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v13

    move-object v4, v12

    move-object v5, v9

    move-object v7, v10

    move-object v9, v11

    move-object v10, v14

    move v11, v15

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Le/p/b/i;Le/p/b/d;Lcom/squareup/picasso/Picasso$c;Lcom/squareup/picasso/Picasso$f;Ljava/util/List;Le/p/b/b0;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v13

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
