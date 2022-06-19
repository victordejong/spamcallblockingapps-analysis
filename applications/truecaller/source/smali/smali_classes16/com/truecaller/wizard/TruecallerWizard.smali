.class public abstract Lcom/truecaller/wizard/TruecallerWizard;
.super Le/a/r/t/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/t/c;-><init>()V

    return-void
.end method


# virtual methods
.method public Ea(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/r/t/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/a0/r;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_Welcome"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/w/e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_EnterNumber"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/b0/d;

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_Privacy"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/z/l;

    invoke-direct {v0, v1, v2}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_Verification"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/a/a;

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_RestoreBackup"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/y/h;

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_Success"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/x/n;

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_Profile"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/b/e;

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_AdsChoices"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/g;

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_AccessContacts"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/j;

    invoke-direct {v0, v1, v3}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_DrawPermission"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Le/a/r/t/b;

    const-class v1, Le/a/r/i;

    invoke-direct {v0, v1, v2}, Le/a/r/t/b;-><init>(Ljava/lang/Class;Z)V

    const-string v1, "Page_DrawPermissionDetails"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract Ja()Le/a/b0/o/a;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/r/t/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public sa()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/wizard/TruecallerWizard;->Ja()Le/a/b0/o/a;

    move-result-object v0

    const-string v1, "isUserChangingNumber"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/r/t/c;->xa()Lcom/truecaller/wizard/WizardVerificationMode;

    move-result-object v0

    sget-object v1, Lcom/truecaller/wizard/WizardVerificationMode;->SECONDARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Page_Welcome"

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Page_EnterNumber"

    return-object v0
.end method
