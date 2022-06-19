.class public Le/a/m0/c1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    const-string v0, "history._id AS _id, history.tc_id AS tc_id, history.tc_flag AS tc_flag, "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Le/a/m0/a1$i;->e:[Ljava/lang/String;

    const-string v2, "history"

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/k;->a:Ljava/lang/String;

    const-string v4, "CREATE VIEW history_with_call_recording AS SELECT "

    const-string v5, ","

    const-string v6, "call_recordings"

    const-string v7, "."

    .line 3
    invoke-static {v4, v0, v5, v6, v7}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_id"

    const-string v8, " AS "

    const-string v9, "history_call_recording_id"

    invoke-static {v0, v4, v8, v9, v5}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Le/a/m0/a1$c;->a:[Ljava/lang/String;

    .line 4
    invoke-static {v6, v3, v5}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " FROM "

    const-string v11, " LEFT JOIN "

    invoke-static {v0, v9, v10, v2, v11}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, " ON "

    invoke-static {v0, v6, v9, v2, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "event_id"

    const-string v13, "="

    invoke-static {v0, v12, v13, v6, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "history_event_id"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/k;->b:Ljava/lang/String;

    const-string v0, "CREATE VIEW history_with_raw_contact AS SELECT history_with_call_recording._id AS _id, history_with_call_recording.tc_id AS tc_id, history_with_call_recording.tc_flag AS tc_flag, "

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "history_with_call_recording"

    .line 6
    invoke-static {v6, v3, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, ", "

    const-string v14, "raw_contact"

    invoke-static {v0, v3, v12, v14, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "history_raw_contact_id"

    invoke-static {v0, v4, v8, v3, v12}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "tc_id"

    invoke-static {v0, v14, v7, v15, v8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    const-string v2, "history_raw_contact_tc_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    sget-object v13, Le/a/m0/a1$d;->b:[Ljava/lang/String;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .line 7
    invoke-static {v14, v2, v13}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10, v6, v11}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v14, v9, v6, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " = "

    invoke-static {v0, v15, v2, v14, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/k;->c:Ljava/lang/String;

    const-string v0, "CREATE VIEW history_with_aggregated_contact AS SELECT history_with_call_recording._id AS _id, history_with_call_recording.tc_id AS tc_id, history_with_call_recording.tc_flag AS tc_flag, history_with_call_recording.history_call_recording_id AS history_call_recording_id, "

    .line 8
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    move-object/from16 v19, v9

    .line 9
    invoke-static {v6, v2, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v6, v2, v5}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "aggregated_contact"

    invoke-static {v0, v2, v12, v5, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "history_aggregated_contact_id"

    invoke-static {v0, v4, v8, v2, v12}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, v7, v15, v8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "history_aggregated_contact_tc_id"

    invoke-static {v0, v9, v12, v14, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4, v8, v3, v12}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v14, v7, v15, v8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    move-object/from16 v21, v9

    .line 11
    invoke-static {v5, v2, v13}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Le/a/m0/a1$l;->a:[Ljava/lang/String;

    .line 12
    invoke-static {v5, v2, v9}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10, v6, v11}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    invoke-static {v0, v14, v2, v6, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v17

    invoke-static {v0, v15, v6, v14, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v15, v11, v5, v2}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, v7, v4, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "aggregated_contact_id"

    invoke-static {v0, v14, v7, v6}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/k;->d:Ljava/lang/String;

    const-string v0, "CREATE VIEW history_with_aggregated_contact_no_cr AS SELECT history._id AS _id, history.tc_id AS tc_id, history.tc_flag AS tc_flag, "

    .line 13
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v19, v6

    const/4 v6, 0x0

    move-object/from16 v22, v2

    move-object/from16 v2, v16

    .line 14
    invoke-static {v2, v6, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12, v14, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4, v8, v3, v12}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v14, v7, v15, v8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12, v5, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v18

    invoke-static {v0, v4, v8, v1, v12}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, v7, v15, v8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 15
    invoke-static {v5, v1, v13}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v5, v1, v9}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10, v2, v11}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v22

    invoke-static {v0, v14, v1, v2, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v17

    invoke-static {v0, v15, v2, v14, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v15, v11, v5, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, v7, v4, v2}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v19

    invoke-static {v0, v14, v7, v1}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/k;->e:Ljava/lang/String;

    const-string v0, "history_with_aggregated_contact_number"

    .line 17
    invoke-static {v0}, Le/a/m0/c1/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/k;->f:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "history_with_aggregated_contact_number_data"

    .line 19
    invoke-static {v1}, Le/a/m0/c1/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "= (SELECT "

    invoke-static {v0, v3, v4, v10, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " WHERE "

    invoke-static {v0, v3, v1, v7, v15}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " IS NOT NULL AND "

    const-string v4, "history_with_aggregated_contact"

    invoke-static {v0, v3, v4, v7, v15}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " IS NOT NULL AND "

    const-string v4, "data_type"

    invoke-static {v0, v3, v1, v7, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "history_with_aggregated_contact"

    invoke-static {v0, v7, v15, v2, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " LIMIT 1 )"

    invoke-static {v0, v7, v15, v1}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/k;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "CREATE VIEW "

    const-string v1, " AS SELECT "

    const-string v2, "history_with_aggregated_contact"

    const-string v3, ".*, "

    .line 1
    invoke-static {v0, p0, v1, v2, v3}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "data"

    const-string v1, "."

    const-string v3, "_id"

    const-string v4, " AS "

    invoke-static {p0, v0, v1, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "data_id"

    const-string v6, ", "

    invoke-static {p0, v5, v6, v0, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "tc_id"

    const-string v7, "data_tc_id"

    invoke-static {p0, v5, v4, v7, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Le/a/m0/a1$g;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 2
    invoke-static {v0, v5, v4}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " FROM "

    const-string v6, " LEFT JOIN "

    invoke-static {p0, v4, v5, v2, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "raw_contact"

    const-string v7, " ON "

    invoke-static {p0, v4, v7, v2, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "history_aggregated_contact_id"

    const-string v9, "="

    invoke-static {p0, v8, v9, v4, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "aggregated_contact_id"

    const-string v10, " AND "

    invoke-static {p0, v8, v10, v4, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "contact_source"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0, v7, v0, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "= (SELECT "

    invoke-static {p0, v3, v6, v3, v5}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " WHERE "

    invoke-static {p0, v0, v5, v0, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "data_raw_contact_id"

    invoke-static {p0, v5, v9, v4, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3, v10, v0, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_type"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data1"

    invoke-static {p0, v0, v1, v3, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "normalized_number"

    const-string v3, " LIMIT 1 )"

    invoke-static {p0, v2, v1, v0, v3}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 7

    const-string v0, "CREATE TABLE history(_id INTEGER PRIMARY KEY, event_id TEXT NOT NULL DEFAULT \'\',tc_id TEXT, normalized_number TEXT, raw_number TEXT, number_type INT, country_code TEXT, cached_name TEXT,type INT, action INT, call_log_id INT, timestamp INT NOT NULL, duration INT, subscription_id TEXT, feature INT, new INT, is_read INT, subscription_component_name TEXT, tc_flag INT NOT NULL DEFAULT 0,filter_source TEXT,ringing_duration INT NOT NULL DEFAULT 0);"

    const-string v1, "CREATE INDEX IF NOT EXISTS history_timestamp ON history(timestamp DESC)"

    const-string v2, "CREATE INDEX IF NOT EXISTS history_tc_id ON history(tc_id)"

    const-string v3, "CREATE INDEX IF NOT EXISTS history_normalized_number ON history(normalized_number)"

    const-string v4, "CREATE INDEX IF NOT EXISTS history_type ON history(type)"

    const-string v5, "CREATE INDEX IF NOT EXISTS history_action ON history(action)"

    const-string v6, "CREATE UNIQUE INDEX IF NOT EXISTS history_event_id ON history(event_id)"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p3

    move/from16 v2, p4

    :goto_0
    if-ge v3, v2, :cond_d

    const/4 v4, 0x3

    const-string v5, "CREATE INDEX IF NOT EXISTS history_type ON history(type)"

    const-string v6, "CREATE INDEX IF NOT EXISTS history_normalized_number ON history(normalized_number)"

    const-string v7, "CREATE INDEX IF NOT EXISTS history_tc_id ON history(tc_id)"

    if-ne v3, v4, :cond_0

    const-string v4, "CREATE TEMPORARY TABLE temp_history AS SELECT * FROM history"

    .line 1
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "DROP TABLE history"

    .line 2
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "CREATE TABLE history(_id INTEGER PRIMARY KEY, event_id TEXT NOT NULL DEFAULT \'\',tc_id TEXT, normalized_number TEXT, raw_number TEXT, number_type INT, country_code TEXT, cached_name TEXT,type INT, action INT, call_log_id INT, timestamp INT NOT NULL, duration INT, subscription_id TEXT, feature INT, new INT, is_read INT, subscription_component_name TEXT, tc_flag INT NOT NULL DEFAULT 0,filter_source TEXT,ringing_duration INT NOT NULL DEFAULT 0);"

    .line 3
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "CREATE INDEX IF NOT EXISTS history_timestamp ON history(timestamp DESC)"

    .line 4
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO history ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    const-string v7, "tc_id"

    const-string v8, "normalized_number"

    const-string v9, "raw_number"

    const-string v10, "number_type"

    const-string v11, "country_code"

    const-string v12, "cached_name"

    const-string v13, "type"

    const-string v14, "action"

    const-string v15, "call_log_id"

    const-string v16, "timestamp"

    const-string v17, "duration"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Le/a/m0/c1/k;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    const-string v7, "tc_id"

    const-string v8, "normalized_number"

    const-string v9, "national_number"

    const-string v10, "number_type"

    const-string v11, "country_code"

    const-string v12, "cached_name"

    const-string v13, "type"

    const-string v14, "action"

    const-string v15, "call_log_id"

    const-string v16, "timestamp"

    const-string v17, "duration"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v0, v5}, Le/a/m0/c1/k;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " FROM temp_history"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "DROP TABLE temp_history"

    .line 11
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    const-string v4, "ALTER TABLE history ADD COLUMN subscription_id TEXT;"

    .line 12
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "ALTER TABLE history ADD COLUMN sim_index INT;"

    .line 13
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v4, 0xa

    const/4 v8, 0x0

    if-ne v3, v4, :cond_2

    const-string v4, "history"

    const-string v9, "type=4"

    .line 14
    invoke-virtual {v1, v4, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15
    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    const-string v4, "CREATE INDEX IF NOT EXISTS history_action ON history(action)"

    .line 18
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    const-string v4, "ALTER TABLE history ADD COLUMN feature INT;"

    .line 19
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v4, 0xf

    if-ne v3, v4, :cond_5

    const-string v4, "ALTER TABLE history ADD COLUMN new INT;"

    .line 20
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "ALTER TABLE history ADD COLUMN is_read INT;"

    .line 21
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "ALTER TABLE history ADD COLUMN subscription_component_name TEXT;"

    .line 22
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x11

    if-ne v3, v4, :cond_6

    .line 23
    invoke-virtual {v0, v1}, Le/a/m0/c1/k;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_6
    const/16 v4, 0x16

    if-ne v3, v4, :cond_7

    const-string v4, "PRAGMA table_info(history)"

    .line 24
    invoke-virtual {v1, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "tc_flag"

    .line 25
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 26
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-gez v5, :cond_8

    .line 27
    invoke-virtual {v0, v1}, Le/a/m0/c1/k;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_7
    const/16 v4, 0x18

    if-ne v3, v4, :cond_9

    .line 28
    invoke-virtual {v0, v1}, Le/a/m0/c1/k;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    :goto_1
    move/from16 v5, p3

    goto :goto_2

    :cond_9
    const/16 v5, 0x26

    if-ne v3, v5, :cond_b

    move/from16 v5, p3

    if-le v5, v4, :cond_a

    const-string v4, "ALTER TABLE history ADD COLUMN event_id TEXT NOT NULL DEFAULT \'\';"

    .line 29
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    const-string v4, "UPDATE history SET event_id=lower(hex(randomblob(16)))"

    .line 30
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "CREATE UNIQUE INDEX IF NOT EXISTS history_event_id ON history(event_id)"

    .line 31
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move/from16 v5, p3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_c

    const-string v4, "UPDATE history SET tc_id=NULL WHERE tc_id NOT IN (SELECT tc_id FROM raw_contact)"

    .line 32
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Le/a/m0/c1/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Le/a/m0/c1/k;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Le/a/m0/c1/k;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Le/a/m0/c1/k;->e:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "CREATE VIEW history_top_called_with_aggregated_contact AS SELECT * FROM history_with_aggregated_contact WHERE type=2 AND DATE(timestamp / 1000, \'unixepoch\') > DATE(\'now\', \'-30 days\') GROUP BY normalized_number ORDER BY COUNT(normalized_number) DESC, MAX(timestamp) DESC"

    aput-object v2, v0, v1

    sget-object v1, Le/a/m0/c1/k;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Le/a/m0/c1/k;->g:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final varargs d([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ","

    .line 1
    invoke-static {p1, v0}, Lw3/c/a/a/a/h;->q([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "_id"

    const-string v2, "tc_id"

    const-string v3, "normalized_number"

    const-string v4, "raw_number"

    const-string v5, "number_type"

    const-string v6, "country_code"

    const-string v7, "cached_name"

    const-string v8, "type"

    const-string v9, "action"

    const-string v10, "call_log_id"

    const-string v11, "timestamp"

    const-string v12, "duration"

    const-string v13, "subscription_id"

    const-string v14, "feature"

    const-string v15, "new"

    const-string v16, "is_read"

    const-string v17, "subscription_component_name"

    .line 1
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Le/a/m0/c1/k;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CREATE TEMPORARY TABLE temp_history AS SELECT * FROM history"

    .line 2
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE history"

    .line 3
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "CREATE TABLE history(_id INTEGER PRIMARY KEY, event_id TEXT NOT NULL DEFAULT \'\',tc_id TEXT, normalized_number TEXT, raw_number TEXT, number_type INT, country_code TEXT, cached_name TEXT,type INT, action INT, call_log_id INT, timestamp INT NOT NULL, duration INT, subscription_id TEXT, feature INT, new INT, is_read INT, subscription_component_name TEXT, tc_flag INT NOT NULL DEFAULT 0,filter_source TEXT,ringing_duration INT NOT NULL DEFAULT 0);"

    .line 4
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO history ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") SELECT "

    const-string v5, " FROM temp_history"

    invoke-static {v3, v1, v4, v1, v5}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE temp_history"

    .line 6
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
