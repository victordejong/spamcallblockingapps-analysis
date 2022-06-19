.class public final Le/a/i/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[Le/a/b0/i/f/c;

.field public static final d:[Le/a/b0/i/f/d;

.field public static final e:[Ljava/lang/String;


# instance fields
.field public final a:Le/a/b0/i/f/a;

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x1

    new-array v0, v0, [Le/a/b0/i/f/c;

    .line 1
    new-instance v1, Le/a/i/w/c;

    invoke-direct {v1}, Le/a/i/w/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Le/a/i/w/a;->c:[Le/a/b0/i/f/c;

    new-array v0, v2, [Le/a/b0/i/f/d;

    .line 2
    sput-object v0, Le/a/i/w/a;->d:[Le/a/b0/i/f/d;

    const-string v1, "campaign_id"

    const-string v2, "request_order"

    const-string v3, "expiration"

    const-string v4, "mainColor"

    const-string v5, "lightColor"

    const-string v6, "buttonColor"

    const-string v7, "imageUrl"

    const-string v8, "bannerBackgroundColor"

    const-string v9, "ctaBackgroundColor"

    const-string v10, "ctaTextColor"

    const-string v11, "ctaIconAction"

    const-string v12, "ctaIconText"

    const-string v13, "brandName"

    .line 3
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/i/w/a;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v4, Le/a/i/w/a;->c:[Le/a/b0/i/f/c;

    sget-object v5, Le/a/i/w/a;->d:[Le/a/b0/i/f/d;

    .line 3
    new-instance v7, Le/a/b0/i/f/a;

    const-string v2, "adCampaigns.db"

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Le/a/b0/i/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;I[Le/a/b0/i/f/c;[Le/a/b0/i/f/d;Landroid/database/DatabaseErrorHandler;)V

    .line 4
    iput-object v7, p0, Le/a/i/w/a;->a:Le/a/b0/i/f/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/a/i/w/a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "campaigns"

    const-string v3, "expiration<?"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    iput-boolean v0, p0, Le/a/i/w/a;->b:Z

    :cond_0
    return-void
.end method
