.class public interface abstract Le/a/v4/s0/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J_\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\n2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\n2\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Le/a/v4/s0/l/a;",
        "",
        "",
        "clientId",
        "scopes",
        "fingerprint",
        "language",
        "sdkVersion",
        "sdkVariant",
        "sdkVariantVersion",
        "Lx3/a0;",
        "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;",
        "c",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;",
        "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;",
        "authCodeRequest",
        "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;",
        "a",
        "(Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;Ls1/w/d;)Ljava/lang/Object;",
        "Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;",
        "rejectRequest",
        "Lu3/l0;",
        "b",
        "(Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;Ls1/w/d;)Ljava/lang/Object;",
        "sdk-internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;Ls1/w/d;)Ljava/lang/Object;
    .param p1    # Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "v1/auth"
    .end annotation
.end method

.method public abstract b(Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;Ls1/w/d;)Ljava/lang/Object;
    .param p1    # Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Lu3/l0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "v1/consent/reject"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "client_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "scopes"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "fingerprint"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "language"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lx3/h0/i;
            value = "X-Sdk-Version"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lx3/h0/i;
            value = "X-Sdk-Variant"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lx3/h0/i;
            value = "X-Sdk-Variant-Version"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "v1/project/consent"
    .end annotation
.end method
