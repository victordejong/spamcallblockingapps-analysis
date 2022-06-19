.class public final Lcom/hiya/client/callerid/ui/z/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/z/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/hiya/client/callerid/ui/z/l;

.field private b:Lcom/hiya/client/callerid/ui/z/f;

.field private c:Lcom/hiya/client/callerid/ui/z/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/client/callerid/ui/z/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/z/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/client/callerid/ui/z/a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c$b;->a:Lcom/hiya/client/callerid/ui/z/l;

    const-class v1, Lcom/hiya/client/callerid/ui/z/l;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c$b;->b:Lcom/hiya/client/callerid/ui/z/f;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/hiya/client/callerid/ui/z/f;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/z/f;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/z/c$b;->b:Lcom/hiya/client/callerid/ui/z/f;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/c$b;->c:Lcom/hiya/client/callerid/ui/z/i;

    const-class v1, Lcom/hiya/client/callerid/ui/z/i;

    invoke-static {v0, v1}, Lh/b/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Lcom/hiya/client/callerid/ui/z/c;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/z/c$b;->a:Lcom/hiya/client/callerid/ui/z/l;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/z/c$b;->b:Lcom/hiya/client/callerid/ui/z/f;

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/z/c$b;->c:Lcom/hiya/client/callerid/ui/z/i;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hiya/client/callerid/ui/z/c;-><init>(Lcom/hiya/client/callerid/ui/z/l;Lcom/hiya/client/callerid/ui/z/f;Lcom/hiya/client/callerid/ui/z/i;Lcom/hiya/client/callerid/ui/z/c$a;)V

    return-object v0
.end method

.method public b(Lcom/hiya/client/callerid/ui/z/i;)Lcom/hiya/client/callerid/ui/z/c$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/hiya/client/callerid/ui/z/i;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/c$b;->c:Lcom/hiya/client/callerid/ui/z/i;

    return-object p0
.end method

.method public c(Lcom/hiya/client/callerid/ui/z/l;)Lcom/hiya/client/callerid/ui/z/c$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lh/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/hiya/client/callerid/ui/z/l;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/c$b;->a:Lcom/hiya/client/callerid/ui/z/l;

    return-object p0
.end method
