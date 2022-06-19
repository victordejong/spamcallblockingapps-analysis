.class public final enum Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0080\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "a",
        "SETTINGS",
        "CONSENT_REFRESH",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

.field public static final enum CONSENT_REFRESH:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

.field public static final Companion:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig$a;

.field public static final enum SETTINGS:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    new-instance v2, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    const-string v3, "SETTINGS"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->SETTINGS:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    const-string v3, "CONSENT_REFRESH"

    .line 2
    invoke-direct {v2, v3, v5, v0}, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->CONSENT_REFRESH:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    aput-object v2, v1, v5

    sput-object v1, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->$VALUES:[Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    new-instance v0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->Companion:Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;
    .locals 1

    const-class v0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;
    .locals 1

    sget-object v0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->$VALUES:[Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    invoke-virtual {v0}, [Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;->value:I

    return v0
.end method
