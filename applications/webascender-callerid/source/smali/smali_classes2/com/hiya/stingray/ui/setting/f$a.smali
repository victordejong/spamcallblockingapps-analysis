.class public final enum Lcom/hiya/stingray/ui/setting/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/setting/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/setting/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/setting/f$a;

.field public static final enum DEFAULT:Lcom/hiya/stingray/ui/setting/f$a;

.field public static final enum ERROR_REMOVING:Lcom/hiya/stingray/ui/setting/f$a;

.field public static final enum REMOVED:Lcom/hiya/stingray/ui/setting/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hiya/stingray/ui/setting/f$a;

    new-instance v1, Lcom/hiya/stingray/ui/setting/f$a;

    const-string v2, "ERROR_REMOVING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/setting/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/setting/f$a;->ERROR_REMOVING:Lcom/hiya/stingray/ui/setting/f$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/setting/f$a;

    const-string v2, "REMOVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/setting/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/setting/f$a;->REMOVED:Lcom/hiya/stingray/ui/setting/f$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/setting/f$a;

    const-string v2, "DEFAULT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/setting/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/setting/f$a;->DEFAULT:Lcom/hiya/stingray/ui/setting/f$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/ui/setting/f$a;->$VALUES:[Lcom/hiya/stingray/ui/setting/f$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/setting/f$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/setting/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/setting/f$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/setting/f$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/setting/f$a;->$VALUES:[Lcom/hiya/stingray/ui/setting/f$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/setting/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/setting/f$a;

    return-object v0
.end method
