.class public Le/a/t/b/e/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/b/c/i;


# instance fields
.field public final a:Le/a/t/b/d/b;

.field public final b:Le/a/t/b/d/c;

.field public final c:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

.field public final d:Le/a/t/b/c/i$a;

.field public final e:Le/a/t/b/c/m/a;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Le/a/t/b/c/i$a;Le/a/t/b/d/b;Le/a/t/b/d/c;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Le/a/t/b/c/m/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "^(?=.*?[\\w&&[\\D]&&[^_]])[\\w\\W]{1,128}$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Le/a/t/b/e/d/g;->j:Ljava/util/regex/Pattern;

    .line 3
    iput-object p2, p0, Le/a/t/b/e/d/g;->a:Le/a/t/b/d/b;

    .line 4
    iput-object p3, p0, Le/a/t/b/e/d/g;->b:Le/a/t/b/d/c;

    .line 5
    iput-object p1, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    .line 6
    iput-object p4, p0, Le/a/t/b/e/d/g;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    .line 7
    iput-object p5, p0, Le/a/t/b/e/d/g;->e:Le/a/t/b/c/m/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {v0}, Le/a/t/b/c/i$a;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {v0}, Le/a/t/b/c/i$a;->g()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;Le/a/t/b/c/l/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {v0}, Le/a/t/b/c/i$a;->g()V

    .line 2
    iget-object v0, p0, Le/a/t/b/e/d/g;->b:Le/a/t/b/d/c;

    invoke-interface {v0, p1, p2}, Le/a/t/b/d/c;->b(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, p3}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V
    .locals 3

    .line 1
    new-instance v0, Le/a/t/b/c/l/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Le/a/t/b/c/l/d;-><init>(Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;Le/a/t/b/c/i;Z)V

    .line 2
    iget-object p2, p0, Le/a/t/b/e/d/g;->a:Le/a/t/b/d/b;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Bearer %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/t/b/d/b;->b(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public f(Ljava/lang/String;Lcom/truecaller/android/sdk/TrueProfile;Le/a/t/b/c/l/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->a:Le/a/t/b/d/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Bearer %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Le/a/t/b/d/b;->a(Ljava/lang/String;Lcom/truecaller/android/sdk/TrueProfile;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, p3}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public g(Ljava/lang/String;Lcom/truecaller/android/sdk/TrueProfile;)V
    .locals 4

    .line 1
    new-instance v0, Le/a/t/b/c/l/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Le/a/t/b/c/l/c;-><init>(Ljava/lang/String;Lcom/truecaller/android/sdk/TrueProfile;Le/a/t/b/c/i;Z)V

    .line 2
    iget-object v2, p0, Le/a/t/b/e/d/g;->a:Le/a/t/b/d/b;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string p1, "Bearer %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Le/a/t/b/d/b;->a(Ljava/lang/String;Lcom/truecaller/android/sdk/TrueProfile;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/truecaller/android/sdk/models/VerifyInstallationModel;Le/a/t/b/c/l/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->b:Le/a/t/b/d/c;

    invoke-interface {v0, p1, p2}, Le/a/t/b/d/c;->a(Ljava/lang/String;Lcom/truecaller/android/sdk/models/VerifyInstallationModel;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, p3}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public i(Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/t/b/e/d/g;->h:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;Le/a/t/b/c/l/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->a:Le/a/t/b/d/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Bearer %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/t/b/d/b;->b(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, p2}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public k(Lcom/truecaller/android/sdk/TrueProfile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->f:Ljava/lang/String;

    const/4 v1, 0x5

    if-eqz v0, :cond_6

    iget-object v0, p0, Le/a/t/b/e/d/g;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Le/a/t/b/e/d/g;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p1, Lcom/truecaller/android/sdk/TrueProfile;->firstName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v3, p0, Le/a/t/b/e/d/g;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :goto_1
    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p1, Lcom/truecaller/android/sdk/TrueProfile;->lastName:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    goto :goto_2

    .line 7
    :cond_3
    iget-object v4, p0, Le/a/t/b/e/d/g;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    .line 8
    new-instance v0, Lcom/truecaller/android/sdk/models/VerifyInstallationModel;

    iget-object v1, p0, Le/a/t/b/e/d/g;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/t/b/e/d/g;->f:Ljava/lang/String;

    iget-object v3, p0, Le/a/t/b/e/d/g;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/truecaller/android/sdk/models/VerifyInstallationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p2, Le/a/t/b/c/l/g;

    const/4 v9, 0x1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p4

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v9}, Le/a/t/b/c/l/g;-><init>(Ljava/lang/String;Lcom/truecaller/android/sdk/models/VerifyInstallationModel;Lcom/truecaller/android/sdk/clients/VerificationCallback;Lcom/truecaller/android/sdk/TrueProfile;Le/a/t/b/c/i;Z)V

    .line 10
    iget-object p1, p0, Le/a/t/b/e/d/g;->b:Le/a/t/b/d/c;

    invoke-interface {p1, p3, v0}, Le/a/t/b/d/c;->a(Ljava/lang/String;Lcom/truecaller/android/sdk/models/VerifyInstallationModel;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, p2}, Lx3/b;->enqueue(Lx3/d;)V

    goto :goto_3

    .line 11
    :cond_5
    new-instance p1, Lcom/truecaller/android/sdk/TrueException;

    const-string p2, "Please provide a valid name"

    invoke-direct {p1, v1, p2}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v1, p1}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    goto :goto_3

    .line 12
    :cond_6
    new-instance p1, Lcom/truecaller/android/sdk/TrueException;

    const/4 p2, 0x3

    const-string p3, "Please call createInstallation first"

    invoke-direct {p1, p2, p3}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v1, p1}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    :goto_3
    return-void
.end method

.method public l(Lcom/truecaller/android/sdk/TrueProfile;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/g;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Le/a/t/b/e/d/g;->k(Lcom/truecaller/android/sdk/TrueProfile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 3
    new-instance p2, Lcom/truecaller/android/sdk/TrueException;

    const/4 v0, 0x3

    const-string v1, "Please call createInstallation first"

    invoke-direct {p2, v0, v1}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/t/b/e/d/g;->i:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/android/sdk/clients/VerificationCallback;)V
    .locals 9

    .line 1
    iput-object p3, p0, Le/a/t/b/e/d/g;->f:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Le/a/t/b/e/d/g;->g:Ljava/lang/String;

    .line 3
    new-instance v8, Lcom/truecaller/android/sdk/models/CreateInstallationModel;

    invoke-direct {v8, p2, p3, p4, p5}, Lcom/truecaller/android/sdk/models/CreateInstallationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    iget-object p2, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {p2}, Le/a/t/b/c/i$a;->c()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v8, p2}, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->setSimSerialNumbers(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {v8, p2}, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->setVerificationAttempt(I)V

    .line 6
    iget-object p3, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {p3}, Le/a/t/b/c/i$a;->f()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {p3}, Le/a/t/b/c/i$a;->e()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {p3}, Le/a/t/b/c/i$a;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {v8, p2}, Lcom/truecaller/android/sdk/models/CreateInstallationModel;->setPhonePermission(Z)V

    .line 8
    new-instance p2, Le/a/t/b/c/l/e;

    iget-object v4, p0, Le/a/t/b/e/d/g;->e:Le/a/t/b/c/m/a;

    const/4 v5, 0x1

    iget-object p3, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    .line 9
    invoke-interface {p3}, Le/a/t/b/c/i$a;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v0, p2

    move-object v1, p1

    move-object v2, v8

    move-object v3, p6

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Le/a/t/b/c/l/e;-><init>(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;Lcom/truecaller/android/sdk/clients/VerificationCallback;Le/a/t/b/c/m/a;ZLe/a/t/b/c/i;Landroid/os/Handler;)V

    .line 10
    iget-object p3, p0, Le/a/t/b/e/d/g;->d:Le/a/t/b/c/i$a;

    invoke-interface {p3, p2}, Le/a/t/b/c/i$a;->d(Le/a/t/b/c/l/e;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Le/a/t/b/c/l/f;

    iget-object v4, p0, Le/a/t/b/e/d/g;->e:Le/a/t/b/c/m/a;

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p1

    move-object v2, v8

    move-object v3, p6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Le/a/t/b/c/l/f;-><init>(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;Lcom/truecaller/android/sdk/clients/VerificationCallback;Le/a/t/b/c/m/a;ZLe/a/t/b/c/i;)V

    .line 12
    :goto_0
    iget-object p3, p0, Le/a/t/b/e/d/g;->b:Le/a/t/b/d/c;

    invoke-interface {p3, p1, v8}, Le/a/t/b/d/c;->b(Ljava/lang/String;Lcom/truecaller/android/sdk/models/CreateInstallationModel;)Lx3/b;

    move-result-object p1

    invoke-interface {p1, p2}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method
