.class public final Le/a/a/c/e5$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e5;-><init>(Le/a/r2/j;Ls1/w/f;Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Long;IZZZLjava/lang/String;Lo3/a;Lo3/a;Le/a/p5/h0;Le/a/o5/f0;Le/a/r2/f;Le/a/a/k/t;Le/a/a/i0;Le/a/r2/f;Le/a/r2/f;Le/a/r2/f;Le/a/l/t2/d;Le/a/a/c/w3;Le/a/a/c/n5;Le/a/a/c/f4;Le/a/r2/f;Le/a/r2/f;Le/a/h5/w;Le/a/p5/a0;Le/a/a/k/a/i1;Le/a/b0/e/l;Le/a/r2/f;Le/a/r2/f;Le/a/a/k0;Le/a/d/c0/s1;Le/a/w4/d;Le/a/a/c/s8/j;Le/a/a/i1/b;Le/a/a/c/r3;Le/a/a/c/s4;Le/a/d4/a;Le/a/a/o0/a;Le/a/a/b1/b;Le/a/a/k/a/b1;Le/a/o5/u1;Le/a/a/c/b4;Le/a/a/e/m;Le/a/a/y0/g0;Ln3/k/a/x;Le/a/c/i/l/f/a;Le/a/q2/i0;Le/a/c/e/c;Le/a/a/d0;Le/a/k3/j/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/e5;


# direct methods
.method public constructor <init>(Le/a/a/c/e5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/e5$b;->a:Le/a/a/c/e5;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/c/e5$b;->a:Le/a/a/c/e5;

    .line 2
    iget-object v0, p1, Le/a/a/c/e5;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "phone_numbers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p1, Le/a/a/c/e5;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v1, :cond_0

    invoke-static {v1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p1}, Le/a/a/c/e5;->ek()V

    :cond_2
    return-void
.end method
