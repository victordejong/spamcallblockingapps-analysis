.class final Lcom/hiya/stingray/s/d/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/s/d/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/s/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private a:Lg/g/a/b/a;

.field final synthetic b:Lcom/hiya/stingray/s/d/e;


# direct methods
.method private constructor <init>(Lcom/hiya/stingray/s/d/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/s/d/e$c;->b:Lcom/hiya/stingray/s/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/s/d/e;Lcom/hiya/stingray/s/d/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/s/d/e$c;-><init>(Lcom/hiya/stingray/s/d/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lg/g/a/b/a;)Lcom/hiya/stingray/s/d/h$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/s/d/e$c;->b(Lg/g/a/b/a;)Lcom/hiya/stingray/s/d/e$c;

    return-object p0
.end method

.method public b(Lg/g/a/b/a;)Lcom/hiya/stingray/s/d/e$c;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/g/a/b/a;

    iput-object p1, p0, Lcom/hiya/stingray/s/d/e$c;->a:Lg/g/a/b/a;

    return-object p0
.end method

.method public c()Lcom/hiya/stingray/s/d/h;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/d/e$c;->a:Lg/g/a/b/a;

    const-class v1, Lg/g/a/b/a;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/s/d/e$d;

    iget-object v3, p0, Lcom/hiya/stingray/s/d/e$c;->b:Lcom/hiya/stingray/s/d/e;

    new-instance v4, Lg/g/a/b/l;

    invoke-direct {v4}, Lg/g/a/b/l;-><init>()V

    iget-object v5, p0, Lcom/hiya/stingray/s/d/e$c;->a:Lg/g/a/b/a;

    new-instance v6, Lg/g/a/b/r;

    invoke-direct {v6}, Lg/g/a/b/r;-><init>()V

    new-instance v7, Lg/g/a/b/a0;

    invoke-direct {v7}, Lg/g/a/b/a0;-><init>()V

    new-instance v8, Lg/g/a/b/c0;

    invoke-direct {v8}, Lg/g/a/b/c0;-><init>()V

    new-instance v9, Lcom/hiya/stingray/s/e/y0;

    invoke-direct {v9}, Lcom/hiya/stingray/s/e/y0;-><init>()V

    new-instance v10, Lcom/hiya/stingray/s/e/v1;

    invoke-direct {v10}, Lcom/hiya/stingray/s/e/v1;-><init>()V

    new-instance v11, Lcom/hiya/stingray/s/e/h1;

    invoke-direct {v11}, Lcom/hiya/stingray/s/e/h1;-><init>()V

    new-instance v12, Lcom/hiya/stingray/s/e/u0;

    invoke-direct {v12}, Lcom/hiya/stingray/s/e/u0;-><init>()V

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/hiya/stingray/s/d/e$d;-><init>(Lcom/hiya/stingray/s/d/e;Lg/g/a/b/l;Lg/g/a/b/a;Lg/g/a/b/r;Lg/g/a/b/a0;Lg/g/a/b/c0;Lcom/hiya/stingray/s/e/y0;Lcom/hiya/stingray/s/e/v1;Lcom/hiya/stingray/s/e/h1;Lcom/hiya/stingray/s/e/u0;Lcom/hiya/stingray/s/d/e$a;)V

    return-object v0
.end method
