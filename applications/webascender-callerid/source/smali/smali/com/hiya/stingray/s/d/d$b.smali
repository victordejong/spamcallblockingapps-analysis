.class public final Lcom/hiya/stingray/s/d/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/s/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/s/e/a;

.field private b:Lcom/hiya/stingray/s/d/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/s/d/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/s/d/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/s/d/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/d/d$b;->a:Lcom/hiya/stingray/s/e/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/stingray/s/e/a;

    invoke-direct {v0}, Lcom/hiya/stingray/s/e/a;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/s/d/d$b;->a:Lcom/hiya/stingray/s/e/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/s/d/d$b;->b:Lcom/hiya/stingray/s/d/h;

    const-class v1, Lcom/hiya/stingray/s/d/h;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/hiya/stingray/s/d/d;

    iget-object v1, p0, Lcom/hiya/stingray/s/d/d$b;->a:Lcom/hiya/stingray/s/e/a;

    iget-object v2, p0, Lcom/hiya/stingray/s/d/d$b;->b:Lcom/hiya/stingray/s/d/h;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/s/d/d;-><init>(Lcom/hiya/stingray/s/e/a;Lcom/hiya/stingray/s/d/h;Lcom/hiya/stingray/s/d/d$a;)V

    return-object v0
.end method

.method public b(Lcom/hiya/stingray/s/d/h;)Lcom/hiya/stingray/s/d/d$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/hiya/stingray/s/d/h;

    iput-object p1, p0, Lcom/hiya/stingray/s/d/d$b;->b:Lcom/hiya/stingray/s/d/h;

    return-object p0
.end method
