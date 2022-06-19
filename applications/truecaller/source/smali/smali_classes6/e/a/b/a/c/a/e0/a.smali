.class public abstract Le/a/b/a/c/a/e0/a;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/a/b/a/c/a/r;",
        ">",
        "Le/a/u2/a/a<",
        "TT;>;",
        "Le/a/b/a/c/a/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/b/a/f/b;

.field public final g:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;)V
    .locals 1

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileV2Repository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/a;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/a;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/a;->f:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/a;->g:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public A(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 7

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/b/a/c/a/e0/a;->e:Ls1/w/f;

    new-instance v4, Le/a/b/a/c/a/e0/a$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/b/a/c/a/e0/a$a;-><init>(Le/a/b/a/c/a/e0/a;Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public G2(Le/a/b/a/f/a;)V
    .locals 4

    const-string v0, "businessAPIResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/r;

    if-eqz v0, :cond_e

    iget-object v1, p0, Le/a/b/a/c/a/e0/a;->g:Le/a/p5/c0;

    .line 2
    instance-of v2, p1, Le/a/b/a/f/a$g;

    const-string v3, "Not an error"

    if-nez v2, :cond_d

    .line 3
    sget-object v2, Le/a/b/a/f/a$b;->c:Le/a/b/a/f/a$b;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 4
    sget-object v2, Le/a/b/a/f/a$c;->c:Le/a/b/a/f/a$c;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget p1, Lcom/truecaller/common/R$string;->profile_error_generic:I

    goto/16 :goto_3

    .line 5
    :cond_0
    sget-object v2, Le/a/b/a/f/a$a;->c:Le/a/b/a/f/a$a;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p1, Lcom/truecaller/common/R$string;->profile_error_generic:I

    goto :goto_3

    .line 6
    :cond_1
    sget-object v2, Le/a/b/a/f/a$d;->c:Le/a/b/a/f/a$d;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget p1, Lcom/truecaller/common/R$string;->profile_error_network:I

    goto :goto_3

    .line 7
    :cond_2
    sget-object v2, Le/a/b/a/f/a$e;->c:Le/a/b/a/f/a$e;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget p1, Lcom/truecaller/common/R$string;->profile_error_network:I

    goto :goto_3

    .line 8
    :cond_3
    sget-object v2, Le/a/b/a/f/a$f;->c:Le/a/b/a/f/a$f;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 9
    instance-of v2, p1, Le/a/b/a/f/a$h;

    if-eqz v2, :cond_4

    sget p1, Lcom/truecaller/common/R$string;->profile_error_network:I

    goto :goto_3

    .line 10
    :cond_4
    instance-of v2, p1, Le/a/b/a/f/a$i;

    if-eqz v2, :cond_a

    check-cast p1, Le/a/b/a/f/a$i;

    .line 11
    iget-object p1, p1, Le/a/b/a/f/a$i;->c:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->getErrors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->getErrorType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    sget p1, Lcom/truecaller/common/R$string;->profile_error_validation_invalidCharacter:I

    goto :goto_3

    :cond_7
    :goto_1
    if-nez p1, :cond_8

    goto :goto_2

    .line 14
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    sget p1, Lcom/truecaller/common/R$string;->profile_error_validation_invalidWord:I

    goto :goto_3

    .line 15
    :cond_9
    :goto_2
    sget p1, Lcom/truecaller/common/R$string;->profile_error_generic:I

    :goto_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    invoke-interface {v1, p1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026APIResult.getErrorText())"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/b/a/c/a/r;->M(Ljava/lang/String;)V

    goto :goto_4

    .line 17
    :cond_a
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 18
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_4
    return-void
.end method

.method public c4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 1

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/a;->f:Le/a/b/a/f/b;

    invoke-interface {v0, p1}, Le/a/b/a/f/b;->b(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    return-void
.end method

.method public d4()V
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/a;->f:Le/a/b/a/f/b;

    invoke-interface {v0}, Le/a/b/a/f/b;->c()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;ILs1/z/c/f;)V

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Le/a/b/a/c/a/q;->b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/a/c/a/r;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Le/a/b/a/c/a/r;->b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    :cond_1
    return-void
.end method

.method public kc()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/a/c/a/r;->km()V

    :cond_0
    return-void
.end method

.method public xd()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/a/c/a/r;->e9()V

    :cond_0
    return-void
.end method
