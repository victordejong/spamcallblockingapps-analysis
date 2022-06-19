.class public final Le/a/b/a/a/a/v$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/v;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/v;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/v;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/v$g;->a:Le/a/b/a/a/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/b/a/a/a/v$g;->a:Le/a/b/a/a/a/v;

    invoke-virtual {v1}, Le/a/b/a/a/a/v;->PA()Le/a/b/a/a/d/b;

    move-result-object v1

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

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    const/16 v17, 0x3fff

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILs1/z/c/f;)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Le/a/b/a/a/d/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V

    return-void
.end method
