.class public final enum Lcom/hiya/stingray/util/i0/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/util/i0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/util/i0/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/util/i0/d$a;

.field public static final enum BINDINGS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

.field public static final enum BLOCK_STATUS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

.field public static final enum FETCH_MISSING_CALL_LOGS:Lcom/hiya/stingray/util/i0/d$a;

.field public static final enum FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/i0/d$a;

    const-string v1, "FULL_REFRESH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/util/i0/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    .line 2
    new-instance v1, Lcom/hiya/stingray/util/i0/d$a;

    const-string v3, "BLOCK_STATUS_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/util/i0/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/util/i0/d$a;->BLOCK_STATUS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

    .line 3
    new-instance v3, Lcom/hiya/stingray/util/i0/d$a;

    const-string v5, "FETCH_MISSING_CALL_LOGS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/stingray/util/i0/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/stingray/util/i0/d$a;->FETCH_MISSING_CALL_LOGS:Lcom/hiya/stingray/util/i0/d$a;

    .line 4
    new-instance v5, Lcom/hiya/stingray/util/i0/d$a;

    const-string v7, "BINDINGS_ONLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hiya/stingray/util/i0/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hiya/stingray/util/i0/d$a;->BINDINGS_ONLY:Lcom/hiya/stingray/util/i0/d$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/hiya/stingray/util/i0/d$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/hiya/stingray/util/i0/d$a;->$VALUES:[Lcom/hiya/stingray/util/i0/d$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/util/i0/d$a;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/util/i0/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/util/i0/d$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/util/i0/d$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/i0/d$a;->$VALUES:[Lcom/hiya/stingray/util/i0/d$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/util/i0/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/util/i0/d$a;

    return-object v0
.end method
