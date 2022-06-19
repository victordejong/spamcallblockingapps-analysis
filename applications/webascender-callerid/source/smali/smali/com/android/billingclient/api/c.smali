.class public abstract Lcom/android/billingclient/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/c$b;,
        Lcom/android/billingclient/api/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/android/billingclient/api/c$b;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/c$b;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/c$b;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/k0;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V
.end method

.method public abstract b(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Ljava/lang/String;)Lcom/android/billingclient/api/g;
.end method

.method public abstract e()Z
.end method

.method public abstract f(Landroid/app/Activity;Lcom/android/billingclient/api/f;)Lcom/android/billingclient/api/g;
.end method

.method public abstract h(Ljava/lang/String;Lcom/android/billingclient/api/j;)V
.end method

.method public abstract i(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;
.end method

.method public abstract j(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V
.end method

.method public abstract k(Lcom/android/billingclient/api/e;)V
.end method
