.class public final Le/a/b/a/a/a/e0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/e0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/m/j;

.field public final synthetic b:Le/a/b/a/a/a/e0;


# direct methods
.method public constructor <init>(Le/a/b/m/j;Le/a/b/a/a/a/e0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/e0$d;->a:Le/a/b/m/j;

    iput-object p2, p0, Le/a/b/a/a/a/e0$d;->b:Le/a/b/a/a/a/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/b/a/a/a/e0$d;->b:Le/a/b/a/a/a/e0;

    invoke-virtual {v1}, Le/a/b/a/a/a/e0;->OA()Le/a/b/a/a/d/b;

    move-result-object v1

    new-instance v2, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    iget-object v3, v0, Le/a/b/a/a/a/e0$d;->a:Le/a/b/m/j;

    iget-object v3, v3, Le/a/b/m/j;->b:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "etDesc"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

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

    const/16 v17, 0x3ffb

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, v2

    invoke-direct/range {v2 .. v18}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILs1/z/c/f;)V

    invoke-virtual {v1, v2}, Le/a/b/a/a/d/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V

    return-void
.end method
