.class public final Le/m/a/b/j/c0/h/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/b/j/c0/h/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/y/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/x;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/d0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/y/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/a0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/x;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/d0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/c0/h/u;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/c0/h/u;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/c0/h/u;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/c0/h/u;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/m/a/b/j/c0/h/u;->e:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Le/m/a/b/j/c0/h/u;->f:Ljavax/inject/Provider;

    .line 8
    iput-object p7, p0, Le/m/a/b/j/c0/h/u;->g:Ljavax/inject/Provider;

    .line 9
    iput-object p8, p0, Le/m/a/b/j/c0/h/u;->h:Ljavax/inject/Provider;

    .line 10
    iput-object p9, p0, Le/m/a/b/j/c0/h/u;->i:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/m/a/b/j/y/e;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/m/a/b/j/c0/i/a0;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/m/a/b/j/c0/h/x;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/m/a/b/j/d0/b;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/m/a/b/j/e0/a;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/m/a/b/j/e0/a;

    iget-object v0, p0, Le/m/a/b/j/c0/h/u;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/m/a/b/j/c0/i/z;

    .line 2
    new-instance v0, Le/m/a/b/j/c0/h/t;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/m/a/b/j/c0/h/t;-><init>(Landroid/content/Context;Le/m/a/b/j/y/e;Le/m/a/b/j/c0/i/a0;Le/m/a/b/j/c0/h/x;Ljava/util/concurrent/Executor;Le/m/a/b/j/d0/b;Le/m/a/b/j/e0/a;Le/m/a/b/j/e0/a;Le/m/a/b/j/c0/i/z;)V

    return-object v0
.end method
