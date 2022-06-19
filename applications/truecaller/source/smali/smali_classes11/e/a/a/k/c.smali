.class public final synthetic Le/a/a/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/a/k/u;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic c:Le/a/r2/d0;


# direct methods
.method public synthetic constructor <init>(Le/a/a/k/u;Lcom/truecaller/messaging/data/types/Message;Le/a/r2/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/c;->a:Le/a/a/k/u;

    iput-object p2, p0, Le/a/a/k/c;->b:Lcom/truecaller/messaging/data/types/Message;

    iput-object p3, p0, Le/a/a/k/c;->c:Le/a/r2/d0;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Le/a/a/k/c;->a:Le/a/a/k/u;

    iget-object v1, p0, Le/a/a/k/c;->b:Lcom/truecaller/messaging/data/types/Message;

    iget-object v2, p0, Le/a/a/k/c;->c:Le/a/r2/d0;

    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 1
    iget-object v0, v0, Le/a/a/k/u;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 2
    iget-wide v3, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 3
    invoke-interface {v0, v3, v4}, Le/a/a/g/m;->Q(J)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    .line 4
    invoke-interface {v2, p1}, Le/a/r2/d0;->onResult(Ljava/lang/Object;)V

    return-void
.end method
