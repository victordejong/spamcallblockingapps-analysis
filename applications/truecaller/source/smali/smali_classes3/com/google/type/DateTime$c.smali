.class public final enum Lcom/google/type/DateTime$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/type/DateTime$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/type/DateTime$c;

.field public static final enum b:Lcom/google/type/DateTime$c;

.field public static final enum c:Lcom/google/type/DateTime$c;

.field public static final synthetic d:[Lcom/google/type/DateTime$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/type/DateTime$c;

    const-string v1, "UTC_OFFSET"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/type/DateTime$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DateTime$c;->a:Lcom/google/type/DateTime$c;

    .line 2
    new-instance v1, Lcom/google/type/DateTime$c;

    const-string v3, "TIME_ZONE"

    const/4 v4, 0x1

    const/16 v5, 0x9

    invoke-direct {v1, v3, v4, v5}, Lcom/google/type/DateTime$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/type/DateTime$c;->b:Lcom/google/type/DateTime$c;

    .line 3
    new-instance v3, Lcom/google/type/DateTime$c;

    const-string v5, "TIMEOFFSET_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/google/type/DateTime$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/type/DateTime$c;->c:Lcom/google/type/DateTime$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/type/DateTime$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/type/DateTime$c;->d:[Lcom/google/type/DateTime$c;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/type/DateTime$c;
    .locals 1

    .line 1
    const-class v0, Lcom/google/type/DateTime$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime$c;

    return-object p0
.end method

.method public static values()[Lcom/google/type/DateTime$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/type/DateTime$c;->d:[Lcom/google/type/DateTime$c;

    invoke-virtual {v0}, [Lcom/google/type/DateTime$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/type/DateTime$c;

    return-object v0
.end method
