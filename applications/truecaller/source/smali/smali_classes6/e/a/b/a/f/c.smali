.class public final Le/a/b/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/f/b;


# instance fields
.field public final a:Le/a/b/a/f/d;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/m/e/k;

.field public final d:Le/a/b/a/f/j/a;

.field public final e:Le/a/m4/c/i/a/b;

.field public final f:Le/a/m4/c/i/a/e;


# direct methods
.method public constructor <init>(Le/a/b/a/f/d;Le/a/b0/o/a;Le/m/e/k;Le/a/b/a/f/j/a;Le/a/m4/c/i/a/b;Le/a/m4/c/i/a/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "businessProfileV2RestAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileDecorator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileLocalFileManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileRefreshNotifier"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/f/c;->a:Le/a/b/a/f/d;

    iput-object p2, p0, Le/a/b/a/f/c;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/b/a/f/c;->c:Le/m/e/k;

    iput-object p4, p0, Le/a/b/a/f/c;->d:Le/a/b/a/f/j/a;

    iput-object p5, p0, Le/a/b/a/f/c;->e:Le/a/m4/c/i/a/b;

    iput-object p6, p0, Le/a/b/a/f/c;->f:Le/a/m4/c/i/a/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
            "Ls1/w/d<",
            "-",
            "Le/a/b/a/f/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/b/a/f/c;->d:Le/a/b/a/f/j/a;

    invoke-interface {p2, p1}, Le/a/b/a/f/j/a;->a(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    iget-object p2, p0, Le/a/b/a/f/c;->a:Le/a/b/a/f/d;

    invoke-interface {p2, p1}, Le/a/b/a/f/d;->A(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Lx3/b;

    move-result-object p2

    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    const-string v1, "response"

    .line 3
    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/b/a/f/c;->c:Le/m/e/k;

    invoke-static {p2, v1}, Le/a/b/a/f/a;->a(Lx3/a0;Le/m/e/k;)Le/a/b/a/f/a;

    move-result-object p2

    .line 5
    iget-boolean v1, p2, Le/a/b/a/f/a;->a:Z

    if-ne v1, v0, :cond_1

    const-string v0, "businessProfile"

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/b/a/f/c;->b:Le/a/b0/o/a;

    iget-object v1, p0, Le/a/b/a/f/c;->c:Le/m/e/k;

    invoke-virtual {v1, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "companyProfile"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    sget-object p2, Le/a/b/a/f/a$e;->c:Le/a/b/a/f/a$e;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Le/a/b/a/f/a$h;

    const/4 p1, 0x0

    invoke-direct {p2, p1, v0}, Le/a/b/a/f/a$h;-><init>(II)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public b(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 2

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/f/c;->b:Le/a/b0/o/a;

    iget-object v1, p0, Le/a/b/a/f/c;->c:Le/m/e/k;

    invoke-virtual {v1, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "companyProfile"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/f/c;->b:Le/a/b0/o/a;

    const-string v1, "companyProfile"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/b/a/f/c;->c:Le/m/e/k;

    const-class v2, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 3
    invoke-virtual {v1, v0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {v2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/b/a/f/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/b/a/f/c;->a:Le/a/b/a/f/d;

    invoke-interface {p1}, Le/a/b/a/f/d;->B()Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/a/f/c;->c:Le/m/e/k;

    invoke-static {p1, v0}, Le/a/b/a/f/a;->a(Lx3/a0;Le/m/e/k;)Le/a/b/a/f/a;

    move-result-object p1

    .line 3
    instance-of v0, p1, Le/a/b/a/f/a$g;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/b/a/f/c;->e:Le/a/m4/c/i/a/b;

    move-object v1, p1

    check-cast v1, Le/a/b/a/f/a$g;

    .line 5
    iget-object v1, v1, Le/a/b/a/f/a$g;->c:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 6
    invoke-interface {v0, v1}, Le/a/m4/c/i/a/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 7
    iget-object v0, p0, Le/a/b/a/f/c;->f:Le/a/m4/c/i/a/e;

    move-object v1, p1

    check-cast v1, Le/a/b/a/f/a$g;

    .line 8
    iget-object v1, v1, Le/a/b/a/f/a$g;->c:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/l4/k;->W(Le/a/m4/c/i/a/e;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget-object p1, Le/a/b/a/f/a$e;->c:Le/a/b/a/f/a$e;

    :cond_0
    :goto_0
    return-object p1
.end method
