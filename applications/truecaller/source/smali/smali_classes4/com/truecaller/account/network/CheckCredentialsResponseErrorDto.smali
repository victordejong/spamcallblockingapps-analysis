.class public final Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;",
        "",
        "",
        "ttl",
        "Ljava/lang/Long;",
        "getTtl",
        "()Ljava/lang/Long;",
        "",
        "status",
        "I",
        "getStatus",
        "()I",
        "<init>",
        "(ILjava/lang/Long;)V",
        "account-network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final status:I

.field private final ttl:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;->status:I

    iput-object p2, p0, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;->ttl:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;->status:I

    return v0
.end method

.method public final getTtl()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;->ttl:Ljava/lang/Long;

    return-object v0
.end method
