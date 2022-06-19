.class public final Le/a/a/h1/n/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/b/b;


# instance fields
.field public final a:Le/a/x2/b;


# direct methods
.method public constructor <init>(Le/a/x2/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "conversationAvatarConfigProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h1/n/d;->a:Le/a/x2/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/truecaller/messaging/data/types/Conversation;

    const-string v1, "type"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Le/a/a/h1/n/d;->a:Le/a/x2/b;

    invoke-virtual {v2, v0}, Le/a/x2/b;->b(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xe0ff

    invoke-static/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    return-object v0
.end method
