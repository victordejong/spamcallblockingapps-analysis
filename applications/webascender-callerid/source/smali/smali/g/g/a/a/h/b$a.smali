.class final Lg/g/a/a/h/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/h/b;->k()Li/c/b0/b/v;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/a/a/h/b;


# direct methods
.method constructor <init>(Lg/g/a/a/h/b;)V
    .locals 0

    iput-object p1, p0, Lg/g/a/a/h/b$a;->f:Lg/g/a/a/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/o/h;)Lg/g/a/a/i/o/j;
    .locals 5

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/b$a;->f:Lg/g/a/a/h/b;

    invoke-static {v0}, Lg/g/a/a/h/b;->e(Lg/g/a/a/h/b;)Lg/g/a/b/j1/a;

    move-result-object v0

    invoke-interface {v0}, Lg/g/a/b/j1/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "it"

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lg/g/a/a/i/o/j;

    const/4 v4, 0x2

    new-array v4, v4, [Lg/g/a/a/i/o/h;

    .line 3
    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v4, v2

    .line 4
    new-instance p1, Lg/g/a/a/i/o/t;

    iget-object v2, p0, Lg/g/a/a/h/b$a;->f:Lg/g/a/a/h/b;

    invoke-static {v2}, Lg/g/a/a/h/b;->g(Lg/g/a/a/h/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.packageName"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lg/g/a/a/h/b$a;->f:Lg/g/a/a/h/b;

    invoke-static {v3}, Lg/g/a/a/h/b;->e(Lg/g/a/a/h/b;)Lg/g/a/b/j1/a;

    move-result-object v3

    invoke-interface {v3}, Lg/g/a/b/j1/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lg/g/a/a/i/o/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object p1, v4, v1

    .line 5
    invoke-direct {v0, v4}, Lg/g/a/a/i/o/j;-><init>([Lg/g/a/a/i/o/h;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Lg/g/a/a/i/o/j;

    new-array v1, v1, [Lg/g/a/a/i/o/h;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lg/g/a/a/i/o/j;-><init>([Lg/g/a/a/i/o/h;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/o/h;

    invoke-virtual {p0, p1}, Lg/g/a/a/h/b$a;->a(Lg/g/a/a/i/o/h;)Lg/g/a/a/i/o/j;

    move-result-object p1

    return-object p1
.end method
