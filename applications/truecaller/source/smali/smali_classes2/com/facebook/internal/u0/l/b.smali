.class public final synthetic Lcom/facebook/internal/u0/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/l/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/l/b;

    invoke-direct {v0}, Lcom/facebook/internal/u0/l/b;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/l/b;->a:Lcom/facebook/internal/u0/l/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/facebook/internal/u0/i;

    check-cast p2, Lcom/facebook/internal/u0/i;

    const-string v0, "o2"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/facebook/internal/u0/i;->a(Lcom/facebook/internal/u0/i;)I

    move-result p1

    return p1
.end method
