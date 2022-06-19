.class public abstract enum Le/m/e/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/e/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/e/a0;

.field public static final enum b:Le/m/e/a0;

.field public static final synthetic c:[Le/m/e/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/m/e/a0$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/e/a0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/e/a0;->a:Le/m/e/a0;

    .line 2
    new-instance v1, Le/m/e/a0$b;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/e/a0$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/e/a0;->b:Le/m/e/a0;

    const/4 v3, 0x2

    new-array v3, v3, [Le/m/e/a0;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Le/m/e/a0;->c:[Le/m/e/a0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILe/m/e/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/m/e/a0;
    .locals 1

    .line 1
    const-class v0, Le/m/e/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/e/a0;

    return-object p0
.end method

.method public static values()[Le/m/e/a0;
    .locals 1

    .line 1
    sget-object v0, Le/m/e/a0;->c:[Le/m/e/a0;

    invoke-virtual {v0}, [Le/m/e/a0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/e/a0;

    return-object v0
.end method
