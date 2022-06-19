.class public final Le/m/a/b/j/c0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/b/j/c0/h/x;",
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
            "Le/m/a/b/j/c0/i/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/a0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/h/s;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/e0/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/c0/g;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/c0/g;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/c0/g;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/c0/g;->d:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/g;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Le/m/a/b/j/c0/g;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/b/j/c0/i/a0;

    iget-object v2, p0, Le/m/a/b/j/c0/g;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/b/j/c0/h/s;

    iget-object v3, p0, Le/m/a/b/j/c0/g;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/b/j/e0/a;

    .line 2
    new-instance v3, Le/m/a/b/j/c0/h/r;

    invoke-direct {v3, v0, v1, v2}, Le/m/a/b/j/c0/h/r;-><init>(Landroid/content/Context;Le/m/a/b/j/c0/i/a0;Le/m/a/b/j/c0/h/s;)V

    return-object v3
.end method
