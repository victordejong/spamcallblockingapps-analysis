.class public final Le/a/a/c/i3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i3;->Xb(Lcom/truecaller/messaging/data/types/Message;I)V
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
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/i3;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic c:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Le/a/a/c/i3;Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;I)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i3$e;->a:Le/a/a/c/i3;

    iput-object p2, p0, Le/a/a/c/i3$e;->b:Lcom/truecaller/messaging/data/types/Message;

    iput-object p3, p0, Le/a/a/c/i3$e;->c:[Lcom/truecaller/data/entity/messaging/Participant;

    iput p4, p0, Le/a/a/c/i3$e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object v0, p0, Le/a/a/c/i3$e;->a:Le/a/a/c/i3;

    .line 3
    iget-object v0, v0, Le/a/a/c/i3;->v:Lo3/a;

    .line 4
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    iget-object v1, p0, Le/a/a/c/i3$e;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 5
    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 6
    invoke-interface {v0, v1, v2}, Le/a/a/g/m;->Q(J)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/a/c/i3$e;->a:Le/a/a/c/i3;

    .line 8
    iget-object v0, v0, Le/a/a/c/i3;->p:Le/a/a/k/t;

    .line 9
    iget-object v1, p0, Le/a/a/c/i3$e;->c:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 10
    iget v2, p0, Le/a/a/c/i3$e;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 11
    :goto_0
    invoke-interface {v0, p1, v1, v4, v2}, Le/a/a/k/t;->b(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ZZ)Le/a/r2/x;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Le/a/r2/x;->g()V

    .line 13
    iget-object v0, p0, Le/a/a/c/i3$e;->a:Le/a/a/c/i3;

    .line 14
    iget-object v0, v0, Le/a/a/c/i3;->w:Le/a/a/c/r3;

    .line 15
    iget-object v1, p0, Le/a/a/c/i3$e;->c:[Lcom/truecaller/data/entity/messaging/Participant;

    iget v2, p0, Le/a/a/c/i3$e;->d:I

    check-cast v0, Le/a/a/c/s3;

    invoke-virtual {v0, p1, v1, v2}, Le/a/a/c/s3;->d(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;I)V

    :goto_1
    return-void
.end method
