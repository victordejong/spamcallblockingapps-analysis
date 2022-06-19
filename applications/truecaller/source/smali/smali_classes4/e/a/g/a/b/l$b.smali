.class public final Le/a/g/a/b/l$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/l;->Zk(Lcom/truecaller/data/entity/Contact;)V
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
.field public final synthetic b:Le/a/g/a/b/l;


# direct methods
.method public constructor <init>(Le/a/g/a/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/l$b;->b:Le/a/g/a/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const-string v1, "it"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Le/a/g/a/b/l$b;->b:Le/a/g/a/b/l;

    invoke-virtual {v2}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xfffd

    const/16 v18, 0x0

    move-object/from16 v1, v18

    .line 5
    invoke-static/range {v0 .. v17}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    return-object v0
.end method
