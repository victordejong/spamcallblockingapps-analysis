.class public interface abstract Le/a/g0/l/c;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Le/a/g0/l/c;",
        "",
        "Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;",
        "requestDto",
        "Lx3/b;",
        "Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;",
        "a",
        "(Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;)Lx3/b;",
        "b",
        "account-suspension_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;)Lx3/b;
    .param p1    # Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/verifyCaptcha"
    .end annotation
.end method

.method public abstract b(Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;)Lx3/b;
    .param p1    # Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/suspension/data/UnsuspendAccountRequestDto;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/huawei/verifyCaptcha"
    .end annotation
.end method
