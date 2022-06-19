.class public abstract Le/a/b0/g/a;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/g/a$a;
    }
.end annotation


# static fields
.field public static volatile a:Le/a/b0/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    sput-object p0, Le/a/b0/g/a;->a:Le/a/b0/g/a;

    return-void
.end method

.method public static L()Le/a/b0/g/a;
    .locals 2

    .line 1
    sget-object v0, Le/a/b0/g/a;->a:Le/a/b0/g/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    sget-object v0, Le/a/b0/g/a;->a:Le/a/b0/g/a;

    return-object v0
.end method


# virtual methods
.method public abstract F()I
.end method

.method public abstract G()Ljava/lang/String;
.end method

.method public abstract H()I
.end method

.method public abstract I()Ljava/lang/String;
.end method

.method public abstract J()Ljava/lang/String;
.end method

.method public K()Le/a/q2/e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Le/a/q2/e;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->F0(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/a/q2/e;

    return-object v0
.end method

.method public abstract M(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public N()Le/a/b0/c;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Le/a/b0/c;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->F0(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/a/b0/c;

    return-object v0
.end method

.method public abstract O()Ljava/lang/String;
.end method

.method public abstract P()Ljava/lang/String;
.end method

.method public abstract Q()Le/a/l0/k;
.end method

.method public abstract R()Le/a/u3/g;
.end method

.method public abstract S()Le/a/m0/d1/a;
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public abstract U()Le/a/b4/a/d;
.end method

.method public V()Le/a/p5/o0;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Le/a/p5/o0;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->F0(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/a/p5/o0;

    return-object v0
.end method

.method public abstract W()Z
.end method

.method public abstract X()Z
.end method

.method public abstract Y()Z
.end method

.method public abstract Z(Ljava/lang/String;ZLcom/truecaller/common/account/analytics/LogoutContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract a0(Z)V
.end method

.method public abstract p()Ljava/lang/String;
.end method
