.class public final Le/a/y/a/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/y/a/l/f;",
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
            "Le/a/y/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/b/w;",
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
            "Ls1/w/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls1/w/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/b/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/a/l/g;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/a/y/a/l/g;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/a/y/a/l/g;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/a/y/a/l/g;->d:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/a/l/g;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/w/f;

    iget-object v1, p0, Le/a/y/a/l/g;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/w/f;

    iget-object v2, p0, Le/a/y/a/l/g;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y/c/b;

    iget-object v3, p0, Le/a/y/a/l/g;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/y/b/w;

    .line 2
    new-instance v4, Le/a/y/a/l/f;

    invoke-direct {v4, v0, v1, v2, v3}, Le/a/y/a/l/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/y/c/b;Le/a/y/b/w;)V

    return-object v4
.end method
