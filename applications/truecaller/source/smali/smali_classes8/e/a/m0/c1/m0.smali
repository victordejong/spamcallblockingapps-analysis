.class public final Le/a/m0/c1/m0;
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

    const-string v0, "\n    CREATE TABLE IF NOT EXISTS voip_history_peers (\n        history_id INTEGER NOT NULL \n        REFERENCES history (_id) ON DELETE CASCADE,\n        normalized_number TEXT NOT NULL,\n        status INTEGER DEFAULT 0 NOT NULL,\n        position INTEGER NOT NULL,\n        UNIQUE(history_id, position) ON CONFLICT REPLACE\n    )\n"

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

.method public c()[Ljava/lang/String;
    .locals 1

    const-string v0, "\n    CREATE VIEW voip_history_with_aggregated_contacts_shallow\n        AS\n          SELECT vhp.history_id AS voip_history_id,\n                 vhp.normalized_number AS voip_history_normalized_number,\n                 vhp.status,\n                 vhp.position,\n                 ac.*\n          FROM voip_history_peers vhp\n                 LEFT JOIN aggregated_contact ac\n                        ON ac._id = (\n                            SELECT aggregated_contact_id\n                            FROM raw_contact_data\n                            WHERE data1 = vhp.normalized_number\n                                AND data_type = 4\n                            LIMIT 1\n                        )\n          ORDER BY vhp.history_id,vhp.position ASC\n"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
