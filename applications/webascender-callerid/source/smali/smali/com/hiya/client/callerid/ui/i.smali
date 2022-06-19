.class public final Lcom/hiya/client/callerid/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/i$a;,
        Lcom/hiya/client/callerid/ui/i$c;,
        Lcom/hiya/client/callerid/ui/i$d;,
        Lcom/hiya/client/callerid/ui/i$b;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/g;

.field private final b:Lkotlin/g;

.field private final c:Lkotlin/g;

.field private final d:Lkotlin/g;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productName"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/i;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/i;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/i;->h:Ljava/lang/String;

    .line 2
    new-instance p1, Lcom/hiya/client/callerid/ui/i$i;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/i$i;-><init>(Lcom/hiya/client/callerid/ui/i;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i;->a:Lkotlin/g;

    .line 3
    new-instance p1, Lcom/hiya/client/callerid/ui/i$g;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/i$g;-><init>(Lcom/hiya/client/callerid/ui/i;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i;->b:Lkotlin/g;

    .line 4
    new-instance p1, Lcom/hiya/client/callerid/ui/i$h;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/i$h;-><init>(Lcom/hiya/client/callerid/ui/i;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i;->c:Lkotlin/g;

    .line 5
    new-instance p1, Lcom/hiya/client/callerid/ui/i$e;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/i$e;-><init>(Lcom/hiya/client/callerid/ui/i;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i;->d:Lkotlin/g;

    return-void
.end method

.method public static final synthetic h(Lcom/hiya/client/callerid/ui/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/i;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lcom/hiya/client/callerid/ui/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/i;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic j(Lcom/hiya/client/callerid/ui/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic k(Lcom/hiya/client/callerid/ui/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/i;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lg/g/a/b/j1/m;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/i$d;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/i$d;-><init>(Lcom/hiya/client/callerid/ui/i;)V

    return-object v0
.end method

.method public b()Lg/g/a/b/j1/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/i$c;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/i$c;-><init>(Lcom/hiya/client/callerid/ui/i;)V

    return-object v0
.end method

.method public c()Lg/g/a/b/j1/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/i$a;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/i$a;-><init>(Lcom/hiya/client/callerid/ui/i;)V

    return-object v0
.end method

.method public synthetic d()Lg/g/a/a/f;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/b;->a(Lg/g/a/b/j1/c;)Lg/g/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lg/g/a/b/j1/j;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/b;->b(Lg/g/a/b/j1/c;)Lg/g/a/b/j1/j;

    move-result-object v0

    return-object v0
.end method

.method public f()Lg/g/a/b/j1/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/i$f;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/i$f;-><init>()V

    return-object v0
.end method

.method public g()Lg/g/a/b/j1/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/i$b;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/i;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/hiya/client/callerid/ui/i$b;-><init>(Lcom/hiya/client/callerid/ui/i;Landroid/content/Context;)V

    return-object v0
.end method

.method public final l()Lg/g/a/a/j/c/c;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/i;->d:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/c;

    return-object v0
.end method

.method public final m()Lg/g/a/a/j/c/a;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/i;->b:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/a;

    return-object v0
.end method

.method public final n()Lg/g/a/a/j/c/b;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/i;->c:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/b;

    return-object v0
.end method

.method public final o()Lg/g/a/a/j/c/f;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/i;->a:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/f;

    return-object v0
.end method
