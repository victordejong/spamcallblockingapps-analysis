.class public Le/h/a/c/q0/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/b0;->f(Lorg/json/JSONObject;)V
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
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Le/h/a/c/q0/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/b0;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/b0$e;->b:Le/h/a/c/q0/b0;

    iput-object p2, p0, Le/h/a/c/q0/b0$e;->a:Lorg/json/JSONObject;

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
    new-instance v0, Le/h/a/c/q0/b0$i;

    iget-object v1, p0, Le/h/a/c/q0/b0$e;->b:Le/h/a/c/q0/b0;

    iget-object v2, p0, Le/h/a/c/q0/b0$e;->a:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v1, v2}, Le/h/a/c/q0/b0$i;-><init>(Le/h/a/c/q0/b0;Le/h/a/c/q0/b0;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Le/h/a/c/q0/b0$i;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
