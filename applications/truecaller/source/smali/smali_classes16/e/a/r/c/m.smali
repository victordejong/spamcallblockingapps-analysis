.class public final Le/a/r/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/z;


# instance fields
.field public final a:Le/a/r/e/b;

.field public final b:Le/a/b0/e/r/a;


# direct methods
.method public constructor <init>(Le/a/r/e/b;Le/a/b0/e/r/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "wizardSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    iput-object p2, p0, Le/a/r/c/m;->b:Le/a/b0/e/r/a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "verificationLastSequenceNumber"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public b()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "verificationLastSequenceNumber"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/r/e/b;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "wizardSettings.getInt(Wi\u2026_LAST_SEQUENCE_NUMBER, 0)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "wizard_EnteredNumber"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/r/c/m;->b:Le/a/b0/e/r/a;

    const-string v1, "profileNumber"

    invoke-interface {v0, v1, p1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "number_source"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "number_source"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "country_iso"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "country_iso"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "wizardDialingCode"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "wizard_EnteredNumber"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "number_source"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "verificationLastSequenceNumber"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "wizard_EnteredNumber"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "wizardDialingCode"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "country_iso"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/r/c/m;->b:Le/a/b0/e/r/a;

    const-string v1, "profileCountryIso"

    invoke-interface {v0, v1, p1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "qa_skip_drop_call_rejection"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/m;->a:Le/a/r/e/b;

    const-string v1, "wizardDialingCode"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
