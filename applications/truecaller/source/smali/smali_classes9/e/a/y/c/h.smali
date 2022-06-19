.class public final Le/a/y/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/y/c/g;",
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
            "Ls1/w/f;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/c/k;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/b/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/b/m;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/h/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/c/k;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/b/g0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/b/h;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/b/m;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/h/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/b/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/c/h;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/a/y/c/h;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/a/y/c/h;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/a/y/c/h;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/a/y/c/h;->e:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Le/a/y/c/h;->f:Ljavax/inject/Provider;

    .line 8
    iput-object p7, p0, Le/a/y/c/h;->g:Ljavax/inject/Provider;

    .line 9
    iput-object p8, p0, Le/a/y/c/h;->h:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/y/c/h;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ls1/w/f;

    iget-object v0, p0, Le/a/y/c/h;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ls1/w/f;

    iget-object v0, p0, Le/a/y/c/h;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/y/c/k;

    iget-object v0, p0, Le/a/y/c/h;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/a/y/b/g0;

    iget-object v0, p0, Le/a/y/c/h;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/a/y/b/h;

    iget-object v0, p0, Le/a/y/c/h;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/y/b/m;

    iget-object v0, p0, Le/a/y/c/h;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/y/h/a;

    iget-object v0, p0, Le/a/y/c/h;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/y/b/q;

    .line 2
    new-instance v0, Le/a/y/c/g;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Le/a/y/c/g;-><init>(Ls1/w/f;Ls1/w/f;Le/a/y/c/k;Le/a/y/b/g0;Le/a/y/b/h;Le/a/y/b/m;Le/a/y/h/a;Le/a/y/b/q;)V

    return-object v0
.end method
