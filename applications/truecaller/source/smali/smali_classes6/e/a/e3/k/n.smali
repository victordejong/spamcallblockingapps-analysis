.class public final Le/a/e3/k/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/e3/k/k;",
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
            "Le/a/p5/v0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e3/k/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/p5/v0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/p5/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/e3/k/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e3/k/n;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/a/e3/k/n;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/a/e3/k/n;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/a/e3/k/n;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/a/e3/k/n;->e:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Le/a/e3/k/n;->f:Ljavax/inject/Provider;

    .line 8
    iput-object p7, p0, Le/a/e3/k/n;->g:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/e3/k/n;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls1/w/f;

    iget-object v0, p0, Le/a/e3/k/n;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/a/p5/v0/b;

    iget-object v0, p0, Le/a/e3/k/n;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/e4/p;

    iget-object v0, p0, Le/a/e3/k/n;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/a/p5/c;

    iget-object v0, p0, Le/a/e3/k/n;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/a/e3/k/f;

    iget-object v0, p0, Le/a/e3/k/n;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/b0/q/z;

    iget-object v0, p0, Le/a/e3/k/n;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/q2/a;

    .line 2
    new-instance v0, Le/a/e3/k/k;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/a/e3/k/k;-><init>(Ls1/w/f;Le/a/p5/v0/b;Le/a/e4/p;Le/a/p5/c;Le/a/e3/k/f;Le/a/b0/q/z;Le/a/q2/a;)V

    return-object v0
.end method
