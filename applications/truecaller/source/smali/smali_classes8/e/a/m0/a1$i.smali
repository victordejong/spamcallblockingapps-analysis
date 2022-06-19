.class public interface abstract Le/a/m0/a1$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# static fields
.field public static final e:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const-string v0, "event_id"

    const-string v1, "normalized_number"

    const-string v2, "raw_number"

    const-string v3, "number_type"

    const-string v4, "country_code"

    const-string v5, "cached_name"

    const-string v6, "type"

    const-string v7, "action"

    const-string v8, "call_log_id"

    const-string v9, "timestamp"

    const-string v10, "duration"

    const-string v11, "subscription_id"

    const-string v12, "feature"

    const-string v13, "new"

    const-string v14, "is_read"

    const-string v15, "subscription_component_name"

    const-string v16, "filter_source"

    const-string v17, "ringing_duration"

    .line 1
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/a1$i;->e:[Ljava/lang/String;

    return-void
.end method
