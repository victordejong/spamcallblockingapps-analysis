.class public final Le/a/a/g/a$a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic c:Le/a/a/g/j0/c0;

.field public final synthetic d:Le/a/a/g/a$a;

.field public final synthetic e:Ljava/util/TreeSet;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/messaging/Participant;Le/a/a/g/j0/c0;Le/a/a/g/a$a;Ljava/util/Set;Ljava/util/TreeSet;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$a$b;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Le/a/a/g/a$a$b;->c:Le/a/a/g/j0/c0;

    iput-object p3, p0, Le/a/a/g/a$a$b;->d:Le/a/a/g/a$a;

    iput-object p5, p0, Le/a/a/g/a$a$b;->e:Ljava/util/TreeSet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    const-string v0, "rawParticipant"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/g/a$a$b;->b:Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/a/g/a$a$b;->e:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/g/a$a$b;->e:Ljava/util/TreeSet;

    iget-object v1, p0, Le/a/a/g/a$a$b;->b:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/g/a$a$b;->d:Le/a/a/g/a$a;

    iget-object v0, v0, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$a$b;->c:Le/a/a/g/j0/c0;

    const-string v2, "participantCursor"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1}, Le/a/a/g/j0/c0;->g1()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    const-string v2, "participant"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-interface {v1}, Le/a/a/g/j0/c0;->L()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v3

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v4

    :goto_3
    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Le/a/a/g/a$a$b;->e:Ljava/util/TreeSet;

    iget-object v0, p0, Le/a/a/g/a$a$b;->b:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 14
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
