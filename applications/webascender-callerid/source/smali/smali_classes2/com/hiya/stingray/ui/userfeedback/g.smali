.class public Lcom/hiya/stingray/ui/userfeedback/g;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/userfeedback/h;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Li/c/b0/c/c;

.field private final c:Lcom/hiya/stingray/manager/j4;

.field private final d:Lcom/hiya/stingray/ui/common/error/e;

.field private final e:Lcom/hiya/stingray/util/a0;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/j4;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/userfeedback/g;->b:Li/c/b0/c/c;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/g;->c:Lcom/hiya/stingray/manager/j4;

    .line 4
    iput-object p2, p0, Lcom/hiya/stingray/ui/userfeedback/g;->d:Lcom/hiya/stingray/ui/common/error/e;

    .line 5
    iput-object p3, p0, Lcom/hiya/stingray/ui/userfeedback/g;->e:Lcom/hiya/stingray/util/a0;

    return-void
.end method

.method static synthetic t(Lcom/hiya/stingray/ui/userfeedback/g;)Li/c/b0/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/userfeedback/g;->b:Li/c/b0/c/c;

    return-object p0
.end method

.method static synthetic u(Lcom/hiya/stingray/ui/userfeedback/g;)Lcom/hiya/stingray/ui/common/error/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/userfeedback/g;->d:Lcom/hiya/stingray/ui/common/error/e;

    return-object p0
.end method

.method static synthetic v(Lcom/hiya/stingray/ui/userfeedback/g;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/userfeedback/g;->e:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method


# virtual methods
.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/userfeedback/g;->c:Lcom/hiya/stingray/manager/j4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hiya/stingray/manager/j4;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/s/b;

    invoke-direct {p2}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 5
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/ui/userfeedback/g$a;

    invoke-direct {p2, p0, p4}, Lcom/hiya/stingray/ui/userfeedback/g$a;-><init>(Lcom/hiya/stingray/ui/userfeedback/g;Z)V

    new-instance p3, Lcom/hiya/stingray/ui/userfeedback/g$b;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/userfeedback/g$b;-><init>(Lcom/hiya/stingray/ui/userfeedback/g;)V

    .line 6
    invoke-virtual {p1, p2, p3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/g;->b:Li/c/b0/c/c;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/userfeedback/g;->c:Lcom/hiya/stingray/manager/j4;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/j4;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/userfeedback/g$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/userfeedback/g$c;-><init>(Lcom/hiya/stingray/ui/userfeedback/g;)V

    new-instance v1, Lcom/hiya/stingray/ui/userfeedback/g$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/userfeedback/g$d;-><init>(Lcom/hiya/stingray/ui/userfeedback/g;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/g;->b:Li/c/b0/c/c;

    return-void
.end method
