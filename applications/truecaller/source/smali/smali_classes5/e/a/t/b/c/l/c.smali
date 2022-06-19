.class public Le/a/t/b/c/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/d<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/android/sdk/TrueProfile;

.field public final c:Le/a/t/b/c/i;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/android/sdk/TrueProfile;Le/a/t/b/c/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t/b/c/l/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/t/b/c/l/c;->b:Lcom/truecaller/android/sdk/TrueProfile;

    .line 4
    iput-object p3, p0, Le/a/t/b/c/l/c;->c:Le/a/t/b/c/i;

    .line 5
    iput-boolean p4, p0, Le/a/t/b/c/l/c;->d:Z

    return-void
.end method


# virtual methods
.method public onFailure(Lx3/b;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lx3/a0<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p2, Lx3/a0;->c:Lu3/l0;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Le/m/d/y/n;->N0(Lu3/l0;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Le/a/t/b/c/l/c;->d:Z

    if-eqz p2, :cond_0

    const-string p2, "internal service error"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le/a/t/b/c/l/c;->d:Z

    .line 5
    iget-object p1, p0, Le/a/t/b/c/l/c;->c:Le/a/t/b/c/i;

    iget-object p2, p0, Le/a/t/b/c/l/c;->a:Ljava/lang/String;

    iget-object v0, p0, Le/a/t/b/c/l/c;->b:Lcom/truecaller/android/sdk/TrueProfile;

    invoke-interface {p1, p2, v0, p0}, Le/a/t/b/c/i;->f(Ljava/lang/String;Lcom/truecaller/android/sdk/TrueProfile;Le/a/t/b/c/l/c;)V

    :cond_0
    return-void
.end method
