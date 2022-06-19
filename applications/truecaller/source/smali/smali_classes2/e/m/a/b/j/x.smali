.class public final Le/m/a/b/j/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/b/j/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/t;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/t;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/x;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/x;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/x;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/x;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/m/a/b/j/x;->e:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/b/j/x;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/m/a/b/j/e0/a;

    iget-object v0, p0, Le/m/a/b/j/x;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/m/a/b/j/e0/a;

    iget-object v0, p0, Le/m/a/b/j/x;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/m/a/b/j/c0/e;

    iget-object v0, p0, Le/m/a/b/j/x;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/m/a/b/j/c0/h/t;

    iget-object v0, p0, Le/m/a/b/j/x;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/m/a/b/j/c0/h/v;

    .line 2
    new-instance v0, Le/m/a/b/j/v;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/m/a/b/j/v;-><init>(Le/m/a/b/j/e0/a;Le/m/a/b/j/e0/a;Le/m/a/b/j/c0/e;Le/m/a/b/j/c0/h/t;Le/m/a/b/j/c0/h/v;)V

    return-object v0
.end method
