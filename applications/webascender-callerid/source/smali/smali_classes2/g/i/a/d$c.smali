.class public final enum Lg/i/a/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/i/a/d$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/i/a/d$c;

.field public static final enum HIGH:Lg/i/a/d$c;

.field public static final enum LOW:Lg/i/a/d$c;

.field public static final enum NORMAL:Lg/i/a/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg/i/a/d$c;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/i/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/i/a/d$c;->LOW:Lg/i/a/d$c;

    .line 2
    new-instance v1, Lg/i/a/d$c;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/i/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/i/a/d$c;->NORMAL:Lg/i/a/d$c;

    .line 3
    new-instance v3, Lg/i/a/d$c;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/i/a/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/i/a/d$c;->HIGH:Lg/i/a/d$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/i/a/d$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lg/i/a/d$c;->$VALUES:[Lg/i/a/d$c;

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

.method public static valueOf(Ljava/lang/String;)Lg/i/a/d$c;
    .locals 1

    .line 1
    const-class v0, Lg/i/a/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/i/a/d$c;

    return-object p0
.end method

.method public static values()[Lg/i/a/d$c;
    .locals 1

    .line 1
    sget-object v0, Lg/i/a/d$c;->$VALUES:[Lg/i/a/d$c;

    invoke-virtual {v0}, [Lg/i/a/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/i/a/d$c;

    return-object v0
.end method
