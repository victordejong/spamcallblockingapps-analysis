.class public Lcom/hiya/stingray/ui/customblock/picker/g;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/customblock/picker/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Li/c/b0/c/a;

.field private final c:Lcom/hiya/stingray/manager/x1;


# direct methods
.method public constructor <init>(Li/c/b0/c/a;Lcom/hiya/stingray/manager/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/g;->b:Li/c/b0/c/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/picker/g;->c:Lcom/hiya/stingray/manager/x1;

    return-void
.end method


# virtual methods
.method public t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/g;->b:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/picker/g;->c:Lcom/hiya/stingray/manager/x1;

    .line 2
    invoke-virtual {v1}, Lcom/hiya/stingray/manager/x1;->a()Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/customblock/picker/g$a;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/customblock/picker/g$a;-><init>(Lcom/hiya/stingray/ui/customblock/picker/g;)V

    new-instance v3, Lcom/hiya/stingray/ui/customblock/picker/g$b;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/customblock/picker/g$b;-><init>(Lcom/hiya/stingray/ui/customblock/picker/g;)V

    .line 4
    invoke-virtual {v1, v2, v3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
