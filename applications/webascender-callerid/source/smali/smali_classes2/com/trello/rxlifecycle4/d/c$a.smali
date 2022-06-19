.class final Lcom/trello/rxlifecycle4/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trello/rxlifecycle4/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Lcom/trello/rxlifecycle4/d/a;",
        "Lcom/trello/rxlifecycle4/d/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/trello/rxlifecycle4/d/a;)Lcom/trello/rxlifecycle4/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/trello/rxlifecycle4/d/c$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not yet implemented"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    new-instance p1, Lcom/trello/rxlifecycle4/OutsideLifecycleException;

    const-string v0, "Cannot bind to Activity lifecycle when outside of it."

    invoke-direct {p1, v0}, Lcom/trello/rxlifecycle4/OutsideLifecycleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_1
    sget-object p1, Lcom/trello/rxlifecycle4/d/a;->DESTROY:Lcom/trello/rxlifecycle4/d/a;

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/trello/rxlifecycle4/d/a;->STOP:Lcom/trello/rxlifecycle4/d/a;

    return-object p1

    .line 6
    :pswitch_3
    sget-object p1, Lcom/trello/rxlifecycle4/d/a;->PAUSE:Lcom/trello/rxlifecycle4/d/a;

    return-object p1

    .line 7
    :pswitch_4
    sget-object p1, Lcom/trello/rxlifecycle4/d/a;->STOP:Lcom/trello/rxlifecycle4/d/a;

    return-object p1

    .line 8
    :pswitch_5
    sget-object p1, Lcom/trello/rxlifecycle4/d/a;->DESTROY:Lcom/trello/rxlifecycle4/d/a;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/trello/rxlifecycle4/d/a;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle4/d/c$a;->a(Lcom/trello/rxlifecycle4/d/a;)Lcom/trello/rxlifecycle4/d/a;

    move-result-object p1

    return-object p1
.end method
