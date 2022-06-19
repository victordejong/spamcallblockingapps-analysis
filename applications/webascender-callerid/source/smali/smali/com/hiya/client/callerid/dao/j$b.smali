.class final Lcom/hiya/client/callerid/dao/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/j;->c()Li/c/b0/b/e0;
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
        "Ljava/lang/Throwable;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/client/callerid/dao/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/client/callerid/dao/j$b;

    invoke-direct {v0}, Lcom/hiya/client/callerid/dao/j$b;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/dao/j$b;->f:Lcom/hiya/client/callerid/dao/j$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {v0}, Lcom/hiya/api/exception/RetrofitException;->a()Lcom/hiya/api/exception/RetrofitException$a;

    move-result-object v0

    sget-object v1, Lcom/hiya/api/exception/RetrofitException$a;->OFFLINE:Lcom/hiya/api/exception/RetrofitException$a;

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/hiya/client/callerid/dao/l;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get hashed countries from api"

    invoke-static {v0, p1, v2, v1}, Lcom/hiya/client/support/logging/d;->k(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_1
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/j$b;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
