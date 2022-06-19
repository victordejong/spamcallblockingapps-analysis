.class public final Lcom/facebook/login/InstagramAppLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0011H\u0016R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/login/InstagramAppLoginMethodHandler;",
        "Lcom/facebook/login/NativeAppLoginMethodHandler;",
        "loginClient",
        "Lcom/facebook/login/LoginClient;",
        "(Lcom/facebook/login/LoginClient;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "nameForLogging",
        "",
        "getNameForLogging",
        "()Ljava/lang/String;",
        "tokenSource",
        "Lcom/facebook/AccessTokenSource;",
        "getTokenSource",
        "()Lcom/facebook/AccessTokenSource;",
        "describeContents",
        "",
        "tryAuthorize",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "Companion",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/InstagramAppLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Le/j/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/InstagramAppLoginMethodHandler$a;

    invoke-direct {v0}, Lcom/facebook/login/InstagramAppLoginMethodHandler$a;-><init>()V

    sput-object v0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    const-string p1, "instagram_login"

    .line 5
    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->d:Ljava/lang/String;

    .line 6
    sget-object p1, Le/j/w;->k:Le/j/w;

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->e:Le/j/w;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    const-string p1, "instagram_login"

    .line 2
    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->d:Ljava/lang/String;

    .line 3
    sget-object p1, Le/j/w;->k:Le/j/w;

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->e:Le/j/w;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r(Lcom/facebook/login/LoginClient$Request;)I
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "request"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "init"

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "e2e.toString()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v6, Lcom/facebook/internal/l0;->a:Lcom/facebook/internal/l0;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v3

    .line 6
    :cond_0
    iget-object v8, v0, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 7
    iget-object v9, v0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->a()Z

    move-result v11

    .line 9
    iget-object v4, v0, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/j;

    if-nez v4, :cond_1

    .line 10
    sget-object v4, Lcom/facebook/login/j;->b:Lcom/facebook/login/j;

    :cond_1
    move-object v12, v4

    .line 11
    iget-object v4, v0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v4}, Lcom/facebook/login/LoginMethodHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 13
    iget-object v14, v0, Lcom/facebook/login/LoginClient$Request;->h:Ljava/lang/String;

    .line 14
    iget-object v4, v0, Lcom/facebook/login/LoginClient$Request;->j:Ljava/lang/String;

    .line 15
    iget-boolean v5, v0, Lcom/facebook/login/LoginClient$Request;->k:Z

    .line 16
    iget-boolean v15, v0, Lcom/facebook/login/LoginClient$Request;->m:Z

    .line 17
    iget-boolean v0, v0, Lcom/facebook/login/LoginClient$Request;->n:Z

    const-string v10, "context"

    .line 18
    const-class v7, Lcom/facebook/internal/l0;

    invoke-static {v7}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v16

    const/16 v22, 0x0

    move/from16 v17, v15

    const-string v15, "e2e"

    if-eqz v16, :cond_2

    move-object v1, v15

    goto/16 :goto_2

    :cond_2
    :try_start_1
    invoke-static {v3, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 p1, v7

    :try_start_2
    const-string v7, "applicationId"

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "permissions"

    invoke-static {v9, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "defaultAudience"

    invoke-static {v12, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "clientState"

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "authType"

    invoke-static {v14, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v7, Lcom/facebook/internal/l0$b;

    invoke-direct {v7}, Lcom/facebook/internal/l0$b;-><init>()V

    const/16 v16, 0x0

    .line 20
    sget-object v18, Lcom/facebook/login/x;->d:Lcom/facebook/login/x;

    const-string v21, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v23, p1

    move-object/from16 v24, v10

    move-object v10, v2

    move-object v1, v15

    move/from16 v19, v17

    move/from16 v15, v16

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v20, v0

    .line 21
    :try_start_3
    invoke-virtual/range {v6 .. v21}, Lcom/facebook/internal/l0;->c(Lcom/facebook/internal/l0$e;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/j;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/facebook/login/x;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    invoke-static/range {v23 .. v23}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v4, v24

    :try_start_4
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 24
    :cond_5
    sget-object v5, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/y;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "resolveInfo.activityInfo.packageName"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/facebook/internal/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v3, v23

    :try_start_5
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v3, v23

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    move-object v1, v15

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v3, v7

    goto :goto_0

    .line 25
    :goto_1
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v0, v22

    :cond_6
    move-object v3, v1

    move-object/from16 v1, p0

    .line 26
    invoke-virtual {v1, v3, v2}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    sget-object v2, Lcom/facebook/internal/t$c;->b:Lcom/facebook/internal/t$c;

    invoke-virtual {v2}, Lcom/facebook/internal/t$c;->a()I

    move-result v2

    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->z(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public w()Le/j/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->e:Le/j/w;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
