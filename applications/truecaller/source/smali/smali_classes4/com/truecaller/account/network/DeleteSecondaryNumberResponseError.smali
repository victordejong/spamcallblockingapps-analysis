.class public final Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;
.super Le/a/n2/a/g;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000fB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;",
        "Le/a/n2/a/g;",
        "",
        "status",
        "I",
        "getStatus",
        "()I",
        "",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "<init>",
        "(ILjava/lang/String;)V",
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
.field public static final Companion:Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError$a;

.field public static final STATUS_NUMBER_NOT_FOUND:I = 0x9dd6


# instance fields
.field private final message:Ljava/lang/String;

.field private final status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;->Companion:Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/n2/a/g;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;->status:I

    iput-object p2, p0, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;->status:I

    return v0
.end method
