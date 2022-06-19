.class public final Le/a/a/k/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/m;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/b0/q/z;


# direct methods
.method public constructor <init>(Le/a/b0/q/z;)V
    .locals 1

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/n;->b:Le/a/b0/q/z;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/k/n;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/k/n;->b:Le/a/b0/q/z;

    invoke-interface {v0}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/a/k/n;->a:Ljava/util/Map;

    const-string v2, "this"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Participant.buildFromAdd\u2026cipants[address] = this }"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
