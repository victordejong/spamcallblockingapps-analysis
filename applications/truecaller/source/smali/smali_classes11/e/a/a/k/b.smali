.class public final synthetic Le/a/a/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/a/k/u;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public synthetic constructor <init>(Le/a/a/k/u;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/b;->a:Le/a/a/k/u;

    iput-object p2, p0, Le/a/a/k/b;->b:Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le/a/a/k/b;->a:Le/a/a/k/u;

    iget-object v1, p0, Le/a/a/k/b;->b:Lcom/truecaller/messaging/data/types/Message;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-object p1, v0, Le/a/a/k/u;->e:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/i;

    invoke-interface {p1, v1}, Le/a/a/k/i;->g(Lcom/truecaller/messaging/data/types/Message;)V

    return-void
.end method
