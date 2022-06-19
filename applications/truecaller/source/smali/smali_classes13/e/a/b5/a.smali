.class public abstract Le/a/b5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b5/b;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b5/a$a;,
        Le/a/b5/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/truecaller/social/SocialNetworkType;

.field public final c:Landroid/os/Handler;

.field public d:Le/a/b5/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b5/c<",
            "Le/a/b5/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Le/a/b5/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b5/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/social/SocialNetworkType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Le/a/b5/a;->a:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 4
    new-instance p1, Le/a/b5/a$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Le/a/b5/a$b;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    return-void
.end method

.method public static q(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string v0, "MSG_("

    const-string v1, ")"

    .line 1
    invoke-static {v0, p0, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "MSG_DO_ERROR"

    return-object p0

    :pswitch_1
    const-string p0, "MSG_DO_RESOLVE"

    return-object p0

    :pswitch_2
    const-string p0, "MSG_ON_DESTROYED"

    return-object p0

    :pswitch_3
    const-string p0, "MSG_DO_DESTROY"

    return-object p0

    :pswitch_4
    const-string p0, "MSG_ON_DISCONNECTED"

    return-object p0

    :pswitch_5
    const-string p0, "MSG_DO_DISCONNECTING"

    return-object p0

    :pswitch_6
    const-string p0, "MSG_ON_GOT_PROFILE"

    return-object p0

    :pswitch_7
    const-string p0, "MSG_DO_GET_PROFILE"

    return-object p0

    :pswitch_8
    const-string p0, "MSG_ON_SIGNED_OUT"

    return-object p0

    :pswitch_9
    const-string p0, "MSG_DO_SIGN_OUT"

    return-object p0

    :pswitch_a
    const-string p0, "MSG_ON_SIGNED_IN"

    return-object p0

    :pswitch_b
    const-string p0, "MSG_DO_SIGN_IN"

    return-object p0

    :pswitch_c
    const-string p0, "MSG_ON_CONNECTED"

    return-object p0

    :pswitch_d
    const-string p0, "MSG_DO_CONNECTING"

    return-object p0

    :pswitch_e
    const-string p0, "MSG_ON_INITIALIZED"

    return-object p0

    :pswitch_f
    const-string p0, "MSG_DO_INITIALIZE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/os/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    if-lez v1, :cond_0

    const-string v3, ", "

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {v2}, Le/a/b5/a;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public abstract g(Ljava/lang/Object;)V
.end method

.method public h(ILjava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Le/a/b5/d;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    :goto_0
    invoke-direct {v0, p2}, Le/a/b5/d;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x10

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, v1, v0}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, ")"

    const-string v1, ","

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Le/a/b5/a;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v1, p0, Le/a/b5/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 3
    iget-object v5, p0, Le/a/b5/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 4
    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Le/a/b5/a;->q(I)Ljava/lang/String;

    iget-object v5, p0, Le/a/b5/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Le/a/b5/a;->q(I)Ljava/lang/String;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xb

    packed-switch v1, :pswitch_data_0

    new-array v1, v2, [Ljava/lang/String;

    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Le/a/b5/a;->q(I)Ljava/lang/String;

    .line 8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    const/16 v5, 0x9

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    .line 9
    iget-object v0, p0, Le/a/b5/a;->e:Le/a/b5/c;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p0, v1}, Le/a/b5/c;->a(Le/a/b5/b;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/b5/a;->d:Le/a/b5/c;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0, p0, v1}, Le/a/b5/c;->a(Le/a/b5/b;Ljava/lang/Throwable;)V

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 14
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Le/a/b5/a;->q(I)Ljava/lang/String;

    .line 15
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Le/a/b5/a;->h(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 16
    :pswitch_2
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 17
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->l(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 18
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 19
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Le/a/b5/a;->d:Le/a/b5/c;

    if-eqz v1, :cond_9

    .line 21
    instance-of v4, v0, Le/a/b5/f;

    if-eqz v4, :cond_4

    .line 22
    check-cast v0, Le/a/b5/f;

    invoke-interface {v1, p0, v0}, Le/a/b5/c;->b(Le/a/b5/b;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 23
    :cond_4
    instance-of v4, v0, Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 24
    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, p0, v0}, Le/a/b5/c;->a(Le/a/b5/b;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 25
    :cond_5
    new-instance v4, Le/a/b5/d$b;

    if-nez v0, :cond_6

    const-string v0, "No profile"

    goto :goto_2

    .line 26
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_2
    invoke-direct {v4, v0}, Le/a/b5/d$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v4}, Le/a/b5/c;->a(Le/a/b5/b;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 28
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->g(Ljava/lang/Object;)V

    goto :goto_4

    .line 29
    :pswitch_7
    iget-object v0, p0, Le/a/b5/a;->e:Le/a/b5/c;

    if-eqz v0, :cond_7

    .line 30
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Le/a/b5/c;->b(Le/a/b5/b;Ljava/lang/Object;)V

    .line 31
    :cond_7
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 32
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->j(Ljava/lang/Object;)V

    goto :goto_4

    .line 33
    :pswitch_9
    iget-object v0, p0, Le/a/b5/a;->e:Le/a/b5/c;

    if-eqz v0, :cond_8

    .line 34
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Le/a/b5/c;->b(Le/a/b5/b;Ljava/lang/Object;)V

    :cond_8
    const/4 v0, 0x3

    .line 35
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 36
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->i(Ljava/lang/Object;)V

    goto :goto_4

    .line 37
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->k(Ljava/lang/Object;)V

    goto :goto_4

    .line 38
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->e(Ljava/lang/Object;)V

    goto :goto_4

    .line 39
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Le/a/b5/a;->m(Ljava/lang/Object;)V

    goto :goto_4

    .line 40
    :pswitch_e
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 41
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v3, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 42
    :cond_9
    :goto_4
    :pswitch_f
    iget-object v0, p0, Le/a/b5/a;->a:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 43
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 44
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Le/a/b5/a;->q(I)Ljava/lang/String;

    invoke-static {v0}, Le/a/b5/a;->r(Ljava/util/Collection;)Ljava/lang/String;

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 46
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 47
    :cond_a
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/String;

    .line 48
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 49
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Le/a/b5/a;->n(ILjava/lang/Throwable;)V

    :cond_b
    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract i(Ljava/lang/Object;)V
.end method

.method public abstract j(Ljava/lang/Object;)V
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public m(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public n(ILjava/lang/Throwable;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1, p2}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    return-void
.end method

.method public o(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public p(IIIILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p5, p0, Le/a/b5/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Set;

    if-nez p5, :cond_0

    .line 2
    new-instance p5, Ljava/util/TreeSet;

    sget-object v0, Le/a/b5/a$a;->a:Le/a/b5/a$a;

    invoke-direct {p5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 3
    iget-object v0, p0, Le/a/b5/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
