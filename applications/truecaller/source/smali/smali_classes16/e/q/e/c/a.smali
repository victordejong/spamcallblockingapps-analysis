.class public Le/q/e/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/q/e/c/a$a;
    }
.end annotation


# static fields
.field public static a:Lorg/json/JSONObject;

.field public static b:Lorg/json/JSONObject;

.field public static c:Lorg/json/JSONObject;

.field public static d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/q/e/c/a;
    .locals 2

    .line 1
    sget-boolean v0, Le/q/e/c/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Le/q/e/c/a$a;->a:Le/q/e/c/a;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to access seeds before init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
