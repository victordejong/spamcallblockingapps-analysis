.class public final Lcom/freshchat/consumer/sdk/j/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field public final synthetic qJ:Lcom/freshchat/consumer/sdk/j/a/b;

.field private final rM:J

.field private final rN:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/j/a/b;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/b$c;->qJ:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/a/b$c;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/j/a/b$c;->rM:J

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/j/a/b$c;->rN:[Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/freshchat/consumer/sdk/j/a/b;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/freshchat/consumer/sdk/j/a/c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/freshchat/consumer/sdk/j/a/b$c;-><init>(Lcom/freshchat/consumer/sdk/j/a/b;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public ad(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$c;->rN:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/b$c;->rN:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/a/b;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
