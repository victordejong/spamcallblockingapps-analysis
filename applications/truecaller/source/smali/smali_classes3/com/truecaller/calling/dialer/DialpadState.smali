.class public final enum Lcom/truecaller/calling/dialer/DialpadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/calling/dialer/DialpadState;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0008\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/calling/dialer/DialpadState;",
        "",
        "",
        "colorAttr",
        "I",
        "getColorAttr",
        "()I",
        "drawable",
        "getDrawable",
        "",
        "scale",
        "F",
        "getScale",
        "()F",
        "<init>",
        "(Ljava/lang/String;IFII)V",
        "DIALPAD_DOWN",
        "DIALPAD_UP",
        "NUMBER_ENTERED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/calling/dialer/DialpadState;

.field public static final enum DIALPAD_DOWN:Lcom/truecaller/calling/dialer/DialpadState;

.field public static final enum DIALPAD_UP:Lcom/truecaller/calling/dialer/DialpadState;

.field public static final enum NUMBER_ENTERED:Lcom/truecaller/calling/dialer/DialpadState;


# instance fields
.field private final colorAttr:I

.field private final drawable:I

.field private final scale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/calling/dialer/DialpadState;

    new-instance v7, Lcom/truecaller/calling/dialer/DialpadState;

    const-string v2, "DIALPAD_DOWN"

    const/4 v3, 0x0

    const v4, 0x3f59999a    # 0.85f

    const v5, 0x7f0405a1

    const v6, 0x7f080451

    move-object v1, v7

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/truecaller/calling/dialer/DialpadState;-><init>(Ljava/lang/String;IFII)V

    sput-object v7, Lcom/truecaller/calling/dialer/DialpadState;->DIALPAD_DOWN:Lcom/truecaller/calling/dialer/DialpadState;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/truecaller/calling/dialer/DialpadState;

    const-string v9, "DIALPAD_UP"

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x7f0405a1

    const v13, 0x7f080451

    move-object v8, v1

    .line 2
    invoke-direct/range {v8 .. v13}, Lcom/truecaller/calling/dialer/DialpadState;-><init>(Ljava/lang/String;IFII)V

    sput-object v1, Lcom/truecaller/calling/dialer/DialpadState;->DIALPAD_UP:Lcom/truecaller/calling/dialer/DialpadState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/calling/dialer/DialpadState;

    const-string v4, "NUMBER_ENTERED"

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x7f04056c

    const v8, 0x7f0803b1

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/calling/dialer/DialpadState;-><init>(Ljava/lang/String;IFII)V

    sput-object v1, Lcom/truecaller/calling/dialer/DialpadState;->NUMBER_ENTERED:Lcom/truecaller/calling/dialer/DialpadState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/calling/dialer/DialpadState;->$VALUES:[Lcom/truecaller/calling/dialer/DialpadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/calling/dialer/DialpadState;->scale:F

    iput p4, p0, Lcom/truecaller/calling/dialer/DialpadState;->colorAttr:I

    iput p5, p0, Lcom/truecaller/calling/dialer/DialpadState;->drawable:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/calling/dialer/DialpadState;
    .locals 1

    const-class v0, Lcom/truecaller/calling/dialer/DialpadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/calling/dialer/DialpadState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/calling/dialer/DialpadState;
    .locals 1

    sget-object v0, Lcom/truecaller/calling/dialer/DialpadState;->$VALUES:[Lcom/truecaller/calling/dialer/DialpadState;

    invoke-virtual {v0}, [Lcom/truecaller/calling/dialer/DialpadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/calling/dialer/DialpadState;

    return-object v0
.end method


# virtual methods
.method public final getColorAttr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/calling/dialer/DialpadState;->colorAttr:I

    return v0
.end method

.method public final getDrawable()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/calling/dialer/DialpadState;->drawable:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/calling/dialer/DialpadState;->scale:F

    return v0
.end method
