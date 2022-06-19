.class public Le/h/a/c/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/d0;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/d0;


# direct methods
.method public constructor <init>(Le/h/a/c/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/d0$a;->a:Le/h/a/c/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/d0$a;->a:Le/h/a/c/d0;

    .line 2
    iget-object v1, v0, Le/h/a/c/d0;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Le/h/a/c/d0;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
