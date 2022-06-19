.class public final Le/a/a/c/e5$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e5;->mk(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/messaging/data/types/Draft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/e5;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/truecaller/messaging/data/types/Draft;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;ZLcom/truecaller/messaging/data/types/Draft;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e5$g;->a:Le/a/a/c/e5;

    iput-boolean p2, p0, Le/a/a/c/e5$g;->b:Z

    iput-object p3, p0, Le/a/a/c/e5$g;->c:Lcom/truecaller/messaging/data/types/Draft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 2
    iget-boolean v0, p0, Le/a/a/c/e5$g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/c/e5$g;->a:Le/a/a/c/e5;

    invoke-virtual {v0, p1}, Le/a/a/c/e5;->p(Lcom/truecaller/messaging/data/types/Draft;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/c/e5$g;->c:Lcom/truecaller/messaging/data/types/Draft;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/c/e5$g;->a:Le/a/a/c/e5;

    .line 5
    iget-object v0, v0, Le/a/a/c/e5;->U:Le/a/a/c/f4;

    .line 6
    invoke-interface {v0, p1}, Le/a/a/c/f4;->p(Lcom/truecaller/messaging/data/types/Draft;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/a/c/e5$g;->a:Le/a/a/c/e5;

    .line 8
    iget-object v0, v0, Le/a/a/c/e5;->U:Le/a/a/c/f4;

    .line 9
    invoke-interface {v0, p1}, Le/a/a/c/f4;->Xd(Lcom/truecaller/messaging/data/types/Draft;)V

    .line 10
    iget-object v0, p0, Le/a/a/c/e5$g;->a:Le/a/a/c/e5;

    .line 11
    iget-object v0, v0, Le/a/a/c/e5;->U:Le/a/a/c/f4;

    .line 12
    invoke-interface {v0, p1}, Le/a/a/c/f4;->p(Lcom/truecaller/messaging/data/types/Draft;)V

    :goto_1
    return-void
.end method
