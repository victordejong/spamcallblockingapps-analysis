.class final Lcom/hiya/client/callerid/dao/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/w;->b(Ljava/lang/String;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/client/callerid/dao/w$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/client/callerid/dao/w$b;

    invoke-direct {v0}, Lcom/hiya/client/callerid/dao/w$b;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/dao/w$b;->f:Lcom/hiya/client/callerid/dao/w$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/m/d;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/m/d;",
            ")",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/m/e;",
            ">;"
        }
    .end annotation

    const-string v0, "categories"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/g/a/a/i/m/d;->getCategories()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/m/d;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/w$b;->a(Lg/g/a/a/i/m/d;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
