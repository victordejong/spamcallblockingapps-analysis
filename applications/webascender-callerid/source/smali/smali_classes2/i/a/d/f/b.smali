.class public final synthetic Li/a/d/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Li/a/d/f/q;


# direct methods
.method public synthetic constructor <init>(Li/a/d/f/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/d/f/b;->a:Li/a/d/f/q;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li/a/d/f/b;->a:Li/a/d/f/q;

    check-cast p1, Li/a/d/c/f;

    invoke-virtual {v0, p1}, Li/a/d/f/q;->e(Li/a/d/c/f;)Li/a/d/f/p;

    move-result-object p1

    return-object p1
.end method
