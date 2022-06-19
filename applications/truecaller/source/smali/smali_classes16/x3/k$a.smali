.class public Lx3/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/k;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lx3/b0;)Lx3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/c<",
        "Ljava/lang/Object;",
        "Lx3/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Type;

.field public final synthetic b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lx3/k;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lx3/k$a;->a:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lx3/k$a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/k$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lx3/b;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/k$a;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lx3/k$b;

    invoke-direct {v1, v0, p1}, Lx3/k$b;-><init>(Ljava/util/concurrent/Executor;Lx3/b;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method
