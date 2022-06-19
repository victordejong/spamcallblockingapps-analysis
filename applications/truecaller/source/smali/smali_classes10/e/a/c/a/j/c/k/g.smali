.class public final Le/a/c/a/j/c/k/g;
.super Le/a/c/a/j/c/k/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/j/c/k/d<",
        "Le/a/c/a/j/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lq3/a/p1;

.field public final c:Le/a/c/a/g/i1;

.field public final d:Le/a/b0/m/c/a;

.field public final e:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Le/a/c/a/j/b/j;",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/g/i1;Le/a/b0/m/c/a;Ls1/z/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/g/i1;",
            "Le/a/b0/m/c/a;",
            "Ls1/z/b/p<",
            "-",
            "Le/a/c/a/j/b/j;",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/i1;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Le/a/c/a/j/c/k/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/c/a/j/c/k/g;->c:Le/a/c/a/g/i1;

    iput-object p2, p0, Le/a/c/a/j/c/k/g;->d:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/j/c/k/g;->e:Ls1/z/b/p;

    return-void
.end method


# virtual methods
.method public O4()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/j/c/k/g;->b:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final P4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
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
