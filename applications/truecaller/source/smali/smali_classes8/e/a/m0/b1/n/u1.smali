.class public final Le/a/m0/b1/n/u1;
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

    const-string v1, "ALTER TABLE msg_participants ADD COLUMN is_spam INTEGER DEFAULT 0"

    const-string v2, "\n        UPDATE msg_participants SET is_spam = (SELECT COUNT(data11) > 0 \n            FROM data\n            WHERE data_type = 4\n            AND data1 = msg_participants.normalized_destination)\n    "

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
