.class public final enum Lg/g/a/a/i/j/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/i/j/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/i/j/c;

.field public static final enum DELIVERY:Lg/g/a/a/i/j/c;

.field public static final enum OTHER:Lg/g/a/a/i/j/c;

.field public static final enum RESERVATION:Lg/g/a/a/i/j/c;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lg/g/a/a/i/j/c;

    const-string v1, "RESERVATION"

    const/4 v2, 0x0

    const-string v3, "Reservation"

    invoke-direct {v0, v1, v2, v3}, Lg/g/a/a/i/j/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/g/a/a/i/j/c;->RESERVATION:Lg/g/a/a/i/j/c;

    new-instance v1, Lg/g/a/a/i/j/c;

    const-string v3, "DELIVERY"

    const/4 v4, 0x1

    const-string v5, "Delivery"

    invoke-direct {v1, v3, v4, v5}, Lg/g/a/a/i/j/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/a/a/i/j/c;->DELIVERY:Lg/g/a/a/i/j/c;

    new-instance v3, Lg/g/a/a/i/j/c;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    const-string v7, "Other"

    invoke-direct {v3, v5, v6, v7}, Lg/g/a/a/i/j/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lg/g/a/a/i/j/c;->OTHER:Lg/g/a/a/i/j/c;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/g/a/a/i/j/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lg/g/a/a/i/j/c;->$VALUES:[Lg/g/a/a/i/j/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lg/g/a/a/i/j/c;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lg/g/a/a/i/j/c;
    .locals 5

    .line 1
    invoke-static {}, Lg/g/a/a/i/j/c;->values()[Lg/g/a/a/i/j/c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lg/g/a/a/i/j/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/i/j/c;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/i/j/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/i/j/c;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/i/j/c;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/i/j/c;->$VALUES:[Lg/g/a/a/i/j/c;

    invoke-virtual {v0}, [Lg/g/a/a/i/j/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/i/j/c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/j/c;->type:Ljava/lang/String;

    return-object v0
.end method
