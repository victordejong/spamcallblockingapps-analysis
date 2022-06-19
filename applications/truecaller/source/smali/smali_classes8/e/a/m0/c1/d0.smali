.class public final Le/a/m0/c1/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "CREATE VIEW wvm_incoming_with_raw_contact_data AS SELECT _id AS _id,raw_contact_data.tc_id AS tc_id,"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Le/a/m0/a1$d;->b:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "raw_contact_data"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v4, Le/a/m0/a1$g;->d:[Ljava/lang/String;

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v2, v3, v4}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rowid"

    const-string v2, "type"

    const-string v4, "timestamp"

    const-string v5, "source"

    .line 4
    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile_view_events"

    .line 5
    invoke-static {v2, v3, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " FROM profile_view_events LEFT JOIN raw_contact_data ON "

    const-string v3, " profile_view_events.tc_id = raw_contact_data.tc_id"

    const-string v4, " WHERE raw_contact_data.data_type=1"

    invoke-static {v0, v1, v2, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " AND profile_view_events.type=\"INCOMING\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/d0;->a:Ljava/lang/String;

    return-void
.end method
