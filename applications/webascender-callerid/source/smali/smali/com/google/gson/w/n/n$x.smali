.class Lcom/google/gson/w/n/n$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/w/n/n;->a(Lcom/google/gson/x/a;Lcom/google/gson/t;)Lcom/google/gson/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/google/gson/x/a;

.field final synthetic g:Lcom/google/gson/t;


# direct methods
.method constructor <init>(Lcom/google/gson/x/a;Lcom/google/gson/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/w/n/n$x;->f:Lcom/google/gson/x/a;

    iput-object p2, p0, Lcom/google/gson/w/n/n$x;->g:Lcom/google/gson/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/f;Lcom/google/gson/x/a;)Lcom/google/gson/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/x/a<",
            "TT;>;)",
            "Lcom/google/gson/t<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/gson/w/n/n$x;->f:Lcom/google/gson/x/a;

    invoke-virtual {p2, p1}, Lcom/google/gson/x/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/gson/w/n/n$x;->g:Lcom/google/gson/t;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
