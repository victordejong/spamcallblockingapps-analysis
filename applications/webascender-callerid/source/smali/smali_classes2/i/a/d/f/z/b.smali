.class public final synthetic Li/a/d/f/z/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/Queue;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Queue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/d/f/z/b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li/a/d/f/z/b;->a:Ljava/util/Queue;

    check-cast p1, Li/a/a/e/a;

    invoke-static {v0, p1}, Li/a/d/f/z/d$b;->h(Ljava/util/Queue;Li/a/a/e/a;)V

    return-void
.end method
