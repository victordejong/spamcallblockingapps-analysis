.class Lg/g/a/a/i/n/f$a;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/i/n/f;->create(Lcom/google/gson/f;Lcom/google/gson/x/a;)Lcom/google/gson/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lg/g/a/a/i/n/f;

.field final synthetic val$strToConstant:Ljava/util/Map;


# direct methods
.method constructor <init>(Lg/g/a/a/i/n/f;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/n/f$a;->this$0:Lg/g/a/a/i/n/f;

    iput-object p2, p0, Lg/g/a/a/i/n/f$a;->val$strToConstant:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->k0()Lcom/google/gson/stream/b;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/b;->NULL:Lcom/google/gson/stream/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->M()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lg/g/a/a/i/n/f$a;->val$strToConstant:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/gson/stream/a;->X()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/f;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "EnumTypeAdapterFactory constant was null"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public write(Lcom/google/gson/stream/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/stream/c;->z()Lcom/google/gson/stream/c;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/c;->q0(Ljava/lang/String;)Lcom/google/gson/stream/c;

    :goto_0
    return-void
.end method
