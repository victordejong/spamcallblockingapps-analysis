.class public final Lcom/hiya/stingray/ui/callergrid/h;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/callergrid/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/manager/u1;

.field private final c:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u1;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "mCallerGridManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/h;->b:Lcom/hiya/stingray/manager/u1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/callergrid/h;->c:Li/c/b0/c/a;

    return-void
.end method


# virtual methods
.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/h;->b:Lcom/hiya/stingray/manager/u1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u1;->e()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/h$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/h$a;-><init>(Lcom/hiya/stingray/ui/callergrid/h;)V

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/callergrid/h$b;->f:Lcom/hiya/stingray/ui/callergrid/h$b;

    .line 5
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/h;->c:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/h;->b:Lcom/hiya/stingray/manager/u1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u1;->f()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/h$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/h$c;-><init>(Lcom/hiya/stingray/ui/callergrid/h;)V

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/callergrid/h$d;->f:Lcom/hiya/stingray/ui/callergrid/h$d;

    .line 5
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/h;->c:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
