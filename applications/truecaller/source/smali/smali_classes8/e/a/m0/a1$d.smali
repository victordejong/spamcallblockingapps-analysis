.class public interface abstract Le/a/m0/a1$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    const-string v0, "contact_name"

    const-string v1, "contact_transliterated_name"

    const-string v2, "contact_is_favorite"

    const-string v3, "contact_favorite_position"

    const-string v4, "contact_handle"

    const-string v5, "contact_alt_name"

    const-string v6, "contact_gender"

    const-string v7, "contact_about"

    const-string v8, "contact_image_url"

    const-string v9, "contact_job_title"

    const-string v10, "contact_company"

    const-string v11, "contact_access"

    const-string v12, "contact_common_connections"

    const-string v13, "contact_search_time"

    const-string v14, "contact_source"

    const-string v15, "contact_default_number"

    const-string v16, "contact_phonebook_id"

    const-string v17, "contact_phonebook_hash"

    const-string v18, "contact_phonebook_lookup"

    const-string v19, "contact_spam_score"

    const-string v20, "contact_spam_type"

    const-string v21, "contact_badges"

    const-string v22, "contact_im_id"

    const-string v23, "spam_categories"

    .line 1
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/a1$d;->b:[Ljava/lang/String;

    const-string v1, "contact_name"

    const-string v2, "contact_image_url"

    const-string v3, "contact_default_number"

    const-string v4, "contact_is_favorite"

    const-string v5, "contact_phonebook_id"

    const-string v6, "contact_source"

    const-string v7, "contact_spam_type"

    .line 2
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/a1$d;->c:[Ljava/lang/String;

    return-void
.end method
