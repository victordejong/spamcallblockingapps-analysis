.class public final Le/a/d/c/a/p/a/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/p/a/t;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/t;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/t;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/t$a;->a:Le/a/d/c/a/p/a/t;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/d/c0/j;

    .line 2
    instance-of v2, v1, Le/a/d/c0/j$c;

    if-eqz v2, :cond_0

    iget-object v1, v0, Le/a/d/c/a/p/a/t$a;->a:Le/a/d/c/a/p/a/t;

    iget-object v1, v1, Le/a/d/c/a/p/a/t;->f:Le/a/d/c/a/p/a/u;

    .line 3
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/a/p/a/p;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 4
    invoke-interface {v1, v2}, Le/a/d/c/a/p/a/p;->i(Z)V

    goto/16 :goto_0

    .line 5
    :cond_0
    instance-of v2, v1, Le/a/d/c0/j$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, v0, Le/a/d/c/a/p/a/t$a;->a:Le/a/d/c/a/p/a/t;

    iget-object v2, v2, Le/a/d/c/a/p/a/t;->f:Le/a/d/c/a/p/a/u;

    .line 7
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/p;

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, v3}, Le/a/d/c/a/p/a/p;->i(Z)V

    .line 9
    :cond_1
    iget-object v2, v0, Le/a/d/c/a/p/a/t$a;->a:Le/a/d/c/a/p/a/t;

    iget-object v2, v2, Le/a/d/c/a/p/a/t;->f:Le/a/d/c/a/p/a/u;

    check-cast v1, Le/a/d/c0/j$b;

    .line 10
    iget-object v1, v1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    .line 11
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/p;

    if-eqz v2, :cond_3

    .line 12
    invoke-static {v1}, Le/a/p5/s0/g;->J(Le/a/d/b0/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    invoke-interface {v2, v4}, Le/a/d/c/a/p/a/p;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 13
    iget-object v1, v1, Le/a/d/b0/a;->c:Ljava/lang/String;

    const-string v4, " "

    .line 14
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v1, v4, v3, v3, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Le/a/d/c/a/p/a/p;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    instance-of v1, v1, Le/a/d/c0/j$a;

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, v0, Le/a/d/c/a/p/a/t$a;->a:Le/a/d/c/a/p/a/t;

    iget-object v1, v1, Le/a/d/c/a/p/a/t;->f:Le/a/d/c/a/p/a/u;

    .line 17
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/a/p/a/p;

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v1, v3}, Le/a/d/c/a/p/a/p;->i(Z)V

    .line 19
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v4, v2

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xffff

    invoke-direct/range {v4 .. v21}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    invoke-interface {v1, v2}, Le/a/d/c/a/p/a/p;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 20
    iget-object v2, v0, Le/a/d/c/a/p/a/t$a;->a:Le/a/d/c/a/p/a/t;

    iget-object v2, v2, Le/a/d/c/a/p/a/t;->f:Le/a/d/c/a/p/a/u;

    .line 21
    iget-object v2, v2, Le/a/d/c/a/p/a/u;->l:Le/a/p5/c0;

    .line 22
    sget v4, Lcom/truecaller/voip/R$string;->voip_non_identified_contact:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026p_non_identified_contact)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/d/c/a/p/a/p;->setName(Ljava/lang/String;)V

    .line 23
    :cond_3
    :goto_0
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
