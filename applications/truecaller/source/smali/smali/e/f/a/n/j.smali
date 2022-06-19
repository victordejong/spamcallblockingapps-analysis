.class public final enum Le/f/a/n/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/f/a/n/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/f/a/n/j;

.field public static final enum b:Le/f/a/n/j;

.field public static final synthetic c:[Le/f/a/n/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/f/a/n/j;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/f/a/n/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/f/a/n/j;->a:Le/f/a/n/j;

    .line 2
    new-instance v1, Le/f/a/n/j;

    const-string v3, "DISPLAY_P3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/f/a/n/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/f/a/n/j;->b:Le/f/a/n/j;

    const/4 v3, 0x2

    new-array v3, v3, [Le/f/a/n/j;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Le/f/a/n/j;->c:[Le/f/a/n/j;

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

.method public static valueOf(Ljava/lang/String;)Le/f/a/n/j;
    .locals 1

    .line 1
    const-class v0, Le/f/a/n/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/f/a/n/j;

    return-object p0
.end method

.method public static values()[Le/f/a/n/j;
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/j;->c:[Le/f/a/n/j;

    invoke-virtual {v0}, [Le/f/a/n/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/f/a/n/j;

    return-object v0
.end method
