.class public final Lg/g/b/a/i/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/i/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lg/g/b/a/h/b;

.field private b:Lg/g/b/a/h/h;

.field private c:Lg/g/b/b/b/a;

.field private d:Lg/g/a/b/a;

.field private e:Lg/g/a/b/r;

.field private f:Lg/g/a/b/c0;

.field private g:Lg/g/a/b/y;

.field private h:Lg/g/b/a/i/c/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g/b/a/i/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/b/a/i/c/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lg/g/b/a/i/c/d;
    .locals 11

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->a:Lg/g/b/a/h/b;

    const-class v1, Lg/g/b/a/h/b;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->b:Lg/g/b/a/h/h;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lg/g/b/a/h/h;

    invoke-direct {v0}, Lg/g/b/a/h/h;-><init>()V

    iput-object v0, p0, Lg/g/b/a/i/c/a$b;->b:Lg/g/b/a/h/h;

    .line 4
    :cond_0
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->c:Lg/g/b/b/b/a;

    const-class v1, Lg/g/b/b/b/a;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->d:Lg/g/a/b/a;

    const-class v1, Lg/g/a/b/a;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->e:Lg/g/a/b/r;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lg/g/a/b/r;

    invoke-direct {v0}, Lg/g/a/b/r;-><init>()V

    iput-object v0, p0, Lg/g/b/a/i/c/a$b;->e:Lg/g/a/b/r;

    .line 8
    :cond_1
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->f:Lg/g/a/b/c0;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lg/g/a/b/c0;

    invoke-direct {v0}, Lg/g/a/b/c0;-><init>()V

    iput-object v0, p0, Lg/g/b/a/i/c/a$b;->f:Lg/g/a/b/c0;

    .line 10
    :cond_2
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->g:Lg/g/a/b/y;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lg/g/a/b/y;

    invoke-direct {v0}, Lg/g/a/b/y;-><init>()V

    iput-object v0, p0, Lg/g/b/a/i/c/a$b;->g:Lg/g/a/b/y;

    .line 12
    :cond_3
    iget-object v0, p0, Lg/g/b/a/i/c/a$b;->h:Lg/g/b/a/i/c/b;

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Lg/g/b/a/i/c/b;

    invoke-direct {v0}, Lg/g/b/a/i/c/b;-><init>()V

    iput-object v0, p0, Lg/g/b/a/i/c/a$b;->h:Lg/g/b/a/i/c/b;

    .line 14
    :cond_4
    new-instance v0, Lg/g/b/a/i/c/a;

    iget-object v2, p0, Lg/g/b/a/i/c/a$b;->a:Lg/g/b/a/h/b;

    iget-object v3, p0, Lg/g/b/a/i/c/a$b;->b:Lg/g/b/a/h/h;

    iget-object v4, p0, Lg/g/b/a/i/c/a$b;->c:Lg/g/b/b/b/a;

    iget-object v5, p0, Lg/g/b/a/i/c/a$b;->d:Lg/g/a/b/a;

    iget-object v6, p0, Lg/g/b/a/i/c/a$b;->e:Lg/g/a/b/r;

    iget-object v7, p0, Lg/g/b/a/i/c/a$b;->f:Lg/g/a/b/c0;

    iget-object v8, p0, Lg/g/b/a/i/c/a$b;->g:Lg/g/a/b/y;

    iget-object v9, p0, Lg/g/b/a/i/c/a$b;->h:Lg/g/b/a/i/c/b;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lg/g/b/a/i/c/a;-><init>(Lg/g/b/a/h/b;Lg/g/b/a/h/h;Lg/g/b/b/b/a;Lg/g/a/b/a;Lg/g/a/b/r;Lg/g/a/b/c0;Lg/g/a/b/y;Lg/g/b/a/i/c/b;Lg/g/b/a/i/c/a$a;)V

    return-object v0
.end method

.method public b(Lg/g/b/a/h/b;)Lg/g/b/a/i/c/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/b/a/h/b;

    iput-object p1, p0, Lg/g/b/a/i/c/a$b;->a:Lg/g/b/a/h/b;

    return-object p0
.end method

.method public c(Lg/g/a/b/a;)Lg/g/b/a/i/c/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/a/b/a;

    iput-object p1, p0, Lg/g/b/a/i/c/a$b;->d:Lg/g/a/b/a;

    return-object p0
.end method

.method public d(Lg/g/b/b/b/a;)Lg/g/b/a/i/c/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/b/b/b/a;

    iput-object p1, p0, Lg/g/b/a/i/c/a$b;->c:Lg/g/b/b/b/a;

    return-object p0
.end method

.method public e(Lg/g/b/d/f/m;)Lg/g/b/a/i/c/a$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
