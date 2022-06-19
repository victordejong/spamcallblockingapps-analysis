.class public final Le/a/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/messaging/data/types/InboxTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/messaging/data/types/InboxTab;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxTab"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/b/o;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/b/o;->b:Lcom/truecaller/messaging/data/types/InboxTab;

    return-void
.end method
