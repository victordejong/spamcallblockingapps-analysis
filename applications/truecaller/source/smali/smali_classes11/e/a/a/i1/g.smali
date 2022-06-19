.class public final Le/a/a/i1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/i1/f;


# instance fields
.field public final a:Le/a/f4/g/f;

.field public final b:Le/a/f4/g/j;

.field public final c:Le/a/w4/d;


# direct methods
.method public constructor <init>(Le/a/f4/g/f;Le/a/f4/g/j;Le/a/w4/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "bulkImIdSearcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkSearcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactStalenessHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/i1/g;->a:Le/a/f4/g/f;

    iput-object p2, p0, Le/a/a/i1/g;->b:Le/a/f4/g/j;

    iput-object p3, p0, Le/a/a/i1/g;->c:Le/a/w4/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 3

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i1/g;->c:Le/a/w4/d;

    invoke-interface {v0, p1}, Le/a/w4/d;->c(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/i1/g;->a:Le/a/f4/g/f;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v1, "participant.normalizedAddress"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/f4/g/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/a/i1/g;->b:Le/a/f4/g/j;

    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Le/a/f4/g/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Le/a/k3/l/k/a;)V
    .locals 2

    const-string v0, "imGroupParticipant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i1/g;->c:Le/a/w4/d;

    invoke-interface {v0, p1}, Le/a/w4/d;->a(Le/a/k3/l/k/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Le/a/k3/l/k/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/i1/g;->a:Le/a/f4/g/f;

    .line 4
    iget-object p1, p1, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v0, p1}, Le/a/f4/g/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/a/i1/g;->b:Le/a/f4/g/j;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Le/a/f4/g/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
