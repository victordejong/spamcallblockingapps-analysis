.class public final enum Lg/e/a/a/d/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/e/a/a/d/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/e/a/a/d/h$a;

.field public static final enum BOTH_SIDED:Lg/e/a/a/d/h$a;

.field public static final enum BOTTOM:Lg/e/a/a/d/h$a;

.field public static final enum BOTTOM_INSIDE:Lg/e/a/a/d/h$a;

.field public static final enum TOP:Lg/e/a/a/d/h$a;

.field public static final enum TOP_INSIDE:Lg/e/a/a/d/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lg/e/a/a/d/h$a;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/e/a/a/d/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/e/a/a/d/h$a;->TOP:Lg/e/a/a/d/h$a;

    new-instance v1, Lg/e/a/a/d/h$a;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/e/a/a/d/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/e/a/a/d/h$a;->BOTTOM:Lg/e/a/a/d/h$a;

    new-instance v3, Lg/e/a/a/d/h$a;

    const-string v5, "BOTH_SIDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/e/a/a/d/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/e/a/a/d/h$a;->BOTH_SIDED:Lg/e/a/a/d/h$a;

    new-instance v5, Lg/e/a/a/d/h$a;

    const-string v7, "TOP_INSIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/e/a/a/d/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/e/a/a/d/h$a;->TOP_INSIDE:Lg/e/a/a/d/h$a;

    new-instance v7, Lg/e/a/a/d/h$a;

    const-string v9, "BOTTOM_INSIDE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/e/a/a/d/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/e/a/a/d/h$a;->BOTTOM_INSIDE:Lg/e/a/a/d/h$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/e/a/a/d/h$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lg/e/a/a/d/h$a;->$VALUES:[Lg/e/a/a/d/h$a;

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

.method public static valueOf(Ljava/lang/String;)Lg/e/a/a/d/h$a;
    .locals 1

    .line 1
    const-class v0, Lg/e/a/a/d/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/e/a/a/d/h$a;

    return-object p0
.end method

.method public static values()[Lg/e/a/a/d/h$a;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/d/h$a;->$VALUES:[Lg/e/a/a/d/h$a;

    invoke-virtual {v0}, [Lg/e/a/a/d/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/e/a/a/d/h$a;

    return-object v0
.end method
