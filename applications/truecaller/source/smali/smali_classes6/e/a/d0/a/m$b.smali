.class public final Le/a/d0/a/m$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/m;->Jj(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d0/v;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Le/a/d0/v;Z)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/m$b;->b:Le/a/d0/v;

    iput-boolean p2, p0, Le/a/d0/a/m$b;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const-string v2, "it"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Le/a/d0/a/m$b;->b:Le/a/d0/v;

    iget-object v2, v2, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string v3, "number"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    iget-boolean v2, v0, Le/a/d0/a/m$b;->c:Z

    move/from16 v17, v2

    const/4 v2, 0x0

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

    const/16 v18, 0x7ffd

    invoke-static/range {v1 .. v18}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    return-object v1
.end method
