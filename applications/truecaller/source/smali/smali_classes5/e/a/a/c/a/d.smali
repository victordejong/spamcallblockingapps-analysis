.class public final Le/a/a/c/a/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/a/b;

.field public final synthetic c:Ls1/z/b/l;

.field public final synthetic d:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

.field public final synthetic e:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic f:Le/a/c/r/j/p;

.field public final synthetic g:Le/a/c/r/j/s;


# direct methods
.method public constructor <init>(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;Le/a/c/r/j/s;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/d;->b:Le/a/a/c/a/b;

    iput-object p2, p0, Le/a/a/c/a/d;->c:Ls1/z/b/l;

    iput-object p3, p0, Le/a/a/c/a/d;->d:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    iput-object p4, p0, Le/a/a/c/a/d;->e:Lcom/truecaller/messaging/data/types/Message;

    iput-object p5, p0, Le/a/a/c/a/d;->f:Le/a/c/r/j/p;

    iput-object p6, p0, Le/a/a/c/a/d;->g:Le/a/c/r/j/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2
    iget-object v0, p0, Le/a/a/c/a/d;->b:Le/a/a/c/a/b;

    iget-object v1, p0, Le/a/a/c/a/d;->c:Ls1/z/b/l;

    iget-object v2, p0, Le/a/a/c/a/d;->d:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    iget-object v3, p0, Le/a/a/c/a/d;->e:Lcom/truecaller/messaging/data/types/Message;

    iget-object v4, p0, Le/a/a/c/a/d;->f:Le/a/c/r/j/p;

    iget-object v7, p0, Le/a/a/c/a/d;->g:Le/a/c/r/j/s;

    const/4 v6, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Le/a/a/c/a/b;->c(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;ZLjava/lang/String;Le/a/c/r/j/s;ILjava/lang/Object;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
