.class public final Le/a/a/c/e7$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/e7;


# direct methods
.method public constructor <init>(Le/a/a/c/e7;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/e7$a;->b:Le/a/a/c/e7;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "tag"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/e7$a;->b:Le/a/a/c/e7;

    iget-object v1, v0, Le/a/a/c/e7;->d:Ls1/z/b/l;

    iget-object v0, v0, Le/a/a/c/e7;->e:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Le/a/c/r/j/k;

    .line 5
    iget-object v1, p0, Le/a/a/c/e7$a;->b:Le/a/a/c/e7;

    iget-object v1, v1, Le/a/a/c/e7;->a:Lcom/truecaller/messaging/data/types/Message;

    invoke-static {v1, p1}, Le/a/c/p/a;->c3(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)Le/a/c/h/m/c;

    move-result-object v3

    .line 6
    iget-object v1, p0, Le/a/a/c/e7$a;->b:Le/a/a/c/e7;

    iget-object v4, v1, Le/a/a/c/e7;->e:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 7
    new-instance v5, Le/a/c/r/j/p$i;

    sget-object v1, Lcom/truecaller/insights/models/pdo/ClassifierType;->USER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-direct {v5, p1, v1}, Le/a/c/r/j/p$i;-><init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    .line 8
    iget-object v1, p0, Le/a/a/c/e7$a;->b:Le/a/a/c/e7;

    iget-object v1, v1, Le/a/a/c/e7;->a:Lcom/truecaller/messaging/data/types/Message;

    iget v1, v1, Lcom/truecaller/messaging/data/types/Message;->t:I

    .line 9
    invoke-static {v1}, Le/a/m0/e;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    .line 11
    invoke-direct/range {v2 .. v7}, Le/a/c/r/j/k;-><init>(Le/a/c/h/m/c;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Le/a/c/r/j/p;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Le/a/c/r/j/f;->d()V

    .line 12
    iget-object p2, p0, Le/a/a/c/e7$a;->b:Le/a/a/c/e7;

    iget-object v0, p2, Le/a/a/c/e7;->b:Le/a/a/c/k/a/j$b;

    iget-object p2, p2, Le/a/a/c/e7;->a:Lcom/truecaller/messaging/data/types/Message;

    invoke-interface {v0, p1, p2}, Le/a/a/c/a/k$a;->w8(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
