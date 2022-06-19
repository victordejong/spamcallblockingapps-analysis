.class public final Le/a/m0/c1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Le/a/m0/a1$e;->a:[Ljava/lang/String;

    const-string v1, "\n    CREATE VIEW sorted_contacts_with_data AS\n        SELECT aggregated_contact_data.*,\n                "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "contact_sorting_index"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ",\n                contact_settings.hidden_from_identified\n        FROM aggregated_contact_data\n        LEFT JOIN contact_sorting_index\n            ON aggregated_contact_data._id =\n                                                                contact_sorting_index.aggregated_contact_id\n        LEFT JOIN contact_settings\n            ON aggregated_contact_data.tc_id = contact_settings.tc_id\n        WHERE contact_name IS NOT NULL\n            AND contact_name NOT IN (\'\', \'Truecaller Verification\')\n            AND contact_default_number NOT NULL\n            OR contact_phonebook_id IS NOT NULL\n    "

    invoke-static {v1, v2, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/a/m0/c1/g;->a:Ljava/lang/String;

    const-string v1, "\n    CREATE VIEW sorted_contacts_shallow AS\n        SELECT\n            "

    .line 3
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    new-instance v2, Ls1/z/c/f0;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ls1/z/c/f0;-><init>(I)V

    .line 5
    iget-object v5, v2, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    const-string v6, "tc_id"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v5, Le/a/m0/a1$d;->c:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ls1/z/c/f0;->b()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 7
    iget-object v2, v2, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, [Ljava/lang/String;

    const-string v5, "aggregated_contact"

    invoke-static {v5, v4, v2}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\n            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v3, v4, v0}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ",\n            contact_settings.hidden_from_identified\n        FROM aggregated_contact\n        LEFT JOIN contact_sorting_index\n            ON aggregated_contact._id = contact_sorting_index.aggregated_contact_id\n        LEFT JOIN contact_settings\n            ON aggregated_contact.tc_id = contact_settings.tc_id\n        WHERE contact_name IS NOT NULL\n            AND contact_name NOT IN (\'\', \'Truecaller Verification\')\n            AND contact_default_number NOT NULL\n            OR contact_phonebook_id IS NOT NULL\n    "

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/g;->b:Ljava/lang/String;

    return-void
.end method
