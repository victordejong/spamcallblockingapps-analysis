.class public final Le/a/n/d$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/d;-><init>(Ls1/w/f;Landroid/content/Context;Le/m/e/k;Le/a/p5/g;Le/a/b0/o/a;Le/a/b0/e/f;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/a/i0;Le/a/e4/p;Le/a/p5/a0;Le/a/b0/n/g;Le/a/n5/c;Le/a/c3/a;Le/a/b0/k/f;Le/a/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/n/v<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/h0/m;


# direct methods
.method public constructor <init>(Le/a/h0/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/n/d$x;->a:Le/a/h0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/n/d$x;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/n/d$x;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public c()Lcom/truecaller/backup/AfterRestoreBehaviorFlag;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/backup/AfterRestoreBehaviorFlag;->FiltersUpload:Lcom/truecaller/backup/AfterRestoreBehaviorFlag;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "BlockHiddenNumbers"

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/d$x;->a:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/n/d$x;->a:Le/a/h0/m;

    invoke-interface {v0, p1}, Le/a/h0/m;->j(Z)V

    return-void
.end method
