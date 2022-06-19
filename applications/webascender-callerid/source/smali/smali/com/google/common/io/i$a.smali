.class Lcom/google/common/io/i$a;
.super Lcom/google/common/io/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/io/i;


# direct methods
.method constructor <init>(Lcom/google/common/io/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/i$a;->c:Lcom/google/common/io/i;

    invoke-direct {p0}, Lcom/google/common/io/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/common/io/i$a;->c:Lcom/google/common/io/i;

    invoke-static {p2}, Lcom/google/common/io/i;->a(Lcom/google/common/io/i;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
