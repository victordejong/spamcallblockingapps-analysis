.class public final Le/a/u/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/u/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/q;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/j0/n;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/p5/c0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/q;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/u/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/j0/n;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/u/l;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/a/u/l;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/a/u/l;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/a/u/l;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/a/u/l;->e:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Le/a/u/l;->f:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/u/l;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls1/w/f;

    iget-object v0, p0, Le/a/u/l;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/a/p5/c0;

    iget-object v0, p0, Le/a/u/l;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/b0/q/q;

    iget-object v0, p0, Le/a/u/l;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/a/u/c;

    iget-object v0, p0, Le/a/u/l;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/a/j0/n;

    iget-object v0, p0, Le/a/u/l;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/q2/a;

    .line 2
    new-instance v0, Le/a/u/k;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/a/u/k;-><init>(Ls1/w/f;Le/a/p5/c0;Le/a/b0/q/q;Le/a/u/c;Le/a/j0/n;Le/a/q2/a;)V

    return-object v0
.end method
