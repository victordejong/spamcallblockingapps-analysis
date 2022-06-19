.class Lcom/google/gson/w/h$c$a;
.super Lcom/google/gson/w/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/w/h$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w/h<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/gson/w/h$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/gson/w/h$c;->f:Lcom/google/gson/w/h;

    invoke-direct {p0, p1}, Lcom/google/gson/w/h$d;-><init>(Lcom/google/gson/w/h;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/w/h$d;->a()Lcom/google/gson/w/h$e;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/w/h$e;->k:Ljava/lang/Object;

    return-object v0
.end method
