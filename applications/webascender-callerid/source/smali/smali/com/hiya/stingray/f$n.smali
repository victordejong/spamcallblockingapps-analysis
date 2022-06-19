.class final Lcom/hiya/stingray/f$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$n;->f:Lcom/hiya/stingray/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/r;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/f$n;->f:Lcom/hiya/stingray/f;

    invoke-static {p1}, Lcom/hiya/stingray/f;->m(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/util/a0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/util/i0/d;

    .line 3
    sget-object v1, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    .line 4
    invoke-direct {v0, v1}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/r;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$n;->a(Lkotlin/r;)V

    return-void
.end method
