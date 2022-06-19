.class public final Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
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
        "describeContents",
        "",
        "shouldKeepTrackOfMultipleIntents",
        "",
        "tryAuthorize",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
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
            "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler$a;

    invoke-direct {v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$a;-><init>()V

    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    const-string p1, "katana_proxy_auth"

    .line 4
    iput-object p1, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    const-string p1, "katana_proxy_auth"

    .line 2
    iput-object p1, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->d:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r(Lcom/facebook/login/LoginClient$Request;)I
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "request"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/q;

    .line 2
    sget-boolean v3, Le/j/f0;->o:Z

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Lcom/facebook/internal/v;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-boolean v2, v2, Lcom/facebook/login/q;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "init"

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "e2e.toString()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v6, Lcom/facebook/internal/l0;->a:Lcom/facebook/internal/l0;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    .line 10
    iget-object v15, v0, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 11
    iget-object v14, v0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->a()Z

    move-result v22

    .line 13
    iget-object v6, v0, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/j;

    if-nez v6, :cond_1

    .line 14
    sget-object v6, Lcom/facebook/login/j;->b:Lcom/facebook/login/j;

    :cond_1
    move-object v13, v6

    .line 15
    iget-object v6, v0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v6}, Lcom/facebook/login/LoginMethodHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 17
    iget-object v11, v0, Lcom/facebook/login/LoginClient$Request;->h:Ljava/lang/String;

    .line 18
    iget-object v10, v0, Lcom/facebook/login/LoginClient$Request;->j:Ljava/lang/String;

    .line 19
    iget-boolean v9, v0, Lcom/facebook/login/LoginClient$Request;->k:Z

    .line 20
    iget-boolean v8, v0, Lcom/facebook/login/LoginClient$Request;->m:Z

    .line 21
    iget-boolean v7, v0, Lcom/facebook/login/LoginClient$Request;->n:Z

    .line 22
    iget-object v6, v0, Lcom/facebook/login/LoginClient$Request;->o:Ljava/lang/String;

    .line 23
    iget-object v0, v0, Lcom/facebook/login/LoginClient$Request;->r:Lcom/facebook/login/h;

    if-nez v0, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    :goto_1
    const-class v5, Lcom/facebook/internal/l0;

    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "e2e"

    const/16 v23, 0x0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    :try_start_1
    const-string v0, "applicationId"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultAudience"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientState"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authType"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/facebook/internal/l0;->c:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 29
    check-cast v16, Lcom/facebook/internal/l0$e;

    .line 30
    sget-object v17, Lcom/facebook/internal/l0;->a:Lcom/facebook/internal/l0;

    .line 31
    sget-object v18, Lcom/facebook/login/x;->c:Lcom/facebook/login/x;

    move-object/from16 v24, v6

    move-object/from16 v6, v17

    move/from16 v25, v7

    move-object/from16 v7, v16

    move/from16 v26, v8

    move-object v8, v15

    move/from16 v27, v9

    move-object v9, v14

    move-object/from16 v28, v10

    move-object v10, v3

    move-object/from16 v29, v11

    move/from16 v11, v22

    move-object/from16 v30, v12

    move-object v12, v13

    move-object/from16 v31, v13

    move-object/from16 v13, v30

    move-object/from16 v32, v14

    move-object/from16 v14, v29

    move-object/from16 v33, v15

    move v15, v2

    move-object/from16 v16, v28

    move/from16 v17, v27

    move/from16 v19, v26

    move/from16 v20, v25

    move-object/from16 v21, v24

    .line 32
    invoke-virtual/range {v6 .. v21}, Lcom/facebook/internal/l0;->c(Lcom/facebook/internal/l0$e;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/j;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/facebook/login/x;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 33
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move-object/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    goto :goto_2

    :cond_5
    move-object/from16 v23, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v0, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v1, p0

    .line 35
    invoke-virtual {v1, v4, v3}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 37
    sget-object v5, Lcom/facebook/internal/t$c;->b:Lcom/facebook/internal/t$c;

    invoke-virtual {v5}, Lcom/facebook/internal/t$c;->a()I

    move-result v5

    .line 38
    invoke-virtual {v1, v4, v5}, Lcom/facebook/login/NativeAppLoginMethodHandler;->z(Landroid/content/Intent;I)Z

    move-result v4

    if-eqz v4, :cond_6

    return v2

    :cond_7
    const/4 v2, 0x0

    return v2
.end method
