.class final Lcom/google/common/base/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/p$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/p;->e(Lcom/google/common/base/d;)Lcom/google/common/base/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/d;


# direct methods
.method constructor <init>(Lcom/google/common/base/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/p$a;->a:Lcom/google/common/base/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/p;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/p$a;->b(Lcom/google/common/base/p;Ljava/lang/CharSequence;)Lcom/google/common/base/p$c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/p;Ljava/lang/CharSequence;)Lcom/google/common/base/p$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/p$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/p$a$a;-><init>(Lcom/google/common/base/p$a;Lcom/google/common/base/p;Ljava/lang/CharSequence;)V

    return-object v0
.end method
