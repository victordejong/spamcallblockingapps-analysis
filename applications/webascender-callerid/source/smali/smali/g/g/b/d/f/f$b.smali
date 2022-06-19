.class public final Lg/g/b/d/f/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/d/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lg/g/b/d/f/m;

.field private b:Lg/g/b/d/f/g;

.field private c:Lg/g/a/b/l;

.field private d:Lg/g/a/b/a;

.field private e:Lg/g/a/b/r;

.field private f:Lg/g/a/b/c0;

.field private g:Lg/g/b/d/f/a;

.field private h:Lg/g/b/d/f/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/b/d/f/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/b/d/f/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/g/b/d/f/a;)Lg/g/b/d/f/f$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/b/d/f/a;

    iput-object p1, p0, Lg/g/b/d/f/f$b;->g:Lg/g/b/d/f/a;

    return-object p0
.end method

.method public b()Lg/g/b/d/f/k;
    .locals 11

    .line 1
    iget-object v0, p0, Lg/g/b/d/f/f$b;->a:Lg/g/b/d/f/m;

    const-class v1, Lg/g/b/d/f/m;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lg/g/b/d/f/f$b;->b:Lg/g/b/d/f/g;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lg/g/b/d/f/g;

    invoke-direct {v0}, Lg/g/b/d/f/g;-><init>()V

    iput-object v0, p0, Lg/g/b/d/f/f$b;->b:Lg/g/b/d/f/g;

    .line 4
    :cond_0
    iget-object v0, p0, Lg/g/b/d/f/f$b;->c:Lg/g/a/b/l;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lg/g/a/b/l;

    invoke-direct {v0}, Lg/g/a/b/l;-><init>()V

    iput-object v0, p0, Lg/g/b/d/f/f$b;->c:Lg/g/a/b/l;

    .line 6
    :cond_1
    iget-object v0, p0, Lg/g/b/d/f/f$b;->d:Lg/g/a/b/a;

    const-class v1, Lg/g/a/b/a;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lg/g/b/d/f/f$b;->e:Lg/g/a/b/r;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lg/g/a/b/r;

    invoke-direct {v0}, Lg/g/a/b/r;-><init>()V

    iput-object v0, p0, Lg/g/b/d/f/f$b;->e:Lg/g/a/b/r;

    .line 9
    :cond_2
    iget-object v0, p0, Lg/g/b/d/f/f$b;->f:Lg/g/a/b/c0;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lg/g/a/b/c0;

    invoke-direct {v0}, Lg/g/a/b/c0;-><init>()V

    iput-object v0, p0, Lg/g/b/d/f/f$b;->f:Lg/g/a/b/c0;

    .line 11
    :cond_3
    iget-object v0, p0, Lg/g/b/d/f/f$b;->g:Lg/g/b/d/f/a;

    const-class v1, Lg/g/b/d/f/a;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    iget-object v0, p0, Lg/g/b/d/f/f$b;->h:Lg/g/b/d/f/i;

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Lg/g/b/d/f/i;

    invoke-direct {v0}, Lg/g/b/d/f/i;-><init>()V

    iput-object v0, p0, Lg/g/b/d/f/f$b;->h:Lg/g/b/d/f/i;

    .line 14
    :cond_4
    new-instance v0, Lg/g/b/d/f/f;

    iget-object v2, p0, Lg/g/b/d/f/f$b;->a:Lg/g/b/d/f/m;

    iget-object v3, p0, Lg/g/b/d/f/f$b;->b:Lg/g/b/d/f/g;

    iget-object v4, p0, Lg/g/b/d/f/f$b;->c:Lg/g/a/b/l;

    iget-object v5, p0, Lg/g/b/d/f/f$b;->d:Lg/g/a/b/a;

    iget-object v6, p0, Lg/g/b/d/f/f$b;->e:Lg/g/a/b/r;

    iget-object v7, p0, Lg/g/b/d/f/f$b;->f:Lg/g/a/b/c0;

    iget-object v8, p0, Lg/g/b/d/f/f$b;->g:Lg/g/b/d/f/a;

    iget-object v9, p0, Lg/g/b/d/f/f$b;->h:Lg/g/b/d/f/i;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lg/g/b/d/f/f;-><init>(Lg/g/b/d/f/m;Lg/g/b/d/f/g;Lg/g/a/b/l;Lg/g/a/b/a;Lg/g/a/b/r;Lg/g/a/b/c0;Lg/g/b/d/f/a;Lg/g/b/d/f/i;Lg/g/b/d/f/f$a;)V

    return-object v0
.end method

.method public c(Lg/g/a/b/a;)Lg/g/b/d/f/f$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/a/b/a;

    iput-object p1, p0, Lg/g/b/d/f/f$b;->d:Lg/g/a/b/a;

    return-object p0
.end method

.method public d(Lg/g/b/d/f/m;)Lg/g/b/d/f/f$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/b/d/f/m;

    iput-object p1, p0, Lg/g/b/d/f/f$b;->a:Lg/g/b/d/f/m;

    return-object p0
.end method
