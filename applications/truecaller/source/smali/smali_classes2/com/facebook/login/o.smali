.class public final Lcom/facebook/login/o;
.super Lcom/facebook/internal/m0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/login/GetTokenClient;",
        "Lcom/facebook/internal/PlatformServiceClient;",
        "context",
        "Landroid/content/Context;",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V",
        "populateRequestBundle",
        "",
        "data",
        "Landroid/os/Bundle;",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v6, p2, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 2
    iget-object v7, p2, Lcom/facebook/login/LoginClient$Request;->o:Ljava/lang/String;

    const/high16 v3, 0x10000

    const v4, 0x10001

    const v5, 0x133060d

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/facebook/internal/m0;-><init>(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
