.class public final Lcom/hiya/stingray/s/d/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/s/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/s/e/m;

.field private b:Lcom/hiya/stingray/s/e/f1;

.field private c:Lcom/hiya/stingray/s/e/e2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/s/d/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/s/e/m;)Lcom/hiya/stingray/s/d/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/s/e/m;

    iput-object p1, p0, Lcom/hiya/stingray/s/d/e$b;->a:Lcom/hiya/stingray/s/e/m;

    return-object p0
.end method

.method public b()Lcom/hiya/stingray/s/d/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/d/e$b;->a:Lcom/hiya/stingray/s/e/m;

    const-class v1, Lcom/hiya/stingray/s/e/m;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/s/d/e$b;->b:Lcom/hiya/stingray/s/e/f1;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/hiya/stingray/s/e/f1;

    invoke-direct {v0}, Lcom/hiya/stingray/s/e/f1;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/s/d/e$b;->b:Lcom/hiya/stingray/s/e/f1;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/s/d/e$b;->c:Lcom/hiya/stingray/s/e/e2;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/hiya/stingray/s/e/e2;

    invoke-direct {v0}, Lcom/hiya/stingray/s/e/e2;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/s/d/e$b;->c:Lcom/hiya/stingray/s/e/e2;

    .line 6
    :cond_1
    new-instance v0, Lcom/hiya/stingray/s/d/e;

    iget-object v1, p0, Lcom/hiya/stingray/s/d/e$b;->a:Lcom/hiya/stingray/s/e/m;

    iget-object v2, p0, Lcom/hiya/stingray/s/d/e$b;->b:Lcom/hiya/stingray/s/e/f1;

    iget-object v3, p0, Lcom/hiya/stingray/s/d/e$b;->c:Lcom/hiya/stingray/s/e/e2;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/s/d/e;-><init>(Lcom/hiya/stingray/s/e/m;Lcom/hiya/stingray/s/e/f1;Lcom/hiya/stingray/s/e/e2;Lcom/hiya/stingray/s/d/e$a;)V

    return-object v0
.end method
