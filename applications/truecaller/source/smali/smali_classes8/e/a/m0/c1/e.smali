.class public final Le/a/m0/c1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "\n    CREATE TABLE contact_settings (\n        tc_id TEXT UNIQUE NOT NULL,\n        hidden_from_identified INT NOT NULL DEFAULT 0\n    )\n"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le/a/m0/c1/g0;->c(Le/a/m0/c1/h0;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public synthetic c()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->b(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
