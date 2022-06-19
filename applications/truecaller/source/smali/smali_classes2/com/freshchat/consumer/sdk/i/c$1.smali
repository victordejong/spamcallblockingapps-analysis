.class public Lcom/freshchat/consumer/sdk/i/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic he:Lcom/freshchat/consumer/sdk/i/c;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/i/c;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/i/c$1;->he:Lcom/freshchat/consumer/sdk/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Media player error w: "

    const-string v1, " e: "

    invoke-static {v0, p2, v1, p3}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
