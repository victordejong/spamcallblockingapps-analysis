.class public final Lg/g/a/a/i/n/h;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/t<",
        "Lg/g/a/a/i/o/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/a;)Lg/g/a/a/i/o/m;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/a/a/i/n/h;->read(Lcom/google/gson/stream/a;)Lg/g/a/a/i/o/m;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/c;Lg/g/a/a/i/o/m;)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/c;->z()Lcom/google/gson/stream/c;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/c;->q0(Ljava/lang/String;)Lcom/google/gson/stream/c;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lg/g/a/a/i/o/m;

    invoke-virtual {p0, p1, p2}, Lg/g/a/a/i/n/h;->write(Lcom/google/gson/stream/c;Lg/g/a/a/i/o/m;)V

    return-void
.end method
