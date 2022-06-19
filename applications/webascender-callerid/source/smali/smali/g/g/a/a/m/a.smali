.class public final enum Lg/g/a/a/m/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/m/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/m/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/m/a;

.field public static final Companion:Lg/g/a/a/m/a$a;

.field public static final enum DIRECTORY:Lg/g/a/a/m/a;

.field public static final enum UNKNOWN:Lg/g/a/a/m/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lg/g/a/a/m/a;

    new-instance v1, Lg/g/a/a/m/a;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/a/a/m/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/m/a;->UNKNOWN:Lg/g/a/a/m/a;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/m/a;

    const-string v2, "DIRECTORY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/a/a/m/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/m/a;->DIRECTORY:Lg/g/a/a/m/a;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/a/a/m/a;->$VALUES:[Lg/g/a/a/m/a;

    new-instance v0, Lg/g/a/a/m/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/m/a$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/a/a/m/a;->Companion:Lg/g/a/a/m/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/m/a;
    .locals 1

    const-class v0, Lg/g/a/a/m/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/m/a;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/m/a;
    .locals 1

    sget-object v0, Lg/g/a/a/m/a;->$VALUES:[Lg/g/a/a/m/a;

    invoke-virtual {v0}, [Lg/g/a/a/m/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/m/a;

    return-object v0
.end method
