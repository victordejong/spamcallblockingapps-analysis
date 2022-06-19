.class public final Le/a/m0/b1/n/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/b1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "db"

    const-string v1, "ALTER TABLE msg_participants ADD COLUMN pb_numbers_count INTEGER DEFAULT(0)"

    const-string v2, "\n                UPDATE msg_participants SET pb_numbers_count =\n                    (SELECT COUNT(DISTINCT data1) FROM raw_contact LEFT JOIN data ON raw_contact._id = data.data_raw_contact_id\n                        WHERE aggregated_contact_id=msg_participants.aggregated_contact_id AND data_type=4 AND data_phonebook_id NOT NULL)\n        "

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
