.class public final enum Lcom/hiya/stingray/manager/c4$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/c4$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/c4$c;

.field public static final enum FACEBOOK:Lcom/hiya/stingray/manager/c4$c;

.field public static final enum HELP:Lcom/hiya/stingray/manager/c4$c;

.field public static final enum RATE:Lcom/hiya/stingray/manager/c4$c;

.field public static final enum SHARE:Lcom/hiya/stingray/manager/c4$c;

.field public static final enum TWITTER:Lcom/hiya/stingray/manager/c4$c;

.field public static final enum WEBSITE:Lcom/hiya/stingray/manager/c4$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hiya/stingray/manager/c4$c;

    new-instance v1, Lcom/hiya/stingray/manager/c4$c;

    const-string v2, "HELP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/c4$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/c4$c;->HELP:Lcom/hiya/stingray/manager/c4$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/c4$c;

    const-string v2, "RATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/c4$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/c4$c;->RATE:Lcom/hiya/stingray/manager/c4$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/c4$c;

    const-string v2, "SHARE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/c4$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/c4$c;->SHARE:Lcom/hiya/stingray/manager/c4$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/c4$c;

    const-string v2, "WEBSITE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/c4$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/c4$c;->WEBSITE:Lcom/hiya/stingray/manager/c4$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/c4$c;

    const-string v2, "FACEBOOK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/c4$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/c4$c;->FACEBOOK:Lcom/hiya/stingray/manager/c4$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/c4$c;

    const-string v2, "TWITTER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/c4$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/manager/c4$c;->TWITTER:Lcom/hiya/stingray/manager/c4$c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/manager/c4$c;->$VALUES:[Lcom/hiya/stingray/manager/c4$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/c4$c;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/c4$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/c4$c;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/c4$c;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/c4$c;->$VALUES:[Lcom/hiya/stingray/manager/c4$c;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/c4$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/c4$c;

    return-object v0
.end method
