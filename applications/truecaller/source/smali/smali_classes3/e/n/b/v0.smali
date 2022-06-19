.class public final enum Le/n/b/v0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/n/b/v0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASSETURI:Le/n/b/v0;

.field public static final enum CACHEBUSTING:Le/n/b/v0;

.field public static final enum CONTENTPLAYHEAD:Le/n/b/v0;

.field public static final enum ERRORCODE:Le/n/b/v0;

.field public static final synthetic a:[Le/n/b/v0;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/n/b/v0;

    const-string v1, "ERRORCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/n/b/v0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/n/b/v0;->ERRORCODE:Le/n/b/v0;

    .line 2
    new-instance v1, Le/n/b/v0;

    const-string v3, "CONTENTPLAYHEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/n/b/v0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/n/b/v0;->CONTENTPLAYHEAD:Le/n/b/v0;

    .line 3
    new-instance v3, Le/n/b/v0;

    const-string v5, "CACHEBUSTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/n/b/v0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/n/b/v0;->CACHEBUSTING:Le/n/b/v0;

    .line 4
    new-instance v5, Le/n/b/v0;

    const-string v7, "ASSETURI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/n/b/v0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/n/b/v0;->ASSETURI:Le/n/b/v0;

    const/4 v7, 0x4

    new-array v7, v7, [Le/n/b/v0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/n/b/v0;->a:[Le/n/b/v0;

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

.method public static valueOf(Ljava/lang/String;)Le/n/b/v0;
    .locals 1

    .line 1
    const-class v0, Le/n/b/v0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/n/b/v0;

    return-object p0
.end method

.method public static values()[Le/n/b/v0;
    .locals 1

    .line 1
    sget-object v0, Le/n/b/v0;->a:[Le/n/b/v0;

    invoke-virtual {v0}, [Le/n/b/v0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/n/b/v0;

    return-object v0
.end method
