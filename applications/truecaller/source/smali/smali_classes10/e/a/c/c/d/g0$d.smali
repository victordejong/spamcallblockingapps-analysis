.class public Le/a/c/c/d/g0$d;
.super Ln3/c0/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/g0;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/a/c/c/d/g0;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/c0;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "\n        UPDATE sender_info SET grammars_enabled = ?\n        WHERE \n        sender = ? AND \n       (sender_type = ? OR\n            (sender_type IS NULL AND ? is NULL)\n        ) AND \n        smart_features_status = ? AND\n        source_type = ? AND \n        (country_code = ? OR\n            (country_code IS NULL AND ? is NULL))\n    "

    return-object v0
.end method
