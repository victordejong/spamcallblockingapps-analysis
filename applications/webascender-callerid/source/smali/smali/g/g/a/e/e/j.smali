.class public final enum Lg/g/a/e/e/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/e/e/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/e/e/j;

.field public static final enum EVENT_PROFILE:Lg/g/a/e/e/j;

.field public static final enum SCP:Lg/g/a/e/e/j;

.field public static final enum TOP_SPAMMER:Lg/g/a/e/e/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lg/g/a/e/e/j;

    new-instance v1, Lg/g/a/e/e/j;

    const-string v2, "EVENT_PROFILE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/a/e/e/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/e/e/j;->EVENT_PROFILE:Lg/g/a/e/e/j;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/e/e/j;

    const-string v2, "TOP_SPAMMER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/a/e/e/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/e/e/j;->TOP_SPAMMER:Lg/g/a/e/e/j;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/a/e/e/j;

    const-string v2, "SCP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/a/e/e/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/e/e/j;->SCP:Lg/g/a/e/e/j;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/a/e/e/j;->$VALUES:[Lg/g/a/e/e/j;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/a/e/e/j;
    .locals 1

    const-class v0, Lg/g/a/e/e/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/e/e/j;

    return-object p0
.end method

.method public static values()[Lg/g/a/e/e/j;
    .locals 1

    sget-object v0, Lg/g/a/e/e/j;->$VALUES:[Lg/g/a/e/e/j;

    invoke-virtual {v0}, [Lg/g/a/e/e/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/e/e/j;

    return-object v0
.end method
