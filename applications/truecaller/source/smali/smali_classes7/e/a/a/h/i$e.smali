.class public final Le/a/a/h/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/i;->E5(Ljava/util/List;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/i;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/h/i;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/i$e;->a:Le/a/a/h/i;

    iput-object p2, p0, Le/a/a/h/i$e;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Le/a/a/h/i$e;->a:Le/a/a/h/i;

    const-string v0, "invite"

    .line 4
    invoke-virtual {p1, v0}, Le/a/a/h/i;->Lj(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/a/h/i$e;->a:Le/a/a/h/i;

    iget-object v0, p0, Le/a/a/h/i$e;->b:Ljava/util/List;

    .line 6
    iget-object v1, p1, Le/a/a/h/i;->d:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 8
    invoke-static {}, Le/a/l5/a/s0;->a()Le/a/l5/a/s0$b;

    move-result-object v3

    .line 9
    iget-object v4, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v4}, Le/a/l5/a/s0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 11
    iget-object v4, p1, Le/a/a/h/i;->r:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Le/a/l5/a/s0$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 12
    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v5, v2

    :cond_1
    invoke-virtual {v3, v5}, Le/a/l5/a/s0$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    const-string v2, "Send"

    .line 13
    invoke-virtual {v3, v2}, Le/a/l5/a/s0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 14
    iget-object v2, p1, Le/a/a/h/i;->q:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-virtual {v3}, Le/a/l5/a/s0$b;->a()Le/a/l5/a/s0;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Le/a/a/h/i$e;->a:Le/a/a/h/i;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/h;

    if-eqz p1, :cond_3

    const v0, 0x7f12027f

    .line 17
    invoke-interface {p1, v0}, Le/a/a/h/h;->a(I)V

    :cond_3
    return-void
.end method
