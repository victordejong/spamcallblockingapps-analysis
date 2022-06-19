.class Lcom/hiya/stingray/q/a/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/a/j$c;->a(Ljava/util/List;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Lretrofit2/Response<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/i/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/a/j$c;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/hiya/stingray/q/a/j$c$a;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/Response;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/q/a/j$c$a;->f:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/a/j$c$a;->a(Lretrofit2/Response;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
