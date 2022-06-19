.class public final synthetic Li/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f:Li/a/a/c/d;


# direct methods
.method public synthetic constructor <init>(Li/a/a/c/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/a/c/a;->f:Li/a/a/c/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li/a/a/c/a;->f:Li/a/a/c/d;

    check-cast p1, Li/a/a/c/f;

    invoke-virtual {v0, p1, p2}, Li/a/a/c/d;->e(Li/a/a/c/f;Ljava/lang/Object;)V

    return-void
.end method
