.class public final synthetic Le/a/o/e;
.super Ls1/z/c/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/a/o/b/l0;)V
    .locals 6

    const-class v2, Le/a/o/b/l0;

    const-string v3, "outgoingMessage"

    const-string v4, "getOutgoingMessage()Lkotlinx/coroutines/flow/MutableStateFlow;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ls1/z/c/u;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/o/b/l0;

    .line 1
    invoke-interface {v0}, Le/a/o/b/l0;->i()Lq3/a/x2/a1;

    move-result-object v0

    return-object v0
.end method
