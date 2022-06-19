.class public interface abstract Le/a/b/a/a/b/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/a/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008b\u0018\u00002\u00020\u0001J\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000bH\'\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "e/a/b/a/a/b/d/b$a",
        "",
        "Lx3/a0;",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        "a",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;",
        "bizProfilePatch",
        "Ls1/s;",
        "d",
        "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)Ljava/lang/Object;",
        "Lu3/j0;",
        "logo",
        "type",
        "Lx3/b;",
        "Lu3/l0;",
        "c",
        "(Lu3/j0;Lu3/j0;)Lx3/b;",
        "b",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/v1/company"
    .end annotation
.end method

.method public abstract b(Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/b;
        value = "/v1/company"
    .end annotation
.end method

.method public abstract c(Lu3/j0;Lu3/j0;)Lx3/b;
    .param p1    # Lu3/j0;
        .annotation runtime Lx3/h0/q;
            value = "file\"; filename=\"businessPhoto.jpg\""
        .end annotation
    .end param
    .param p2    # Lu3/j0;
        .annotation runtime Lx3/h0/q;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/j0;",
            "Lu3/j0;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/l;
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/image"
    .end annotation
.end method

.method public abstract d(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)Ljava/lang/Object;
    .param p1    # Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Ls1/s;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lx3/h0/n;
        value = "/v1/company"
    .end annotation
.end method
