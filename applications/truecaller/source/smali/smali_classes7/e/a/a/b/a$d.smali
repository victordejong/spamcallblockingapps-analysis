.class public final Le/a/a/b/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/b/a$d;->a:Le/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdShown()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/b/a$d;->a:Le/a/a/b/a;

    .line 2
    iget-object v0, v0, Le/a/a/b/a;->r0:Lcom/truecaller/messaging/data/types/InboxTab;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string v0, "INBOX"

    goto :goto_0

    :cond_0
    const-string v0, "PROMOTION_INBOX"

    goto :goto_0

    :cond_1
    const-string v0, "SPAM_INBOX"

    .line 4
    :goto_0
    iget-object v2, p0, Le/a/a/b/a$d;->a:Le/a/a/b/a;

    .line 5
    iget-object v2, v2, Le/a/a/b/a;->U:Le/a/i/d/b;

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v2, v0}, Le/a/i/d/b;->G3(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "adCounter"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "inboxTab"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
