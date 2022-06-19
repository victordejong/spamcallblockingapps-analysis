.class public Le/a/l0/o;
.super Le/a/l0/n;
.source "SourceFile"


# static fields
.field public static final l:Landroid/net/Uri;

.field public static final m:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "content://logs/call"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le/a/l0/o;->l:Landroid/net/Uri;

    .line 2
    sget-object v0, Le/a/l0/f;->a:[Ljava/lang/String;

    const-string v1, "normalized_number"

    const-string v2, "features"

    const-string v3, "subscription_component_name"

    const-string v4, "logtype"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/c/a/a/a/a;->b([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Le/a/l0/o;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/l0/n;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 18

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "_id"

    const-string v3, "name"

    const-string v4, "date"

    const-string v5, "features"

    const-string v6, "new"

    const-string v7, "is_read"

    const-string v8, "subscription_component_name"

    const-string v9, "number"

    const-string v10, "type"

    const-string v11, "duration"

    .line 2
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Le/a/l0/o;->l:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    move v1, v0

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    return v1

    :catch_1
    :try_start_1
    const-string v2, "android.permission.READ_CALL_LOG"

    move-object/from16 v3, p0

    .line 5
    invoke-virtual {v3, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move v1, v0

    :cond_3
    return v1

    .line 6
    :goto_0
    throw v0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Le/a/l0/o;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Le/a/l0/o;->l:Landroid/net/Uri;

    return-object v0
.end method
