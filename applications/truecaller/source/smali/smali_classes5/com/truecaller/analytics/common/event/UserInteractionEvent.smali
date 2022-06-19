.class public final Lcom/truecaller/analytics/common/event/UserInteractionEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->b:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 3

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 4
    iget-object v2, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->b:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-virtual {v2}, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 5
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object v1

    .line 6
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    iget-object v0, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->b:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    iget-object p1, p1, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->b:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->b:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "UserInteractionEvent(context="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;->b:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
