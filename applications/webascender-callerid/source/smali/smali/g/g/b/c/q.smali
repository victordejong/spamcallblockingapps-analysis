.class public final enum Lg/g/b/c/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/c/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/c/q;

.field public static final enum FRAUD:Lg/g/b/c/q;

.field public static final enum OK:Lg/g/b/c/q;

.field public static final enum SPAM:Lg/g/b/c/q;

.field public static final enum UNCERTAIN:Lg/g/b/c/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lg/g/b/c/q;

    new-instance v1, Lg/g/b/c/q;

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/b/c/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/q;->OK:Lg/g/b/c/q;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/q;

    const-string v2, "UNCERTAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/b/c/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/q;->UNCERTAIN:Lg/g/b/c/q;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/q;

    const-string v2, "SPAM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/b/c/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/q;

    const-string v2, "FRAUD"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/g/b/c/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/c/q;->$VALUES:[Lg/g/b/c/q;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/b/c/q;
    .locals 1

    const-class v0, Lg/g/b/c/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/c/q;

    return-object p0
.end method

.method public static values()[Lg/g/b/c/q;
    .locals 1

    sget-object v0, Lg/g/b/c/q;->$VALUES:[Lg/g/b/c/q;

    invoke-virtual {v0}, [Lg/g/b/c/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/c/q;

    return-object v0
.end method
