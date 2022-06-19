.class public final enum Le/a/a/c/v7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/a/c/v7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/a/c/v7;

.field public static final enum b:Le/a/a/c/v7;

.field public static final synthetic c:[Le/a/a/c/v7;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/a/c/v7;

    new-instance v1, Le/a/a/c/v7;

    const-string v2, "CALLS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/c/v7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/a/c/v7;->a:Le/a/a/c/v7;

    aput-object v1, v0, v3

    new-instance v1, Le/a/a/c/v7;

    const-string v2, "MESSAGES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Le/a/a/c/v7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/a/c/v7;->b:Le/a/a/c/v7;

    aput-object v1, v0, v3

    sput-object v0, Le/a/a/c/v7;->c:[Le/a/a/c/v7;

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

.method public static valueOf(Ljava/lang/String;)Le/a/a/c/v7;
    .locals 1

    const-class v0, Le/a/a/c/v7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/a/c/v7;

    return-object p0
.end method

.method public static values()[Le/a/a/c/v7;
    .locals 1

    sget-object v0, Le/a/a/c/v7;->c:[Le/a/a/c/v7;

    invoke-virtual {v0}, [Le/a/a/c/v7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/a/c/v7;

    return-object v0
.end method
