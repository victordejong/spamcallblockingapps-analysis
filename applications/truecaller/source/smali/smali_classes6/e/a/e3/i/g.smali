.class public final Le/a/e3/i/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/e3/i/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e3/k/s/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e3/i/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d3/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d3/j;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e3/k/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/o/c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/h;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d3/d;",
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
            "Le/a/e3/k/s/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/e3/i/c$a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/d3/h;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/d3/j;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/e3/k/i;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/o/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/p5/j0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/k/h;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/d3/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e3/i/g;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/a/e3/i/g;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/a/e3/i/g;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/a/e3/i/g;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/a/e3/i/g;->e:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Le/a/e3/i/g;->f:Ljavax/inject/Provider;

    .line 8
    iput-object p7, p0, Le/a/e3/i/g;->g:Ljavax/inject/Provider;

    .line 9
    iput-object p8, p0, Le/a/e3/i/g;->h:Ljavax/inject/Provider;

    .line 10
    iput-object p9, p0, Le/a/e3/i/g;->i:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/e3/i/g;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/e3/k/s/c;

    iget-object v0, p0, Le/a/e3/i/g;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/a/e3/i/c$a;

    iget-object v0, p0, Le/a/e3/i/g;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/d3/h;

    iget-object v0, p0, Le/a/e3/i/g;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/a/d3/j;

    iget-object v0, p0, Le/a/e3/i/g;->e:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v0, p0, Le/a/e3/i/g;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/o/c;

    iget-object v0, p0, Le/a/e3/i/g;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/p5/j0;

    iget-object v0, p0, Le/a/e3/i/g;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/k/h;

    iget-object v0, p0, Le/a/e3/i/g;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/d3/d;

    .line 2
    new-instance v0, Le/a/e3/i/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/a/e3/i/c;-><init>(Le/a/e3/k/s/c;Le/a/e3/i/c$a;Le/a/d3/h;Le/a/d3/j;Lo3/a;Le/a/o/c;Le/a/p5/j0;Le/a/k/h;Le/a/d3/d;)V

    return-object v0
.end method
