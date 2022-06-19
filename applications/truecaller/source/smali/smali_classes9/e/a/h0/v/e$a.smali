.class public final Le/a/h0/v/e$a;
.super Le/a/e/c2/t$b;
.source "SourceFile"

# interfaces
.implements Le/a/h0/v/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/v/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public final c:Landroid/view/View;

.field public final d:Le/a/h0/v/h;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/h0/v/h;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "view"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "presenter"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/e/c2/t$b;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Le/a/h0/v/e$a;->c:Landroid/view/View;

    iput-object v2, v0, Le/a/h0/v/e$a;->d:Le/a/h0/v/h;

    .line 2
    new-instance v2, Le/a/h0/v/e$a$b;

    invoke-direct {v2, v0}, Le/a/h0/v/e$a$b;-><init>(Le/a/h0/v/e$a;)V

    invoke-static {v2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Le/a/h0/v/e$a;->b:Ls1/g;

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/h0/v/e$a;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v2

    new-instance v3, Le/a/h0/v/e$a$a;

    invoke-direct {v3, v0}, Le/a/h0/v/e$a$a;-><init>(Le/a/h0/v/e$a;)V

    const v4, 0x7f0805fe

    invoke-virtual {v2, v4, v3}, Lcom/truecaller/common/ui/listitem/ListItemX;->i1(ILs1/z/b/l;)V

    .line 4
    new-instance v2, Le/a/b0/a/b/a;

    new-instance v3, Le/a/p5/i0;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "view.context"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/a/h0/v/e$a;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    .line 6
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffef

    invoke-direct/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v5}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final N4()Lcom/truecaller/common/ui/listitem/ListItemX;
    .locals 1

    iget-object v0, p0, Le/a/h0/v/e$a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h0/v/e$a;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method public v1(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/h0/v/e$a;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public v4(Ljava/lang/String;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Le/a/h0/v/e$a;->N4()Lcom/truecaller/common/ui/listitem/ListItemX;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7fe

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
