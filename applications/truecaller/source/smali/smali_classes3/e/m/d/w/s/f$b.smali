.class public final enum Le/m/d/w/s/f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/w/s/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/d/w/s/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/d/w/s/f$b;

.field public static final enum b:Le/m/d/w/s/f$b;

.field public static final enum c:Le/m/d/w/s/f$b;

.field public static final synthetic d:[Le/m/d/w/s/f$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/m/d/w/s/f$b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/d/w/s/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/d/w/s/f$b;->a:Le/m/d/w/s/f$b;

    .line 2
    new-instance v1, Le/m/d/w/s/f$b;

    const-string v3, "BAD_CONFIG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/d/w/s/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/d/w/s/f$b;->b:Le/m/d/w/s/f$b;

    .line 3
    new-instance v3, Le/m/d/w/s/f$b;

    const-string v5, "AUTH_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/d/w/s/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/d/w/s/f$b;->c:Le/m/d/w/s/f$b;

    const/4 v5, 0x3

    new-array v5, v5, [Le/m/d/w/s/f$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/m/d/w/s/f$b;->d:[Le/m/d/w/s/f$b;

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

.method public static valueOf(Ljava/lang/String;)Le/m/d/w/s/f$b;
    .locals 1

    .line 1
    const-class v0, Le/m/d/w/s/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/d/w/s/f$b;

    return-object p0
.end method

.method public static values()[Le/m/d/w/s/f$b;
    .locals 1

    .line 1
    sget-object v0, Le/m/d/w/s/f$b;->d:[Le/m/d/w/s/f$b;

    invoke-virtual {v0}, [Le/m/d/w/s/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/d/w/s/f$b;

    return-object v0
.end method
