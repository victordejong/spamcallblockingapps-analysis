.class public final enum Le/n/d/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/n/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/n/d/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD:Le/n/d/i$a;

.field public static final enum EMPTY:Le/n/d/i$a;

.field public static final synthetic a:[Le/n/d/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/n/d/i$a;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/n/d/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/n/d/i$a;->EMPTY:Le/n/d/i$a;

    .line 2
    new-instance v1, Le/n/d/i$a;

    const-string v3, "AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/n/d/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/n/d/i$a;->AD:Le/n/d/i$a;

    const/4 v3, 0x2

    new-array v3, v3, [Le/n/d/i$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Le/n/d/i$a;->a:[Le/n/d/i$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/n/d/i$a;
    .locals 1

    .line 1
    const-class v0, Le/n/d/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/n/d/i$a;

    return-object p0
.end method

.method public static values()[Le/n/d/i$a;
    .locals 1

    .line 1
    sget-object v0, Le/n/d/i$a;->a:[Le/n/d/i$a;

    invoke-virtual {v0}, [Le/n/d/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/n/d/i$a;

    return-object v0
.end method
