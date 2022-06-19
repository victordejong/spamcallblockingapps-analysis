.class final Lcom/hiya/stingray/ui/callergrid/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/k;->x()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/k$a;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/util/i0/a;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/util/i0/a;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/k$a;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-static {p1}, Lcom/hiya/stingray/ui/callergrid/k;->t(Lcom/hiya/stingray/ui/callergrid/k;)Lcom/hiya/stingray/manager/u1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u1;->g()Lcom/hiya/stingray/ui/callergrid/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/callergrid/j;->l()Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/util/i0/a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/k$a;->a(Lcom/hiya/stingray/util/i0/a;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
