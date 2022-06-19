.class public Le/h/a/c/v0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/y0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/v0/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/h/a/c/y0/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/v0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/v0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/v0/e$b;->a:Le/h/a/c/v0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/h/a/c/v0/e$b;->a:Le/h/a/c/v0/e;

    .line 4
    iget-object p1, p1, Le/h/a/c/v0/e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/v0/e$b;->a:Le/h/a/c/v0/e;

    .line 6
    iget-object v0, v0, Le/h/a/c/v0/e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    invoke-static {v0}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Product Config settings: writing Success "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/v0/e$b;->a:Le/h/a/c/v0/e;

    .line 8
    iget-object v2, v2, Le/h/a/c/v0/e;->d:Ljava/util/Map;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Le/h/a/c/v0/e$b;->a:Le/h/a/c/v0/e;

    .line 12
    iget-object p1, p1, Le/h/a/c/v0/e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/v0/e$b;->a:Le/h/a/c/v0/e;

    .line 14
    iget-object v0, v0, Le/h/a/c/v0/e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    invoke-static {v0}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Product Config settings: writing Failed"

    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
