.class public final enum Le/n/c/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/n/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Le/n/c/e;

.field public static final enum NONE:Le/n/c/e;

.field public static final enum PORTRAIT:Le/n/c/e;

.field public static final synthetic b:[Le/n/c/e;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Le/n/c/e;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Le/n/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/n/c/e;->PORTRAIT:Le/n/c/e;

    .line 2
    new-instance v1, Le/n/c/e;

    const-string v4, "LANDSCAPE"

    invoke-direct {v1, v4, v3, v2}, Le/n/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/n/c/e;->LANDSCAPE:Le/n/c/e;

    .line 3
    new-instance v4, Le/n/c/e;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Le/n/c/e;-><init>(Ljava/lang/String;II)V

    sput-object v4, Le/n/c/e;->NONE:Le/n/c/e;

    const/4 v5, 0x3

    new-array v5, v5, [Le/n/c/e;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    .line 4
    sput-object v5, Le/n/c/e;->b:[Le/n/c/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Le/n/c/e;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/n/c/e;
    .locals 1

    .line 1
    const-class v0, Le/n/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/n/c/e;

    return-object p0
.end method

.method public static values()[Le/n/c/e;
    .locals 1

    .line 1
    sget-object v0, Le/n/c/e;->b:[Le/n/c/e;

    invoke-virtual {v0}, [Le/n/c/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/n/c/e;

    return-object v0
.end method
