.class public Lcom/hiya/stingray/s/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Li/c/b0/c/a;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/ui/login/o;Landroid/content/Context;)Lcom/hiya/stingray/ui/customblock/d;
    .locals 9

    .line 1
    new-instance v8, Lcom/hiya/stingray/ui/customblock/d;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/ui/customblock/d;-><init>(Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Li/c/b0/c/a;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/ui/login/o;Landroid/content/Context;)V

    return-object v8
.end method

.method b()Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;-><init>()V

    return-object v0
.end method

.method c(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/ui/local/location/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/location/a;

    invoke-direct {v0, p1, p2}, Lcom/hiya/stingray/ui/local/location/a;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;)V

    return-object v0
.end method

.method d(Landroid/content/Context;)Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method e(Landroid/content/Context;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o2;)Lcom/hiya/stingray/manager/c4;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/c4;

    invoke-direct {v0, p1, p2, p3}, Lcom/hiya/stingray/manager/c4;-><init>(Landroid/content/Context;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o2;)V

    return-object v0
.end method

.method f()Lcom/hiya/stingray/ui/premium/y;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/premium/z;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/premium/z;-><init>()V

    return-object v0
.end method

.method g(Landroid/content/Context;)Lcom/hiya/stingray/ui/contactdetails/g0;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/g0;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/g0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method h()Li/c/b0/k/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/k/a;->c()Li/c/b0/k/a;

    move-result-object v0

    return-object v0
.end method

.method i()Li/c/b0/k/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/k/a;->c()Li/c/b0/k/a;

    move-result-object v0

    return-object v0
.end method

.method j()Li/c/b0/c/a;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    return-object v0
.end method

.method k(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/ui/local/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->Q()Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/local/b;-><init>(Z)V

    return-object v0
.end method
