.class public final Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;",
        "",
        "Lcom/truecaller/callhero_assistant/data/Carrier;",
        "carrier",
        "Lcom/truecaller/callhero_assistant/data/Carrier;",
        "getCarrier",
        "()Lcom/truecaller/callhero_assistant/data/Carrier;",
        "",
        "token",
        "Ljava/lang/String;",
        "getToken",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;Lcom/truecaller/callhero_assistant/data/Carrier;)V",
        "callhero_assistant_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final carrier:Lcom/truecaller/callhero_assistant/data/Carrier;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/callhero_assistant/data/Carrier;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;->carrier:Lcom/truecaller/callhero_assistant/data/Carrier;

    return-void
.end method


# virtual methods
.method public final getCarrier()Lcom/truecaller/callhero_assistant/data/Carrier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;->carrier:Lcom/truecaller/callhero_assistant/data/Carrier;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;->token:Ljava/lang/String;

    return-object v0
.end method
