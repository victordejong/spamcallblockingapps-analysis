.class public final Le/a/y/a/i/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/y/a/i/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/y/a/i/e/c;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/a/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/b/w;",
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


# direct methods
.method public constructor <init>(Le/a/y/a/i/e/c;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y/a/i/e/c;",
            "Ljavax/inject/Provider<",
            "Le/a/y/a/i/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/b/w;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/y/b/g0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/a/i/e/e;->a:Le/a/y/a/i/e/c;

    .line 3
    iput-object p2, p0, Le/a/y/a/i/e/e;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/a/y/a/i/e/e;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/a/y/a/i/e/e;->d:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/a/i/e/e;->a:Le/a/y/a/i/e/c;

    iget-object v1, p0, Le/a/y/a/i/e/e;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/a/i/d;

    iget-object v2, p0, Le/a/y/a/i/e/e;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y/b/w;

    iget-object v3, p0, Le/a/y/a/i/e/e;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/y/b/g0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "flashOnBoardingView"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceUtil"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/y/a/i/c;

    invoke-direct {v0, v1, v2, v3}, Le/a/y/a/i/c;-><init>(Le/a/y/a/i/d;Le/a/y/b/w;Le/a/y/b/g0;)V

    return-object v0
.end method
