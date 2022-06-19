.class public Lcom/hiya/stingray/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/c;


# instance fields
.field private a:Landroid/content/Context;

.field b:Lcom/hiya/stingray/q/a/k;

.field c:Lcom/hiya/stingray/manager/u3;

.field d:Ljava/lang/String;

.field e:Lcom/hiya/stingray/manager/o2;

.field f:Lcom/hiya/stingray/manager/a4;

.field g:Lcom/hiya/stingray/manager/x3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/j;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic h(Lcom/hiya/stingray/j;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic i(Lg/g/a/a/m/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/j;->c:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/u3;->V(Lg/g/a/a/m/c;)V

    return-void
.end method


# virtual methods
.method public a()Lg/g/a/b/j1/m;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/j$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/j$d;-><init>(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method public b()Lg/g/a/b/j1/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/j$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/j$c;-><init>(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method public c()Lg/g/a/b/j1/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/j$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/j$e;-><init>(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method public d()Lg/g/a/a/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/c;-><init>(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method public e()Lg/g/a/b/j1/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/j$f;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/j$f;-><init>(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method public f()Lg/g/a/b/j1/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/j$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/j$a;-><init>(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method public g()Lg/g/a/b/j1/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/j$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/j$b;-><init>(Lcom/hiya/stingray/j;)V

    return-object v0
.end method

.method public synthetic j(Lg/g/a/a/m/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/j;->i(Lg/g/a/a/m/c;)V

    return-void
.end method
