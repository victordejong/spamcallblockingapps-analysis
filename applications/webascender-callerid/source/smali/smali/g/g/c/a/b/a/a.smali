.class public final enum Lg/g/c/a/b/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/c/a/b/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/c/a/b/a/a;

.field public static final enum FIXED:Lg/g/c/a/b/a/a;

.field public static final enum FIXED_OR_MOBILE:Lg/g/c/a/b/a/a;

.field public static final enum MOBILE:Lg/g/c/a/b/a/a;

.field public static final enum OTHER:Lg/g/c/a/b/a/a;

.field public static final enum PREMIUM:Lg/g/c/a/b/a/a;

.field public static final enum TOLL_FREE:Lg/g/c/a/b/a/a;

.field public static final enum UNKNOWN:Lg/g/c/a/b/a/a;

.field public static final enum VOIP:Lg/g/c/a/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lg/g/c/a/b/a/a;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/g/c/a/b/a/a;->FIXED:Lg/g/c/a/b/a/a;

    .line 2
    new-instance v1, Lg/g/c/a/b/a/a;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/c/a/b/a/a;->MOBILE:Lg/g/c/a/b/a/a;

    .line 3
    new-instance v3, Lg/g/c/a/b/a/a;

    const-string v5, "FIXED_OR_MOBILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/g/c/a/b/a/a;->FIXED_OR_MOBILE:Lg/g/c/a/b/a/a;

    .line 4
    new-instance v5, Lg/g/c/a/b/a/a;

    const-string v7, "PREMIUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/g/c/a/b/a/a;->PREMIUM:Lg/g/c/a/b/a/a;

    .line 5
    new-instance v7, Lg/g/c/a/b/a/a;

    const-string v9, "TOLL_FREE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/g/c/a/b/a/a;->TOLL_FREE:Lg/g/c/a/b/a/a;

    .line 6
    new-instance v9, Lg/g/c/a/b/a/a;

    const-string v11, "VOIP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/g/c/a/b/a/a;->VOIP:Lg/g/c/a/b/a/a;

    .line 7
    new-instance v11, Lg/g/c/a/b/a/a;

    const-string v13, "OTHER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/g/c/a/b/a/a;->OTHER:Lg/g/c/a/b/a/a;

    .line 8
    new-instance v13, Lg/g/c/a/b/a/a;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lg/g/c/a/b/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/g/c/a/b/a/a;->UNKNOWN:Lg/g/c/a/b/a/a;

    const/16 v15, 0x8

    new-array v15, v15, [Lg/g/c/a/b/a/a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lg/g/c/a/b/a/a;->$VALUES:[Lg/g/c/a/b/a/a;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/c/a/b/a/a;
    .locals 1

    .line 1
    const-class v0, Lg/g/c/a/b/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/c/a/b/a/a;

    return-object p0
.end method

.method public static values()[Lg/g/c/a/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lg/g/c/a/b/a/a;->$VALUES:[Lg/g/c/a/b/a/a;

    invoke-virtual {v0}, [Lg/g/c/a/b/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/c/a/b/a/a;

    return-object v0
.end method


# virtual methods
.method public final id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
