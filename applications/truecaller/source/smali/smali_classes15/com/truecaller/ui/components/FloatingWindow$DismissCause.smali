.class public final enum Lcom/truecaller/ui/components/FloatingWindow$DismissCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DismissCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ui/components/FloatingWindow$DismissCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

.field public static final enum AUTOMATIC:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

.field public static final enum MANUAL:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

.field public static final enum UNDEFINED:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->UNDEFINED:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    .line 2
    new-instance v1, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    const-string v3, "MANUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->MANUAL:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    .line 3
    new-instance v3, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    const-string v5, "AUTOMATIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->AUTOMATIC:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->$VALUES:[Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ui/components/FloatingWindow$DismissCause;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ui/components/FloatingWindow$DismissCause;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->$VALUES:[Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-virtual {v0}, [Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    return-object v0
.end method
