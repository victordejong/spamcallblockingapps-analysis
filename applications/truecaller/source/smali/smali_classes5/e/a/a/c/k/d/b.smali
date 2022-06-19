.class public final Le/a/a/c/k/d/b;
.super Le/a/a/c/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/c/k/b<",
        "Le/a/a/c/n6;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/c/m6;

.field public final d:Le/a/a/c/w3;


# direct methods
.method public constructor <init>(Le/a/a/c/m6;Le/a/a/c/w3;)V
    .locals 1

    const-string v0, "loadHistoryClickListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/a/c/k/b;-><init>(Le/a/a/c/w3;)V

    iput-object p1, p0, Le/a/a/c/k/d/b;->c:Le/a/a/c/m6;

    iput-object p2, p0, Le/a/a/c/k/d/b;->d:Le/a/a/c/w3;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/n6;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/k/d/b;->d:Le/a/a/c/w3;

    invoke-interface {v0, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.messaging.conversation.adapter.loader.LoadHistoryItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/a/c/k/d/a;

    .line 4
    iget-object v0, p2, Le/a/a/c/k/d/a;->b:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    .line 5
    invoke-interface {p1, v0}, Le/a/a/c/n6;->X2(Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;)V

    .line 6
    iget-object p2, p2, Le/a/a/c/k/d/a;->b:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    .line 7
    iget-object v0, p0, Le/a/a/c/k/d/b;->c:Le/a/a/c/m6;

    invoke-interface {p1, p2, v0}, Le/a/a/c/n6;->U3(Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;Le/a/a/c/m6;)V

    return-void
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/d/b;->d:Le/a/a/c/w3;

    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    .line 2
    instance-of p1, p1, Le/a/a/c/k/d/a;

    return p1
.end method
