.class public final enum Le/a/d/c0/x1/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/d/c0/x1/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/d/c0/x1/c;

.field public static final enum b:Le/a/d/c0/x1/c;

.field public static final synthetic c:[Le/a/d/c0/x1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/d/c0/x1/c;

    new-instance v1, Le/a/d/c0/x1/c;

    const-string v2, "RING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/d/c0/x1/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/d/c0/x1/c;->a:Le/a/d/c0/x1/c;

    aput-object v1, v0, v3

    new-instance v1, Le/a/d/c0/x1/c;

    const-string v2, "VOICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Le/a/d/c0/x1/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/d/c0/x1/c;->b:Le/a/d/c0/x1/c;

    aput-object v1, v0, v3

    sput-object v0, Le/a/d/c0/x1/c;->c:[Le/a/d/c0/x1/c;

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

.method public static valueOf(Ljava/lang/String;)Le/a/d/c0/x1/c;
    .locals 1

    const-class v0, Le/a/d/c0/x1/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/d/c0/x1/c;

    return-object p0
.end method

.method public static values()[Le/a/d/c0/x1/c;
    .locals 1

    sget-object v0, Le/a/d/c0/x1/c;->c:[Le/a/d/c0/x1/c;

    invoke-virtual {v0}, [Le/a/d/c0/x1/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/d/c0/x1/c;

    return-object v0
.end method
