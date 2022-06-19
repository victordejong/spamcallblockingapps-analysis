.class public abstract Le/a/l0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static volatile b:Le/a/l0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "_id"

    const-string v1, "date"

    const-string v2, "number"

    const-string v3, "type"

    const-string v4, "duration"

    const-string v5, "name"

    const-string v6, "new"

    const-string v7, "is_read"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/l0/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Le/a/l0/f;
    .locals 2

    .line 1
    sget-object v0, Le/a/l0/f;->b:Le/a/l0/f;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-class v0, Le/a/l0/f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/a/l0/f;->b:Le/a/l0/f;

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    invoke-static {p0}, Le/a/l0/o;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Le/a/l0/o;

    invoke-direct {v1, p0}, Le/a/l0/o;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v1, Le/a/l0/n;

    invoke-direct {v1, p0}, Le/a/l0/n;-><init>(Landroid/content/Context;)V

    .line 8
    :goto_0
    sput-object v1, Le/a/l0/f;->b:Le/a/l0/f;

    .line 9
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract a()[Ljava/lang/String;
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public abstract d(I)I
.end method
