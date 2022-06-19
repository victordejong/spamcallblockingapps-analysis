.class Lcom/google/common/base/p$a$a;
.super Lcom/google/common/base/p$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/p$a;->b(Lcom/google/common/base/p;Ljava/lang/CharSequence;)Lcom/google/common/base/p$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/google/common/base/p$a;


# direct methods
.method constructor <init>(Lcom/google/common/base/p$a;Lcom/google/common/base/p;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/p$a$a;->m:Lcom/google/common/base/p$a;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/p$c;-><init>(Lcom/google/common/base/p;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method f(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method g(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/base/p$a$a;->m:Lcom/google/common/base/p$a;

    iget-object v0, v0, Lcom/google/common/base/p$a;->a:Lcom/google/common/base/d;

    iget-object v1, p0, Lcom/google/common/base/p$c;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/d;->e(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
