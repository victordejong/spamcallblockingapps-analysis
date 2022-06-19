.class public final Le/a/c/a/j/c/j;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public a:Lq3/a/p1;

.field public final b:Le/a/c/a/g/s0;

.field public final c:Le/a/b0/m/c/a;


# direct methods
.method public constructor <init>(Le/a/c/a/g/s0;Le/a/b0/m/c/a;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/s0;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/c/a/j/c/j;->b:Le/a/c/a/g/s0;

    iput-object p2, p0, Le/a/c/a/j/c/j;->c:Le/a/b0/m/c/a;

    return-void
.end method


# virtual methods
.method public final N4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 19

    move-object/from16 v0, p1

    .line 1
    new-instance v18, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    iget-object v1, v0, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    iget-object v2, v0, Le/a/b0/m/a/a;->a:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xffbc

    move-object/from16 v0, v18

    .line 4
    invoke-direct/range {v0 .. v17}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v18
.end method
