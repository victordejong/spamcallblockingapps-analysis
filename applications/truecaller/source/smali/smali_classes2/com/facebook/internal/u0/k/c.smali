.class public final synthetic Lcom/facebook/internal/u0/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/k/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/k/c;

    invoke-direct {v0}, Lcom/facebook/internal/u0/k/c;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/k/c;->a:Lcom/facebook/internal/u0/k/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/facebook/internal/u0/i;

    check-cast p2, Lcom/facebook/internal/u0/i;

    .line 1
    sget-object v0, Lcom/facebook/internal/u0/k/e;->a:Lcom/facebook/internal/u0/k/e;

    .line 2
    const-class v0, Lcom/facebook/internal/u0/k/e;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "o2"

    .line 3
    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/internal/u0/i;->a(Lcom/facebook/internal/u0/i;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return v2
.end method
