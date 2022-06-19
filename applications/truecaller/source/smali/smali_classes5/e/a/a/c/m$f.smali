.class public final Le/a/a/c/m$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/d2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/m;->xe(Lcom/truecaller/messaging/data/types/Message;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/m;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Le/a/a/c/m;Lcom/truecaller/messaging/data/types/Message;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/m$f;->a:Le/a/a/c/m;

    iput-object p2, p0, Le/a/a/c/m$f;->b:Lcom/truecaller/messaging/data/types/Message;

    iput-boolean p3, p0, Le/a/a/c/m$f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/m$f;->a:Le/a/a/c/m;

    .line 2
    iget-object v0, v0, Le/a/a/c/m;->b:Le/a/a/c/f4;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v2, p0, Le/a/a/c/m$f;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 4
    iget-boolean v3, p0, Le/a/a/c/m$f;->c:Z

    if-eqz v3, :cond_0

    const-string v3, "addEmojiButton"

    goto :goto_0

    :cond_0
    const-string v3, "longPress"

    .line 5
    :goto_0
    invoke-interface {v0, p1, v2, v3}, Le/a/a/c/f4;->M9(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/a/c/m$f;->a:Le/a/a/c/m;

    .line 7
    iget-object p1, p1, Le/a/a/c/m;->a:Le/a/a/c/h3;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Le/a/a/c/k/a/j$a;->e()V

    return-void

    :cond_1
    const-string p1, "actionModePresenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "inputPresenter"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
