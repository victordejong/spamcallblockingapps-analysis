.class public final synthetic Lcom/facebook/internal/u0/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/n/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/n/a;

    invoke-direct {v0}, Lcom/facebook/internal/u0/n/a;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/n/a;->a:Lcom/facebook/internal/u0/n/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/facebook/internal/u0/n/d;

    check-cast p2, Lcom/facebook/internal/u0/n/d;

    const-string v0, "o2"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/facebook/internal/u0/n/d;->c:Ljava/lang/Long;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    iget-object p1, p2, Lcom/facebook/internal/u0/n/d;->c:Ljava/lang/Long;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, p2

    :goto_1
    return v0
.end method
