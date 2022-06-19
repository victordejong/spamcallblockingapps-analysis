.class public final enum Lg/g/a/a/i/k/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/i/k/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/i/k/a;

.field public static final enum AUTOVM_INTL:Lg/g/a/a/i/k/a;

.field public static final enum AUTOVM_PRIVATE:Lg/g/a/a/i/k/a;

.field public static final enum AUTOVM_REP:Lg/g/a/a/i/k/a;

.field public static final enum AUTOVM_UNKNOWN:Lg/g/a/a/i/k/a;

.field public static final enum OK:Lg/g/a/a/i/k/a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lg/g/a/a/i/k/a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/g/a/a/i/k/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/g/a/a/i/k/a;->OK:Lg/g/a/a/i/k/a;

    .line 2
    new-instance v1, Lg/g/a/a/i/k/a;

    const-string v3, "AUTOVM_REP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/g/a/a/i/k/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/k/a;->AUTOVM_REP:Lg/g/a/a/i/k/a;

    new-instance v3, Lg/g/a/a/i/k/a;

    const-string v5, "AUTOVM_PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/g/a/a/i/k/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/g/a/a/i/k/a;->AUTOVM_PRIVATE:Lg/g/a/a/i/k/a;

    new-instance v5, Lg/g/a/a/i/k/a;

    const-string v7, "AUTOVM_INTL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/g/a/a/i/k/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/g/a/a/i/k/a;->AUTOVM_INTL:Lg/g/a/a/i/k/a;

    new-instance v7, Lg/g/a/a/i/k/a;

    const-string v9, "AUTOVM_UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/g/a/a/i/k/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/g/a/a/i/k/a;->AUTOVM_UNKNOWN:Lg/g/a/a/i/k/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/g/a/a/i/k/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lg/g/a/a/i/k/a;->$VALUES:[Lg/g/a/a/i/k/a;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/i/k/a;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/i/k/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/i/k/a;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/i/k/a;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/i/k/a;->$VALUES:[Lg/g/a/a/i/k/a;

    invoke-virtual {v0}, [Lg/g/a/a/i/k/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/i/k/a;

    return-object v0
.end method
