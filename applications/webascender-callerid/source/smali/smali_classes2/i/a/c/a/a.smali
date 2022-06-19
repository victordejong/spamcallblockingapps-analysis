.class public final synthetic Li/a/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f:Lu/g$a;


# direct methods
.method public synthetic constructor <init>(Lu/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/c/a/a;->f:Lu/g$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li/a/c/a/a;->f:Lu/g$a;

    check-cast p1, Li/a/a/c/f;

    invoke-static {v0, p1, p2}, Li/a/c/a/b;->g(Lu/g$a;Li/a/a/c/f;Ljava/lang/Object;)V

    return-void
.end method
