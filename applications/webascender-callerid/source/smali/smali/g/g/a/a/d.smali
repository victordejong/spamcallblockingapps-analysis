.class public final enum Lg/g/a/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/d;",
        ">;",
        "Lg/g/a/a/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/d;

.field public static final enum UNDEFINED:Lg/g/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg/g/a/a/d;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/g/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/g/a/a/d;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lg/g/a/a/d;->$VALUES:[Lg/g/a/a/d;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/d;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/d;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/d;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/d;->$VALUES:[Lg/g/a/a/d;

    invoke-virtual {v0}, [Lg/g/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/d;

    return-object v0
.end method
