.class public final Le/a/m4/c/i/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m4/c/i/a/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/b0/o/a;

.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/o/a;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m4/c/i/a/c;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/m4/c/i/a/c;->c:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/m4/c/i/a/c;->d:Ls1/w/f;

    iput-object p4, p0, Le/a/m4/c/i/a/c;->e:Ls1/w/f;

    .line 2
    sget-object p1, Le/a/m4/c/i/a/c$a;->b:Le/a/m4/c/i/a/c$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/m4/c/i/a/c;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/e/c0;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/m4/c/i/a/c;->d:Ls1/w/f;

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    .line 2
    new-instance v4, Le/a/m4/c/i/a/d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/m4/c/i/a/d;-><init>(Le/a/m4/c/i/a/c;Le/a/e/c0;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Le/a/m4/c/i/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bizProfileV2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-object v0
.end method

.method public c()Le/a/m4/c/i/a/h;
    .locals 3

    .line 1
    sget-object v0, Le/a/m4/c/i/a/h$a$d;->a:Le/a/m4/c/i/a/h$a$d;

    :try_start_0
    invoke-virtual {p0}, Le/a/m4/c/i/a/c;->b()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-object v0, Le/a/m4/c/i/a/h$a$a;->a:Le/a/m4/c/i/a/h$a$a;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Le/a/m4/c/i/a/c;->c:Le/a/b0/o/a;

    const-string v2, "companyProfile"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/a/m4/c/i/a/h$b;->a:Le/a/m4/c/i/a/h$b;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    :goto_0
    return-object v0

    .line 7
    :cond_2
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 8
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_3

    sget-object v0, Le/a/m4/c/i/a/h$a$c;->a:Le/a/m4/c/i/a/h$a$c;

    goto :goto_1

    .line 9
    :cond_3
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_4

    sget-object v0, Le/a/m4/c/i/a/h$a$b;->a:Le/a/m4/c/i/a/h$a$b;

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public d()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/m4/c/i/a/c;->b()Ljava/io/File;

    move-result-object v1

    .line 2
    sget-object v2, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v2, p0, Le/a/m4/c/i/a/c;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/e/k;

    .line 4
    const-class v3, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    invoke-virtual {v2, v1, v3}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {v1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 3

    const-string v0, "bizProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/m4/c/i/a/c;->b()Ljava/io/File;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/m4/c/i/a/c;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/e/k;

    .line 3
    invoke-virtual {v1, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gson.toJson(bizProfile)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Ls1/y/h;->e(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public f(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 32

    move-object/from16 v0, p1

    const-string v1, "bizProfile"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/m4/c/i/a/c;->d()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-result-object v1

    const-string v2, "$this$combinesWith"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v6, v3

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getAbout()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getAbout()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v8, v3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getPaymentIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getPaymentIdentifier()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v13, v3

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 6
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    :goto_6
    move-object v7, v3

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    .line 7
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getSize()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    goto :goto_8

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getSize()Ljava/lang/String;

    move-result-object v3

    :goto_8
    move-object v12, v3

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    .line 8
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getTags()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    goto :goto_a

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getTags()Ljava/util/List;

    move-result-object v3

    :goto_a
    move-object v9, v3

    goto :goto_b

    :cond_b
    const/4 v9, 0x0

    .line 9
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v3

    if-eqz v3, :cond_13

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v5

    goto :goto_c

    :cond_c
    const/4 v5, 0x0

    .line 10
    :goto_c
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v10, Lcom/truecaller/profile/data/dto/businessV2/Branding;

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getLogo()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    goto :goto_d

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getLogo()Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    :cond_e
    const/4 v11, 0x0

    .line 13
    :goto_d
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getImageUrls()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_f

    goto :goto_e

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getImageUrls()Ljava/util/List;

    move-result-object v14

    goto :goto_e

    :cond_10
    const/4 v14, 0x0

    .line 14
    :goto_e
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    goto :goto_f

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    .line 15
    :goto_f
    invoke-direct {v10, v11, v3, v14}, Lcom/truecaller/profile/data/dto/businessV2/Branding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v14, v10

    goto :goto_10

    :cond_13
    if-eqz v1, :cond_14

    .line 16
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v3

    move-object v14, v3

    goto :goto_10

    :cond_14
    const/4 v14, 0x0

    .line 17
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v3

    if-eqz v3, :cond_1e

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v5

    goto :goto_11

    :cond_15
    const/4 v5, 0x0

    .line 18
    :goto_11
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v10, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    .line 20
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getFacebookId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_16

    goto :goto_12

    :cond_16
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getFacebookId()Ljava/lang/String;

    move-result-object v11

    goto :goto_12

    :cond_17
    const/4 v11, 0x0

    .line 21
    :goto_12
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getEmail()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_18

    goto :goto_13

    :cond_18
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getEmail()Ljava/lang/String;

    move-result-object v15

    goto :goto_13

    :cond_19
    const/4 v15, 0x0

    .line 22
    :goto_13
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getTwitterId()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1a

    goto :goto_14

    :cond_1a
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getTwitterId()Ljava/lang/String;

    move-result-object v16

    :goto_14
    move-object/from16 v4, v16

    goto :goto_15

    :cond_1b
    const/4 v4, 0x0

    .line 23
    :goto_15
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    goto :goto_16

    :cond_1c
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_1d
    const/4 v3, 0x0

    .line 24
    :goto_16
    invoke-direct {v10, v11, v15, v3, v4}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_1e
    if-eqz v1, :cond_1f

    .line 25
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v3

    move-object v10, v3

    goto :goto_17

    :cond_1f
    const/4 v10, 0x0

    .line 26
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    if-eqz v1, :cond_20

    .line 27
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v1

    goto :goto_18

    :cond_20
    const/4 v1, 0x0

    :goto_18
    const-string v3, "locationDetails"

    .line 28
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v1, :cond_21

    .line 31
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    .line 32
    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLocId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 33
    :cond_21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    .line 34
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    .line 35
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v11, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    .line 37
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLocId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_22

    goto :goto_1b

    :cond_22
    if-eqz v5, :cond_23

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLocId()Ljava/lang/String;

    move-result-object v15

    :goto_1b
    move-object/from16 v18, v15

    goto :goto_1c

    :cond_23
    const/16 v18, 0x0

    .line 38
    :goto_1c
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine1()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_24

    goto :goto_1d

    :cond_24
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine1()Ljava/lang/String;

    move-result-object v15

    :goto_1d
    move-object/from16 v19, v15

    goto :goto_1e

    :cond_25
    const/16 v19, 0x0

    .line 39
    :goto_1e
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine2()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_26

    goto :goto_1f

    :cond_26
    if-eqz v5, :cond_27

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine2()Ljava/lang/String;

    move-result-object v15

    :goto_1f
    move-object/from16 v20, v15

    goto :goto_20

    :cond_27
    const/16 v20, 0x0

    .line 40
    :goto_20
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getBranch()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_28

    goto :goto_21

    :cond_28
    if-eqz v5, :cond_29

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getBranch()Ljava/lang/String;

    move-result-object v15

    :goto_21
    move-object/from16 v30, v15

    goto :goto_22

    :cond_29
    const/16 v30, 0x0

    .line 41
    :goto_22
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getCity()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2a

    goto :goto_23

    :cond_2a
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getCity()Ljava/lang/String;

    move-result-object v15

    :goto_23
    move-object/from16 v22, v15

    goto :goto_24

    :cond_2b
    const/16 v22, 0x0

    .line 42
    :goto_24
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getCountry()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2c

    goto :goto_25

    :cond_2c
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getCountry()Ljava/lang/String;

    move-result-object v15

    :goto_25
    move-object/from16 v25, v15

    goto :goto_26

    :cond_2d
    const/16 v25, 0x0

    .line 43
    :goto_26
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLandline()Ljava/lang/Long;

    move-result-object v15

    if-eqz v15, :cond_2e

    goto :goto_27

    :cond_2e
    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLandline()Ljava/lang/Long;

    move-result-object v15

    :goto_27
    move-object/from16 v31, v15

    goto :goto_28

    :cond_2f
    const/16 v31, 0x0

    .line 44
    :goto_28
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLandmark()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_30

    goto :goto_29

    :cond_30
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLandmark()Ljava/lang/String;

    move-result-object v15

    :goto_29
    move-object/from16 v28, v15

    goto :goto_2a

    :cond_31
    const/16 v28, 0x0

    .line 45
    :goto_2a
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLongitude()Ljava/lang/Double;

    move-result-object v15

    if-eqz v15, :cond_32

    goto :goto_2b

    :cond_32
    if-eqz v5, :cond_33

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLatitude()Ljava/lang/Double;

    move-result-object v15

    :goto_2b
    move-object/from16 v27, v15

    goto :goto_2c

    :cond_33
    const/16 v27, 0x0

    .line 46
    :goto_2c
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLatitude()Ljava/lang/Double;

    move-result-object v15

    if-eqz v15, :cond_34

    goto :goto_2d

    :cond_34
    if-eqz v5, :cond_35

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLatitude()Ljava/lang/Double;

    move-result-object v15

    :goto_2d
    move-object/from16 v26, v15

    goto :goto_2e

    :cond_35
    const/16 v26, 0x0

    .line 47
    :goto_2e
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getOpenHours()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_36

    goto :goto_2f

    :cond_36
    if-eqz v5, :cond_37

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getOpenHours()Ljava/util/List;

    move-result-object v15

    :goto_2f
    move-object/from16 v29, v15

    goto :goto_30

    :cond_37
    const/16 v29, 0x0

    .line 48
    :goto_30
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getState()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_38

    goto :goto_31

    :cond_38
    if-eqz v5, :cond_39

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getState()Ljava/lang/String;

    move-result-object v15

    :goto_31
    move-object/from16 v24, v15

    goto :goto_32

    :cond_39
    const/16 v24, 0x0

    .line 49
    :goto_32
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getStreet()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3a

    goto :goto_33

    :cond_3a
    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getStreet()Ljava/lang/String;

    move-result-object v15

    :goto_33
    move-object/from16 v21, v15

    goto :goto_34

    :cond_3b
    const/16 v21, 0x0

    .line 50
    :goto_34
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getZipCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    goto :goto_35

    :cond_3c
    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getZipCode()Ljava/lang/String;

    move-result-object v1

    :goto_35
    move-object/from16 v23, v1

    goto :goto_36

    :cond_3d
    const/16 v23, 0x0

    :goto_36
    move-object/from16 v17, v11

    .line 51
    invoke-direct/range {v17 .. v31}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_3e
    move-object v11, v3

    goto :goto_38

    :cond_3f
    if-eqz v1, :cond_40

    .line 53
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v4

    goto :goto_37

    :cond_40
    const/4 v4, 0x0

    :goto_37
    move-object v11, v4

    .line 54
    :goto_38
    new-instance v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)V

    move-object/from16 v1, p0

    .line 55
    invoke-virtual {v1, v0}, Le/a/m4/c/i/a/c;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    return-void
.end method
