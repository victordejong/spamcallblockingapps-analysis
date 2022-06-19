.class public final Le/a/r/q/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/q/f;->b:Ljava/lang/String;

    iput-object p2, p0, Le/a/r/q/f;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "https://www.truecaller.com/south-africa-privacy-policy"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PRIVACY_POLICY_REGION_ZA"

    goto :goto_1

    :sswitch_1
    const-string p2, "https://oag.ca.gov/privacy/ccpa"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "REGION2_PRIVACY_ACT"

    goto :goto_1

    :sswitch_2
    const-string p2, "https://www.truecaller.com/brazil-privacy-policy"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PRIVACY_POLICY_REGION_BR"

    goto :goto_1

    :sswitch_3
    const-string p2, "https://www.truecaller.com/terms-of-service#row"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TERMS_OF_SERVICE_REGION2"

    goto :goto_1

    :sswitch_4
    const-string p2, "https://privacy.truecaller.com/privacy-policy"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PRIVACY_POLICY_REGION2"

    goto :goto_1

    :sswitch_5
    const-string p2, "https://support.google.com/google-ads/answer/9614122?hl=en"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "REGION2_RESTRICTED_DATA_PROCESSING"

    goto :goto_1

    :sswitch_6
    const-string p2, "https://privacy.truecaller.com/privacy-policy-eu"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PRIVACY_POLICY_REGION1"

    goto :goto_1

    :sswitch_7
    const-string p2, "https://www.truecaller.com/terms-of-service#eu"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TERMS_OF_SERVICE_REGION1"

    goto :goto_1

    :sswitch_8
    const-string p2, "https://www.truecaller.com/california-privacy-policy"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PRIVACY_POLICY_REGIONC"

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "Other"

    .line 12
    :goto_1
    iput-object p1, p0, Le/a/r/q/f;->a:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e767611 -> :sswitch_8
        -0x414aed6f -> :sswitch_7
        -0xf23d208 -> :sswitch_6
        0x1443801 -> :sswitch_5
        0xc77dd85 -> :sswitch_4
        0x17ed7019 -> :sswitch_3
        0x2fb9c83b -> :sswitch_2
        0x61b28da1 -> :sswitch_1
        0x6c3ccd2d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/r/q/f;->a:Ljava/lang/String;

    const-string v2, "Link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/r/q/f;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Unknown step"

    :goto_0
    const-string v2, "WizardStep"

    const-string v3, "WizardLegalLink"

    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/r/q/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/r/q/f;

    iget-object v0, p0, Le/a/r/q/f;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/r/q/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/q/f;->c:Ljava/lang/String;

    iget-object p1, p1, Le/a/r/q/f;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/r/q/f;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/q/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "WizardLegalLinkEvent(url="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/r/q/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wizardStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/q/f;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
