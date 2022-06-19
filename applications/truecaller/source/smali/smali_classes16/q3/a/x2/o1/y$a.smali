.class public final synthetic Lq3/a/x2/o1/y$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/o1/y;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final j:Lq3/a/x2/o1/y$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/a/x2/o1/y$a;

    invoke-direct {v0}, Lq3/a/x2/o1/y$a;-><init>()V

    sput-object v0, Lq3/a/x2/o1/y$a;->j:Lq3/a/x2/o1/y$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lq3/a/x2/g;

    const/4 v1, 0x3

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 2
    invoke-interface {p1, p2, p3}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
