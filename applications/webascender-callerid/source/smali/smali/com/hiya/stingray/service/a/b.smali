.class public Lcom/hiya/stingray/service/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/q1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/service/a/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/service/a/b;->b:Lcom/hiya/stingray/manager/q1;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/service/a/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/service/a/b;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/service/a/b;->b:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/q1;->g(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/service/a/b$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/service/a/b$a;-><init>(Lcom/hiya/stingray/service/a/b;Ljava/lang/String;)V

    new-instance p1, Lcom/hiya/stingray/service/a/b$b;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/service/a/b$b;-><init>(Lcom/hiya/stingray/service/a/b;)V

    .line 4
    invoke-virtual {v0, v1, p1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method
