.class public final enum Lcom/hiya/stingray/ui/w/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/w/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/w/c$b;

.field public static final enum BUSINESS:Lcom/hiya/stingray/ui/w/c$b;

.field public static final enum BUSINESSES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

.field public static final enum CONTACTS_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

.field public static final enum IDENTITIES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

.field public static final enum IDENTITY:Lcom/hiya/stingray/ui/w/c$b;

.field public static final enum LOCATION_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

.field public static final enum LOOKUP:Lcom/hiya/stingray/ui/w/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/hiya/stingray/ui/w/c$b;

    new-instance v1, Lcom/hiya/stingray/ui/w/c$b;

    const-string v2, "IDENTITY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/w/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/w/c$b;->IDENTITY:Lcom/hiya/stingray/ui/w/c$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/w/c$b;

    const-string v2, "BUSINESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/w/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/w/c$b;->BUSINESS:Lcom/hiya/stingray/ui/w/c$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/w/c$b;

    const-string v2, "CONTACTS_PERMISSION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/w/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/w/c$b;->CONTACTS_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/w/c$b;

    const-string v2, "LOOKUP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/w/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/w/c$b;->LOOKUP:Lcom/hiya/stingray/ui/w/c$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/w/c$b;

    const-string v2, "LOCATION_PERMISSION"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/w/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/w/c$b;->LOCATION_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/w/c$b;

    const-string v2, "BUSINESSES_STATUS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/w/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/w/c$b;->BUSINESSES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/w/c$b;

    const-string v2, "IDENTITIES_STATUS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/w/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/w/c$b;->IDENTITIES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/ui/w/c$b;->$VALUES:[Lcom/hiya/stingray/ui/w/c$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/w/c$b;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/w/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/w/c$b;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/w/c$b;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->$VALUES:[Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/w/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/w/c$b;

    return-object v0
.end method
