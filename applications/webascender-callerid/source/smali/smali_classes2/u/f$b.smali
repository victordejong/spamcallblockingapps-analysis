.class final enum Lu/f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/f$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu/f$b;

.field public static final enum IPv4:Lu/f$b;

.field public static final enum IPv4Embedded:Lu/f$b;

.field public static final enum IPv6:Lu/f$b;

.field public static final enum Unknown:Lu/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lu/f$b;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/f$b;->Unknown:Lu/f$b;

    .line 2
    new-instance v1, Lu/f$b;

    const-string v3, "IPv4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/f$b;->IPv4:Lu/f$b;

    .line 3
    new-instance v3, Lu/f$b;

    const-string v5, "IPv4Embedded"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lu/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu/f$b;->IPv4Embedded:Lu/f$b;

    .line 4
    new-instance v5, Lu/f$b;

    const-string v7, "IPv6"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lu/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lu/f$b;->IPv6:Lu/f$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lu/f$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lu/f$b;->$VALUES:[Lu/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lu/f$b;
    .locals 1

    .line 1
    const-class v0, Lu/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/f$b;

    return-object p0
.end method

.method public static values()[Lu/f$b;
    .locals 1

    .line 1
    sget-object v0, Lu/f$b;->$VALUES:[Lu/f$b;

    invoke-virtual {v0}, [Lu/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/f$b;

    return-object v0
.end method
