.class public final Le/a/m0/b1/n/n0;
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
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n                    UPDATE msg_conversations \n                        SET type = 2\n                    WHERE _id IN (\n                        SELECT\n                            c._id AS _id\n                        FROM msg_conversations c\n                            LEFT JOIN msg_conversation_participants cp \n                            on cp.conversation_id = c._id\n                            LEFT JOIN msg_participants p \n                            on cp.participant_id = p._id\n                        WHERE \n                            c.type = 0\n                            AND length(p.normalized_destination) > 6 AND \n                            (\n                                length(p.normalized_destination) <= 8\n                                OR (p.normalized_destination GLOB \'+91*\'  \n                                AND length(p.normalized_destination) <= 11)\n                            )\n                    )\n                "

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
