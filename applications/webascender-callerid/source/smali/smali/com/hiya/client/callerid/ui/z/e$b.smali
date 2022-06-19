.class public final Lcom/hiya/client/callerid/ui/z/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/z/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lg/g/b/a/h/b;

.field private b:Lg/g/b/a/h/h;

.field private c:Lg/g/b/b/b/a;

.field private d:Lg/g/b/d/f/m;

.field private e:Lg/g/b/d/f/g;

.field private f:Lg/g/a/b/l;

.field private g:Lg/g/a/b/a;

.field private h:Lg/g/a/b/r;

.field private i:Lg/g/a/b/c0;

.field private j:Lg/g/a/b/y;

.field private k:Lg/g/a/b/f1;

.field private l:Lcom/hiya/client/callerid/ui/z/j;

.field private m:Lg/g/d/k/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/client/callerid/ui/z/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/client/callerid/ui/z/i;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->a:Lg/g/b/a/h/b;

    const-class v2, Lg/g/b/a/h/b;

    invoke-static {v1, v2}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->b:Lg/g/b/a/h/h;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lg/g/b/a/h/h;

    invoke-direct {v1}, Lg/g/b/a/h/h;-><init>()V

    iput-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->b:Lg/g/b/a/h/h;

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->c:Lg/g/b/b/b/a;

    const-class v2, Lg/g/b/b/b/a;

    invoke-static {v1, v2}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->d:Lg/g/b/d/f/m;

    const-class v2, Lg/g/b/d/f/m;

    invoke-static {v1, v2}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->e:Lg/g/b/d/f/g;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lg/g/b/d/f/g;

    invoke-direct {v1}, Lg/g/b/d/f/g;-><init>()V

    iput-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->e:Lg/g/b/d/f/g;

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->f:Lg/g/a/b/l;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Lg/g/a/b/l;

    invoke-direct {v1}, Lg/g/a/b/l;-><init>()V

    iput-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->f:Lg/g/a/b/l;

    .line 10
    :cond_2
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->g:Lg/g/a/b/a;

    const-class v2, Lg/g/a/b/a;

    invoke-static {v1, v2}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->h:Lg/g/a/b/r;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lg/g/a/b/r;

    invoke-direct {v1}, Lg/g/a/b/r;-><init>()V

    iput-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->h:Lg/g/a/b/r;

    .line 13
    :cond_3
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->i:Lg/g/a/b/c0;

    if-nez v1, :cond_4

    .line 14
    new-instance v1, Lg/g/a/b/c0;

    invoke-direct {v1}, Lg/g/a/b/c0;-><init>()V

    iput-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->i:Lg/g/a/b/c0;

    .line 15
    :cond_4
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->j:Lg/g/a/b/y;

    if-nez v1, :cond_5

    .line 16
    new-instance v1, Lg/g/a/b/y;

    invoke-direct {v1}, Lg/g/a/b/y;-><init>()V

    iput-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->j:Lg/g/a/b/y;

    .line 17
    :cond_5
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->k:Lg/g/a/b/f1;

    if-nez v1, :cond_6

    .line 18
    new-instance v1, Lg/g/a/b/f1;

    invoke-direct {v1}, Lg/g/a/b/f1;-><init>()V

    iput-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->k:Lg/g/a/b/f1;

    .line 19
    :cond_6
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->l:Lcom/hiya/client/callerid/ui/z/j;

    const-class v2, Lcom/hiya/client/callerid/ui/z/j;

    invoke-static {v1, v2}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/z/e$b;->m:Lg/g/d/k/b;

    const-class v2, Lg/g/d/k/b;

    invoke-static {v1, v2}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    new-instance v1, Lcom/hiya/client/callerid/ui/z/e;

    iget-object v4, v0, Lcom/hiya/client/callerid/ui/z/e$b;->a:Lg/g/b/a/h/b;

    iget-object v5, v0, Lcom/hiya/client/callerid/ui/z/e$b;->b:Lg/g/b/a/h/h;

    iget-object v6, v0, Lcom/hiya/client/callerid/ui/z/e$b;->c:Lg/g/b/b/b/a;

    iget-object v7, v0, Lcom/hiya/client/callerid/ui/z/e$b;->d:Lg/g/b/d/f/m;

    iget-object v8, v0, Lcom/hiya/client/callerid/ui/z/e$b;->e:Lg/g/b/d/f/g;

    iget-object v9, v0, Lcom/hiya/client/callerid/ui/z/e$b;->f:Lg/g/a/b/l;

    iget-object v10, v0, Lcom/hiya/client/callerid/ui/z/e$b;->g:Lg/g/a/b/a;

    iget-object v11, v0, Lcom/hiya/client/callerid/ui/z/e$b;->h:Lg/g/a/b/r;

    iget-object v12, v0, Lcom/hiya/client/callerid/ui/z/e$b;->i:Lg/g/a/b/c0;

    iget-object v13, v0, Lcom/hiya/client/callerid/ui/z/e$b;->j:Lg/g/a/b/y;

    iget-object v14, v0, Lcom/hiya/client/callerid/ui/z/e$b;->k:Lg/g/a/b/f1;

    iget-object v15, v0, Lcom/hiya/client/callerid/ui/z/e$b;->l:Lcom/hiya/client/callerid/ui/z/j;

    iget-object v2, v0, Lcom/hiya/client/callerid/ui/z/e$b;->m:Lg/g/d/k/b;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/hiya/client/callerid/ui/z/e;-><init>(Lg/g/b/a/h/b;Lg/g/b/a/h/h;Lg/g/b/b/b/a;Lg/g/b/d/f/m;Lg/g/b/d/f/g;Lg/g/a/b/l;Lg/g/a/b/a;Lg/g/a/b/r;Lg/g/a/b/c0;Lg/g/a/b/y;Lg/g/a/b/f1;Lcom/hiya/client/callerid/ui/z/j;Lg/g/d/k/b;Lcom/hiya/client/callerid/ui/z/e$a;)V

    return-object v1
.end method

.method public b(Lg/g/b/a/h/b;)Lcom/hiya/client/callerid/ui/z/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/b/a/h/b;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/e$b;->a:Lg/g/b/a/h/b;

    return-object p0
.end method

.method public c(Lg/g/a/b/a;)Lcom/hiya/client/callerid/ui/z/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/a/b/a;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/e$b;->g:Lg/g/a/b/a;

    return-object p0
.end method

.method public d(Lg/g/b/b/b/a;)Lcom/hiya/client/callerid/ui/z/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/b/b/b/a;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/e$b;->c:Lg/g/b/b/b/a;

    return-object p0
.end method

.method public e(Lcom/hiya/client/callerid/ui/z/j;)Lcom/hiya/client/callerid/ui/z/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/hiya/client/callerid/ui/z/j;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/e$b;->l:Lcom/hiya/client/callerid/ui/z/j;

    return-object p0
.end method

.method public f(Lg/g/b/d/f/m;)Lcom/hiya/client/callerid/ui/z/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/b/d/f/m;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/e$b;->d:Lg/g/b/d/f/m;

    return-object p0
.end method

.method public g(Lg/g/d/k/b;)Lcom/hiya/client/callerid/ui/z/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/d/k/b;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/e$b;->m:Lg/g/d/k/b;

    return-object p0
.end method
