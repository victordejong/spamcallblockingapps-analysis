.class public final Lcom/hiya/client/callerid/ui/z/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/z/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/hiya/client/callerid/ui/z/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/z/i$a;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/z/i$a;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/z/i$a;->a:Lcom/hiya/client/callerid/ui/z/i$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/i;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/a/a/j/c/d;

    invoke-direct {v0, p1}, Lg/g/a/a/j/c/d;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/hiya/client/callerid/ui/z/e;->f()Lcom/hiya/client/callerid/ui/z/e$b;

    move-result-object v1

    .line 3
    instance-of v2, p1, Lg/g/b/a/i/c/e;

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Lg/g/a/b/a;

    move-object v4, p1

    check-cast v4, Lg/g/b/a/i/c/e;

    invoke-interface {v4}, Lg/g/b/a/i/c/e;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lg/g/a/b/a;-><init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lg/g/a/b/a;

    .line 6
    new-instance v4, Lcom/hiya/client/callerid/ui/i;

    .line 7
    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->c()Lg/g/a/a/j/c/c;

    move-result-object v5

    invoke-virtual {v5}, Lg/g/a/a/j/c/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->e()Lg/g/a/a/j/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lg/g/a/a/j/c/b;->a()Ljava/lang/String;

    move-result-object v6

    .line 9
    new-instance v7, Lg/g/a/a/j/c/d;

    invoke-direct {v7, p1}, Lg/g/a/a/j/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lg/g/a/a/j/c/d;->f()Lg/g/a/a/j/c/f;

    move-result-object v7

    invoke-virtual {v7}, Lg/g/a/a/j/c/f;->b()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-direct {v4, p1, v5, v6, v7}, Lcom/hiya/client/callerid/ui/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {v3, p1, v4}, Lg/g/a/b/a;-><init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V

    .line 12
    :goto_0
    invoke-virtual {v1, v3}, Lcom/hiya/client/callerid/ui/z/e$b;->c(Lg/g/a/b/a;)Lcom/hiya/client/callerid/ui/z/e$b;

    .line 13
    new-instance v3, Lg/g/d/k/b;

    .line 14
    new-instance v4, Lcom/hiya/client/callerid/ui/h;

    if-eqz v2, :cond_1

    .line 15
    move-object v0, p1

    check-cast v0, Lg/g/b/a/i/c/e;

    invoke-interface {v0}, Lg/g/b/a/i/c/e;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_1
    new-instance v2, Lcom/hiya/client/callerid/ui/i;

    .line 17
    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->c()Lg/g/a/a/j/c/c;

    move-result-object v5

    invoke-virtual {v5}, Lg/g/a/a/j/c/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->e()Lg/g/a/a/j/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v6, Lg/g/a/a/j/c/d;

    invoke-direct {v6, p1}, Lg/g/a/a/j/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lg/g/a/a/j/c/d;->f()Lg/g/a/a/j/c/f;

    move-result-object v6

    invoke-virtual {v6}, Lg/g/a/a/j/c/f;->b()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-direct {v2, p1, v5, v0, v6}, Lcom/hiya/client/callerid/ui/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 21
    :goto_1
    invoke-direct {v4, p1, v0}, Lcom/hiya/client/callerid/ui/h;-><init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V

    .line 22
    invoke-direct {v3, v4}, Lg/g/d/k/b;-><init>(Lg/g/d/k/i;)V

    .line 23
    invoke-virtual {v1, v3}, Lcom/hiya/client/callerid/ui/z/e$b;->g(Lg/g/d/k/b;)Lcom/hiya/client/callerid/ui/z/e$b;

    .line 24
    new-instance v0, Lcom/hiya/client/callerid/ui/z/j;

    invoke-direct {v0, p1}, Lcom/hiya/client/callerid/ui/z/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/hiya/client/callerid/ui/z/e$b;->e(Lcom/hiya/client/callerid/ui/z/j;)Lcom/hiya/client/callerid/ui/z/e$b;

    .line 25
    new-instance v0, Lg/g/b/d/f/m;

    invoke-direct {v0, p1}, Lg/g/b/d/f/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/hiya/client/callerid/ui/z/e$b;->f(Lg/g/b/d/f/m;)Lcom/hiya/client/callerid/ui/z/e$b;

    .line 26
    new-instance v0, Lg/g/b/a/h/b;

    invoke-direct {v0, p1}, Lg/g/b/a/h/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/hiya/client/callerid/ui/z/e$b;->b(Lg/g/b/a/h/b;)Lcom/hiya/client/callerid/ui/z/e$b;

    .line 27
    new-instance v0, Lg/g/b/b/b/a;

    invoke-direct {v0, p1}, Lg/g/b/b/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/hiya/client/callerid/ui/z/e$b;->d(Lg/g/b/b/b/a;)Lcom/hiya/client/callerid/ui/z/e$b;

    .line 28
    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/z/e$b;->a()Lcom/hiya/client/callerid/ui/z/i;

    move-result-object p1

    const-string v0, "DaggerManagerComponent.b\u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
