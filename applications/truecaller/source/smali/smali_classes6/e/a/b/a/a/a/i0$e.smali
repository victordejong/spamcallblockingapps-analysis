.class public final Le/a/b/a/a/a/i0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/i0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/i0;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/i0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/i0$e;->a:Le/a/b/a/a/a/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/b/a/a/a/i0$e;->a:Le/a/b/a/a/a/i0;

    invoke-virtual {v1}, Le/a/b/a/a/a/i0;->PA()Le/a/b/a/a/d/b;

    move-result-object v1

    new-instance v3, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    iget-object v2, v0, Le/a/b/a/a/a/i0$e;->a:Le/a/b/a/a/a/i0;

    invoke-static {v2}, Le/a/b/a/a/a/i0;->OA(Le/a/b/a/a/a/i0;)Le/a/b/m/o;

    move-result-object v2

    iget-object v2, v2, Le/a/b/m/o;->b:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "binding.etName"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v19, v2

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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3ffe

    const/16 v18, 0x0

    move-object v2, v3

    move-object v0, v3

    move-object/from16 v3, v19

    invoke-direct/range {v2 .. v18}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILs1/z/c/f;)V

    invoke-virtual {v1, v0}, Le/a/b/a/a/d/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V

    return-void
.end method
