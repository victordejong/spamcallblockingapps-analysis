.class public final Lcom/truecaller/account/network/SimDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/network/SimDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014BC\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u0006R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/account/network/SimDto;",
        "",
        "",
        "mnc",
        "Ljava/lang/String;",
        "getMnc",
        "()Ljava/lang/String;",
        "msin",
        "getMsin",
        "phoneNumber",
        "getPhoneNumber",
        "imsi",
        "getImsi",
        "operator",
        "getOperator",
        "mcc",
        "getMcc",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "a",
        "account-network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/account/network/SimDto$a;


# instance fields
.field private final imsi:Ljava/lang/String;

.field private final mcc:Ljava/lang/String;

.field private final mnc:Ljava/lang/String;

.field private final msin:Ljava/lang/String;

.field private final operator:Ljava/lang/String;

.field private final phoneNumber:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/network/SimDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/network/SimDto$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/network/SimDto;->Companion:Lcom/truecaller/account/network/SimDto$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/account/network/SimDto;->imsi:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/account/network/SimDto;->operator:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/SimDto;->mcc:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/account/network/SimDto;->mnc:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/account/network/SimDto;->msin:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/account/network/SimDto;->phoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getImsi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SimDto;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public final getMcc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SimDto;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public final getMnc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SimDto;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public final getMsin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SimDto;->msin:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SimDto;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/SimDto;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method
