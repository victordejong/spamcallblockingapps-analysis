.class public final Le/a/a/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/h$e;,
        Le/a/a/k/h$g;,
        Le/a/a/k/h$h;,
        Le/a/a/k/h$d;,
        Le/a/a/k/h$f;,
        Le/a/a/k/h$b;,
        Le/a/a/k/h$c;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/k/h;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public b(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/h;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/h$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/h$h;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/h$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public g(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/h;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/h$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/h$f;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/h$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public h(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/h;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/h$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/h$b;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/h$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public i(Le/a/a/k/q;Landroid/content/Intent;I)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/q;",
            "Landroid/content/Intent;",
            "I)",
            "Le/a/r2/x<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/h;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/h$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/h$d;-><init>(Le/a/r2/e;Le/a/a/k/q;Landroid/content/Intent;ILe/a/a/k/h$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public j(Lcom/truecaller/messaging/data/types/Message;J[Lcom/truecaller/data/entity/messaging/Participant;J)Le/a/r2/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "J[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/h;->a:Le/a/r2/w;

    new-instance v11, Le/a/a/k/h$g;

    new-instance v3, Le/a/r2/e;

    invoke-direct {v3}, Le/a/r2/e;-><init>()V

    const/4 v10, 0x0

    move-object v2, v11

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Le/a/a/k/h$g;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;J[Lcom/truecaller/data/entity/messaging/Participant;JLe/a/a/k/h$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v1, v11}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public k(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;II)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "II)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/h;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/k/h$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/a/k/h$c;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;IILe/a/a/k/h$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public l(JJ)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/h;->a:Le/a/r2/w;

    new-instance v8, Le/a/a/k/h$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Le/a/a/k/h$e;-><init>(Le/a/r2/e;JJLe/a/a/k/h$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
