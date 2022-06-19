.class public Lcom/hiya/stingray/ui/customblock/picker/j;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/customblock/picker/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Li/c/b0/c/a;

.field private final c:Lcom/hiya/stingray/manager/o1;

.field private final d:Lcom/hiya/stingray/manager/h4;

.field private final e:Lcom/hiya/stingray/ui/common/error/e;

.field private final f:Lcom/hiya/stingray/util/a0;

.field private final g:Lcom/hiya/stingray/t/i1/c0;

.field private final h:Lcom/hiya/stingray/t/i1/t0;

.field private final i:Lcom/hiya/stingray/t/i1/t;

.field private final j:Lcom/hiya/stingray/manager/u3;


# direct methods
.method public constructor <init>(Li/c/b0/c/a;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/t/i1/c0;Lcom/hiya/stingray/t/i1/t0;Lcom/hiya/stingray/t/i1/t;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->b:Li/c/b0/c/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->c:Lcom/hiya/stingray/manager/o1;

    .line 4
    iput-object p4, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->e:Lcom/hiya/stingray/ui/common/error/e;

    .line 5
    iput-object p5, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->f:Lcom/hiya/stingray/util/a0;

    .line 6
    iput-object p3, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->d:Lcom/hiya/stingray/manager/h4;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->g:Lcom/hiya/stingray/t/i1/c0;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->h:Lcom/hiya/stingray/t/i1/t0;

    .line 9
    iput-object p8, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->i:Lcom/hiya/stingray/t/i1/t;

    .line 10
    iput-object p9, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->j:Lcom/hiya/stingray/manager/u3;

    return-void
.end method

.method static synthetic t(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/t/i1/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->g:Lcom/hiya/stingray/t/i1/c0;

    return-object p0
.end method

.method static synthetic u(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/t/i1/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->h:Lcom/hiya/stingray/t/i1/t0;

    return-object p0
.end method

.method static synthetic v(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/manager/u3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->j:Lcom/hiya/stingray/manager/u3;

    return-object p0
.end method

.method static synthetic w(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/t/i1/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->i:Lcom/hiya/stingray/t/i1/t;

    return-object p0
.end method

.method static synthetic x(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/ui/common/error/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->e:Lcom/hiya/stingray/ui/common/error/e;

    return-object p0
.end method

.method static synthetic y(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->f:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method


# virtual methods
.method public z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->b:Li/c/b0/c/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->c:Lcom/hiya/stingray/manager/o1;

    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/picker/j;->d:Lcom/hiya/stingray/manager/h4;

    .line 2
    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/o1;->n(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/customblock/picker/j$a;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/customblock/picker/j$a;-><init>(Lcom/hiya/stingray/ui/customblock/picker/j;)V

    new-instance v3, Lcom/hiya/stingray/ui/customblock/picker/j$b;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/customblock/picker/j$b;-><init>(Lcom/hiya/stingray/ui/customblock/picker/j;)V

    .line 4
    invoke-virtual {v1, v2, v3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
