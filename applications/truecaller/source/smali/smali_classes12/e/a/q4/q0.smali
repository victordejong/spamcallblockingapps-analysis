.class public final Le/a/q4/q0;
.super Le/a/q4/u0;
.source "SourceFile"

# interfaces
.implements Le/a/w/b/b;


# instance fields
.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/q4/u0;-><init>()V

    iput-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "featureReferralNavigationDrawer"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "featureReferralNavDrawer"

    invoke-virtual {v0, p1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_1
    const-string v1, "featureGoPro"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "featureRedeemGoPro"

    invoke-virtual {v0, p1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_2
    const-string v1, "featureContactDetail"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "featureReferralIconInContactDetail"

    invoke-virtual {v0, p1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_3
    const-string v1, "featureAftercall"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "featureReferralIconInAfterCall"

    invoke-virtual {v0, p1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_4
    const-string v1, "featureReferralAfterCallPromo"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_5
    const-string v1, "featureAftercallSaveContact"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "featureReferralAfterCallSaveContact"

    invoke-virtual {v0, p1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_6
    const-string v1, "featureReferralDeeplink"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79faa347 -> :sswitch_6
        -0x4cecf6a1 -> :sswitch_5
        -0x20a0c998 -> :sswitch_4
        -0x1cad341c -> :sswitch_3
        -0x172abac5 -> :sswitch_2
        0x46be234f -> :sswitch_1
        0x546792f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "featureReferralNavigationDrawer"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 3
    iget-object v0, p1, Le/a/u3/g;->F:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "featureGoPro"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 6
    iget-object v0, p1, Le/a/u3/g;->G:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "featureContactDetail"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 9
    iget-object v0, p1, Le/a/u3/g;->E:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "featureAftercall"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 12
    iget-object v0, p1, Le/a/u3/g;->B:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto :goto_2

    :sswitch_4
    const-string v0, "featureReferralAfterCallPromo"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 15
    iget-object v0, p1, Le/a/u3/g;->H:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto :goto_2

    :sswitch_5
    const-string v0, "featurePushNotification"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_6
    const-string v0, "featureAftercallSaveContact"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 19
    iget-object v0, p1, Le/a/u3/g;->C:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto :goto_2

    :sswitch_7
    const-string v0, "featureReferralDeeplink"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/q4/q0;->b:Le/a/u3/g;

    .line 22
    iget-object v0, p1, Le/a/u3/g;->D:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto :goto_2

    :sswitch_8
    const-string v0, "featureReferralPremiumTabV2"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    .line 25
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Le/a/q4/u0;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_2
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7a5a42d3 -> :sswitch_8
        -0x79faa347 -> :sswitch_7
        -0x4cecf6a1 -> :sswitch_6
        -0x2f5737c5 -> :sswitch_5
        -0x20a0c998 -> :sswitch_4
        -0x1cad341c -> :sswitch_3
        -0x172abac5 -> :sswitch_2
        0x46be234f -> :sswitch_1
        0x546792f8 -> :sswitch_0
    .end sparse-switch
.end method
