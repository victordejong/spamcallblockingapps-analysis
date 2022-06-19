.class public final Le/a/i/g0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "placement"

    const-string v1, "campaign_id"

    const-string v2, "expiration"

    const-string v3, "start"

    const-string v4, "end"

    const-string v5, "number"

    const-string v6, "_count"

    const-string v7, "_id"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/a/i/g0/d;->a:Ljava/util/Set;

    return-void
.end method
