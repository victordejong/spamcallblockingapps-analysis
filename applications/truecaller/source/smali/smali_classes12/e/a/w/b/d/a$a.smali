.class public interface abstract Le/a/w/b/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/w/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/w/b/c/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "v1/referral"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "v1/referral"
    .end annotation
.end method

.method public abstract c(Le/a/w/b/c/b;)Lx3/b;
    .param p1    # Le/a/w/b/c/b;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/w/b/c/b;",
            ")",
            "Lx3/b<",
            "Ljava/util/List<",
            "Le/a/w/b/c/c;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "v1/referral/invite"
    .end annotation
.end method
