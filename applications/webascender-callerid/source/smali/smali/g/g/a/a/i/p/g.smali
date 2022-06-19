.class public final enum Lg/g/a/a/i/p/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/i/p/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/i/p/g;

.field public static final enum FRAUD:Lg/g/a/a/i/p/g;

.field public static final enum OK:Lg/g/a/a/i/p/g;

.field public static final enum SPAM:Lg/g/a/a/i/p/g;

.field public static final enum UNCERTAIN:Lg/g/a/a/i/p/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lg/g/a/a/i/p/g;

    new-instance v1, Lg/g/a/a/i/p/g;

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/g;->OK:Lg/g/a/a/i/p/g;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/g;

    const-string v2, "UNCERTAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/g;->UNCERTAIN:Lg/g/a/a/i/p/g;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/g;

    const-string v2, "SPAM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/g;->SPAM:Lg/g/a/a/i/p/g;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/p/g;

    const-string v2, "FRAUD"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/p/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/p/g;->FRAUD:Lg/g/a/a/i/p/g;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/a/a/i/p/g;->$VALUES:[Lg/g/a/a/i/p/g;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/i/p/g;
    .locals 1

    const-class v0, Lg/g/a/a/i/p/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/i/p/g;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/i/p/g;
    .locals 1

    sget-object v0, Lg/g/a/a/i/p/g;->$VALUES:[Lg/g/a/a/i/p/g;

    invoke-virtual {v0}, [Lg/g/a/a/i/p/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/i/p/g;

    return-object v0
.end method
