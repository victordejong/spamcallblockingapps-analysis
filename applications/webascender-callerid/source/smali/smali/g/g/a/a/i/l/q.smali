.class public final enum Lg/g/a/a/i/l/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/l/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/i/l/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/i/l/q;

.field public static final enum BUSINESS:Lg/g/a/a/i/l/q;

.field public static final Companion:Lg/g/a/a/i/l/q$a;

.field public static final enum WORD:Lg/g/a/a/i/l/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lg/g/a/a/i/l/q;

    new-instance v1, Lg/g/a/a/i/l/q;

    const-string v2, "BUSINESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/l/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/l/q;->BUSINESS:Lg/g/a/a/i/l/q;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/a/i/l/q;

    const-string v2, "WORD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/a/a/i/l/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/i/l/q;->WORD:Lg/g/a/a/i/l/q;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/a/a/i/l/q;->$VALUES:[Lg/g/a/a/i/l/q;

    new-instance v0, Lg/g/a/a/i/l/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/a/a/i/l/q$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/a/a/i/l/q;->Companion:Lg/g/a/a/i/l/q$a;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/i/l/q;
    .locals 1

    const-class v0, Lg/g/a/a/i/l/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/i/l/q;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/i/l/q;
    .locals 1

    sget-object v0, Lg/g/a/a/i/l/q;->$VALUES:[Lg/g/a/a/i/l/q;

    invoke-virtual {v0}, [Lg/g/a/a/i/l/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/i/l/q;

    return-object v0
.end method
