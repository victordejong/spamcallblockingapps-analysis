.class public Lcom/freshchat/consumer/sdk/exception/InvalidEventException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/exception/InvalidEventException;->composeErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static composeErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->my:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->mz:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "{{user_event_key_placeholder}}"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{{user_event_name_length_placeholder}}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
