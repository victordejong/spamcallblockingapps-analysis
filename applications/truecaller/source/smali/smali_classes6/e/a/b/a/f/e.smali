.class public final Le/a/b/a/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/a/f/e$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/b/a/f/e$a;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->COMPANYPROFILE:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/b/a/f/e$a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/f/e$a;

    iput-object v0, p0, Le/a/b/a/f/e;->a:Le/a/b/a/f/e$a;

    return-void
.end method


# virtual methods
.method public A(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Lx3/b;
    .locals 1
    .param p1    # Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/f/e;->a:Le/a/b/a/f/e$a;

    invoke-interface {v0, p1}, Le/a/b/a/f/e$a;->A(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Lx3/b;

    move-result-object p1

    return-object p1
.end method

.method public B()Lx3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/a/f/e;->a:Le/a/b/a/f/e$a;

    invoke-interface {v0}, Le/a/b/a/f/e$a;->B()Lx3/b;

    move-result-object v0

    return-object v0
.end method
