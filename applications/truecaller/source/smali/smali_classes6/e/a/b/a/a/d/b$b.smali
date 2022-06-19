.class public final Le/a/b/a/a/d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/d/b;->d(Landroid/net/Uri;Lcom/truecaller/bizmon/newBusiness/workers/ImageType;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ln3/m0/x;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/d/b;


# direct methods
.method public constructor <init>(Le/a/b/a/a/d/b;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ln3/m0/x;

    .line 2
    iget-object v2, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 3
    iget-object v2, v2, Le/a/b/a/a/d/b;->g:Ljava/util/Map;

    const-string v3, "workInfo"

    .line 4
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v1, Ln3/m0/x;->a:Ljava/util/UUID;

    const-string v4, "workInfo.id"

    .line 6
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v4, v1, Ln3/m0/x;->b:Ln3/m0/x$a;

    const-string v5, "workInfo.state"

    .line 8
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_1
    :goto_0
    sget-object v4, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->FAILED:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    goto :goto_1

    .line 11
    :cond_2
    sget-object v4, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->UPLOADED:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    goto :goto_1

    .line 12
    :cond_3
    sget-object v4, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->IN_PROGRESS:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    goto :goto_1

    .line 13
    :cond_4
    sget-object v4, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->PENDING:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    .line 14
    :goto_1
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 16
    iget-object v3, v2, Le/a/b/a/a/d/b;->d:Ln3/v/i0;

    .line 17
    iget-object v2, v2, Le/a/b/a/a/d/b;->g:Ljava/util/Map;

    .line 18
    invoke-virtual {v3, v2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 19
    sget-object v2, Ln3/m0/x$a;->c:Ln3/m0/x$a;

    .line 20
    iget-object v3, v1, Ln3/m0/x;->b:Ln3/m0/x$a;

    if-ne v2, v3, :cond_8

    .line 21
    iget-object v2, v1, Ln3/m0/x;->c:Ln3/m0/f;

    const-string v3, "imageUploadedUrl"

    .line 22
    invoke-virtual {v2, v3}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 23
    iget-object v3, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 24
    iget-object v3, v3, Le/a/b/a/a/d/b;->e:Ljava/util/Map;

    .line 25
    iget-object v1, v1, Ln3/m0/x;->a:Ljava/util/UUID;

    .line 26
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    goto/16 :goto_2

    .line 27
    :cond_6
    iget-object v1, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 28
    iget-object v1, v1, Le/a/b/a/a/d/b;->h:Ljava/util/List;

    const-string v3, "url"

    .line 29
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v1, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    new-instance v15, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    move-object v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    .line 31
    iget-object v3, v1, Le/a/b/a/a/d/b;->h:Ljava/util/List;

    .line 32
    invoke-static {v3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1fff

    const/16 v18, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILs1/z/c/f;)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Le/a/b/a/a/d/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V

    .line 33
    iget-object v1, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 34
    iget-object v1, v1, Le/a/b/a/a/d/b;->h:Ljava/util/List;

    .line 35
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 36
    :cond_7
    iget-object v1, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    new-instance v3, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x37ff

    const/16 v22, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v6 .. v22}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILs1/z/c/f;)V

    invoke-virtual {v1, v3}, Le/a/b/a/a/d/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V

    goto :goto_2

    .line 37
    :cond_8
    sget-object v2, Ln3/m0/x$a;->d:Ln3/m0/x$a;

    if-ne v2, v3, :cond_a

    .line 38
    iget-object v1, v1, Ln3/m0/x;->c:Ln3/m0/f;

    const-string v2, "errorStringResInt"

    .line 39
    invoke-virtual {v1, v2}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 40
    iget-object v2, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 41
    iget-object v2, v2, Le/a/b/a/a/d/b;->l:Ln3/v/k0;

    .line 42
    new-instance v3, Le/a/b/l/l;

    invoke-direct {v3, v1}, Le/a/b/l/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 43
    :cond_9
    iget-object v1, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 44
    iget-object v1, v1, Le/a/b/a/a/d/b;->h:Ljava/util/List;

    .line 45
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 46
    :cond_a
    sget-object v1, Ln3/m0/x$a;->f:Ln3/m0/x$a;

    if-ne v1, v3, :cond_b

    .line 47
    iget-object v1, v0, Le/a/b/a/a/d/b$b;->a:Le/a/b/a/a/d/b;

    .line 48
    iget-object v1, v1, Le/a/b/a/a/d/b;->h:Ljava/util/List;

    .line 49
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_b
    :goto_2
    return-void
.end method
