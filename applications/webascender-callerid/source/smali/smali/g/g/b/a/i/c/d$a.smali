.class public final Lg/g/b/a/i/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/i/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lg/g/b/a/i/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/i/c/d$a;

    invoke-direct {v0}, Lg/g/b/a/i/c/d$a;-><init>()V

    sput-object v0, Lg/g/b/a/i/c/d$a;->a:Lg/g/b/a/i/c/d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lg/g/b/a/i/c/d;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lg/g/b/a/i/c/e;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lg/g/b/a/i/c/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/g/b/a/i/c/e;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lg/g/a/a/j/c/e;

    invoke-direct {v0, p1}, Lg/g/a/a/j/c/e;-><init>(Landroid/content/Context;)V

    .line 3
    :goto_0
    invoke-static {}, Lg/g/b/a/i/c/a;->c()Lg/g/b/a/i/c/a$b;

    move-result-object v1

    .line 4
    new-instance v2, Lg/g/a/b/a;

    invoke-direct {v2, p1, v0}, Lg/g/a/b/a;-><init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V

    invoke-virtual {v1, v2}, Lg/g/b/a/i/c/a$b;->c(Lg/g/a/b/a;)Lg/g/b/a/i/c/a$b;

    .line 5
    new-instance v0, Lg/g/b/a/h/b;

    invoke-direct {v0, p1}, Lg/g/b/a/h/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lg/g/b/a/i/c/a$b;->b(Lg/g/b/a/h/b;)Lg/g/b/a/i/c/a$b;

    .line 6
    new-instance v0, Lg/g/b/d/f/m;

    invoke-direct {v0, p1}, Lg/g/b/d/f/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lg/g/b/a/i/c/a$b;->e(Lg/g/b/d/f/m;)Lg/g/b/a/i/c/a$b;

    .line 7
    new-instance v0, Lg/g/b/b/b/a;

    invoke-direct {v0, p1}, Lg/g/b/b/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lg/g/b/a/i/c/a$b;->d(Lg/g/b/b/b/a;)Lg/g/b/a/i/c/a$b;

    .line 8
    invoke-virtual {v1}, Lg/g/b/a/i/c/a$b;->a()Lg/g/b/a/i/c/d;

    move-result-object p1

    const-string v0, "DaggerJobComponent.build\u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
