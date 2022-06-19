.class public final Lg/g/b/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg/g/b/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lg/g/a/b/j1/c;)Lg/g/b/a/b;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoProvider"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/a/b;

    invoke-direct {v0}, Lg/g/b/a/b;-><init>()V

    .line 2
    invoke-static {}, Lg/g/b/a/h/e;->b()Lg/g/b/a/h/e$b;

    move-result-object v1

    .line 3
    new-instance v2, Lg/g/b/a/h/b;

    invoke-direct {v2, p1}, Lg/g/b/a/h/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lg/g/b/a/h/e$b;->b(Lg/g/b/a/h/b;)Lg/g/b/a/h/e$b;

    .line 4
    new-instance v2, Lg/g/b/b/b/a;

    invoke-direct {v2, p1}, Lg/g/b/b/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lg/g/b/a/h/e$b;->d(Lg/g/b/b/b/a;)Lg/g/b/a/h/e$b;

    .line 5
    new-instance v2, Lg/g/b/d/f/m;

    invoke-direct {v2, p1}, Lg/g/b/d/f/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lg/g/b/a/h/e$b;->e(Lg/g/b/d/f/m;)Lg/g/b/a/h/e$b;

    .line 6
    new-instance v2, Lg/g/a/b/a;

    invoke-direct {v2, p1, p2}, Lg/g/a/b/a;-><init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V

    invoke-virtual {v1, v2}, Lg/g/b/a/h/e$b;->c(Lg/g/a/b/a;)Lg/g/b/a/h/e$b;

    .line 7
    invoke-virtual {v1}, Lg/g/b/a/h/e$b;->a()Lg/g/b/a/h/a;

    move-result-object p1

    .line 8
    invoke-interface {p1, v0}, Lg/g/b/a/h/a;->a(Lg/g/b/a/b;)V

    return-object v0
.end method
