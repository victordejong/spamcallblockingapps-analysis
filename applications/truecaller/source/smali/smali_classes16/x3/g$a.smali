.class public final Lx3/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx3/c<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/g$a;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/g$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lx3/b;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lx3/e;

    invoke-direct {v0, p0, p1}, Lx3/e;-><init>(Lx3/g$a;Lx3/b;)V

    .line 2
    new-instance v1, Lx3/f;

    invoke-direct {v1, p0, v0}, Lx3/f;-><init>(Lx3/g$a;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Lx3/b;->enqueue(Lx3/d;)V

    return-object v0
.end method
