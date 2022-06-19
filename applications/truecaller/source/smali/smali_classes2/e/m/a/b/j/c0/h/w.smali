.class public final Le/m/a/b/j/c0/h/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/b/j/c0/h/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/x;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/d0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/a0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/x;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/d0/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/c0/h/w;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/c0/h/w;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/c0/h/w;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/c0/h/w;->d:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/h/w;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/m/a/b/j/c0/h/w;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/b/j/c0/i/a0;

    iget-object v2, p0, Le/m/a/b/j/c0/h/w;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/b/j/c0/h/x;

    iget-object v3, p0, Le/m/a/b/j/c0/h/w;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/b/j/d0/b;

    .line 2
    new-instance v4, Le/m/a/b/j/c0/h/v;

    invoke-direct {v4, v0, v1, v2, v3}, Le/m/a/b/j/c0/h/v;-><init>(Ljava/util/concurrent/Executor;Le/m/a/b/j/c0/i/a0;Le/m/a/b/j/c0/h/x;Le/m/a/b/j/d0/b;)V

    return-object v4
.end method
