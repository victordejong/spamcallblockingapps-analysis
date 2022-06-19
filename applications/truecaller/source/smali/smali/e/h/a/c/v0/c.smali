.class public Le/h/a/c/v0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/v0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/v0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/v0/c;->a:Le/h/a/c/v0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/v0/c;->a:Le/h/a/c/v0/b;

    .line 2
    iget-object v0, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/v0/c;->a:Le/h/a/c/v0/b;

    .line 4
    iget-object v1, v1, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    invoke-static {v1}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Product Config: fetch Success"

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/h/a/c/v0/c;->a:Le/h/a/c/v0/b;

    sget-object v1, Le/h/a/c/v0/b$e;->b:Le/h/a/c/v0/b$e;

    .line 7
    invoke-virtual {v0, v1}, Le/h/a/c/v0/b;->h(Le/h/a/c/v0/b$e;)V

    const/4 v0, 0x0

    return-object v0
.end method
