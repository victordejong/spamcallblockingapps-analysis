.class public final Lcom/hiya/client/support/logging/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lr/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field public static final c:Lcom/hiya/client/support/logging/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/support/logging/a;

    invoke-direct {v0}, Lcom/hiya/client/support/logging/a;-><init>()V

    sput-object v0, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    .line 2
    sget-object v0, Lcom/hiya/client/support/logging/f;->PROD:Lcom/hiya/client/support/logging/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/hiya/client/support/logging/a;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/hiya/client/support/logging/a;->b:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/client/support/logging/a;->c(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lr/a/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "Timber.forest()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/hiya/client/support/logging/a;->a:Ljava/util/List;

    .line 2
    invoke-static {}, Lr/a/a;->k()V

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lr/a/a$b;

    invoke-direct {p1}, Lr/a/a$b;-><init>()V

    invoke-static {p1}, Lr/a/a;->i(Lr/a/a$c;)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object p1, Lcom/hiya/client/support/logging/a;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a/a$c;

    .line 6
    invoke-static {v0}, Lr/a/a;->i(Lr/a/a$c;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string p1, "existingTrees"

    .line 7
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Lcom/hiya/client/support/logging/f;)V
    .locals 1

    const-string v0, "serviceEndPoint"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
