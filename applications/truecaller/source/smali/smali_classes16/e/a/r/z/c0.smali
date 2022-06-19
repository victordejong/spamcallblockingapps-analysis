.class public final Le/a/r/z/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/z/b0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/b0/e/f;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/e/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/c0;->c:Le/a/u3/g;

    iput-object p2, p0, Le/a/r/z/c0;->d:Le/a/b0/e/f;

    .line 2
    sget-object p1, Le/a/r/z/c0$b;->b:Le/a/r/z/c0$b;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/r/z/c0;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/r/z/c0$a;

    invoke-direct {p1, p0}, Le/a/r/z/c0$a;-><init>(Le/a/r/z/c0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/r/z/c0;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/r/z/o;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Le/a/r/z/h;
    .locals 3

    const-string v0, "verificationMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryIso"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    :cond_0
    new-instance p3, Le/a/r/z/h;

    .line 3
    iget-object v0, p0, Le/a/r/z/c0;->d:Le/a/b0/e/f;

    invoke-interface {v0, p2}, Le/a/b0/e/f;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "support.eu@truecaller.com"

    goto :goto_0

    :cond_1
    const-string p2, "support@truecaller.com"

    .line 4
    :goto_0
    iget-object v0, p1, Le/a/r/z/o;->c:Ljava/lang/String;

    const-string v1, "You are contacting truecaller support as you are receiving an error as: "

    .line 5
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object p1, p1, Le/a/r/z/o;->c:Ljava/lang/String;

    const-string v2, " when signing up using "

    .line 7
    invoke-static {v1, p1, v2, p4}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p3, p2, v0, p1}, Le/a/r/z/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public b(Le/a/r/z/o;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "verificationMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/z/c0;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/wizard/verification/WizardContactSupportConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/wizard/verification/WizardContactSupportConfig;->getMessages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    iget-object v5, p1, Le/a/r/z/o;->a:Ljava/lang/String;

    .line 6
    invoke-static {v4, v5, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    .line 7
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 8
    iget-object p1, p0, Le/a/r/z/c0;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/wizard/verification/WizardContactSupportConfig;

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/wizard/verification/WizardContactSupportConfig;->getCountries()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-static {v0, p2, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    move p1, v2

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v3

    .line 13
    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_7
    invoke-static {v1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    return v2
.end method
