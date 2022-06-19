.class public final Le/a/l0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    const-string v0, "_id"

    const-string v1, "tc_id"

    const-string v2, "normalized_number"

    const-string v3, "raw_number"

    const-string v4, "country_code"

    const-string v5, "number_type"

    const-string v6, "type"

    const-string v7, "action"

    const-string v8, "timestamp"

    const-string v9, "subscription_id"

    const-string v10, "subscription_component_name"

    const-string v11, "feature"

    const-string v12, "filter_source"

    const-string v13, "history_aggregated_contact_id"

    const-string v14, "history_aggregated_contact_tc_id"

    const-string v15, "call_log_id"

    const-string v16, "tc_flag"

    const-string v17, "contact_name"

    const-string v18, "contact_image_url"

    const-string v19, "contact_phonebook_id"

    const-string v20, "contact_source"

    const-string v21, "contact_spam_score"

    const-string v22, "contact_spam_type"

    const-string v23, "spam_categories"

    const-string v24, "contact_badges"

    const-string v25, "contact_premium_level"

    const-string v26, "contact_premium_scope"

    .line 1
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Le/a/l0/j;->a:[Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, " AND "

    .line 2
    invoke-static {p0, p2, p1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    :cond_0
    move-object p0, v1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_0

    :goto_0
    return-object p0
.end method
