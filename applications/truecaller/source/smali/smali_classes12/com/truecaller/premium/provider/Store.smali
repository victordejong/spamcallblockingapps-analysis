.class public final enum Lcom/truecaller/premium/provider/Store;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/provider/Store$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/provider/Store;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/premium/provider/Store;",
        "",
        "",
        "providerName",
        "Ljava/lang/String;",
        "getProviderName",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "GOOGLE_PLAY",
        "WEB",
        "NONE",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/provider/Store;

.field public static final Companion:Lcom/truecaller/premium/provider/Store$a;

.field public static final enum GOOGLE_PLAY:Lcom/truecaller/premium/provider/Store;

.field public static final enum NONE:Lcom/truecaller/premium/provider/Store;

.field public static final enum WEB:Lcom/truecaller/premium/provider/Store;


# instance fields
.field private final providerName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/premium/provider/Store;

    new-instance v1, Lcom/truecaller/premium/provider/Store;

    const-string v2, "GOOGLE_PLAY"

    const/4 v3, 0x0

    const-string v4, "googleplay"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/provider/Store;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/provider/Store;->GOOGLE_PLAY:Lcom/truecaller/premium/provider/Store;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/provider/Store;

    const-string v2, "WEB"

    const/4 v3, 0x1

    const-string v4, "web"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/provider/Store;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/provider/Store;->WEB:Lcom/truecaller/premium/provider/Store;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/provider/Store;

    const-string v2, "NONE"

    const/4 v3, 0x2

    const-string v4, "none"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/provider/Store;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/premium/provider/Store;->NONE:Lcom/truecaller/premium/provider/Store;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/premium/provider/Store;->$VALUES:[Lcom/truecaller/premium/provider/Store;

    new-instance v0, Lcom/truecaller/premium/provider/Store$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/premium/provider/Store$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/premium/provider/Store;->Companion:Lcom/truecaller/premium/provider/Store$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/premium/provider/Store;->providerName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/provider/Store;
    .locals 1

    const-class v0, Lcom/truecaller/premium/provider/Store;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/provider/Store;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/provider/Store;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/provider/Store;->$VALUES:[Lcom/truecaller/premium/provider/Store;

    invoke-virtual {v0}, [Lcom/truecaller/premium/provider/Store;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/provider/Store;

    return-object v0
.end method


# virtual methods
.method public final getProviderName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/provider/Store;->providerName:Ljava/lang/String;

    return-object v0
.end method
