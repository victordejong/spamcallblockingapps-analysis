.class public final Le/m/a/b/j/c0/i/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/m/a/b/j/c0/i/h0;",
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
            "Le/m/a/b/j/c0/i/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
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
            "Le/m/a/b/j/c0/i/b0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/m/a/b/j/c0/i/j0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/c0/i/i0;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/c0/i/i0;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/c0/i/i0;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/c0/i/i0;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Le/m/a/b/j/c0/i/i0;->e:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/i/i0;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/m/a/b/j/e0/a;

    iget-object v0, p0, Le/m/a/b/j/c0/i/i0;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/m/a/b/j/e0/a;

    iget-object v0, p0, Le/m/a/b/j/c0/i/i0;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/m/a/b/j/c0/i/i0;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Le/m/a/b/j/c0/i/i0;->e:Ljavax/inject/Provider;

    .line 2
    sget-object v5, Le/m/a/b/j/z/b/a;->c:Ljava/lang/Object;

    .line 3
    instance-of v5, v4, Le/m/a/b/j/z/a;

    if-eqz v5, :cond_0

    .line 4
    check-cast v4, Le/m/a/b/j/z/a;

    move-object v6, v4

    goto :goto_0

    .line 5
    :cond_0
    new-instance v5, Le/m/a/b/j/z/b/a;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-direct {v5, v4}, Le/m/a/b/j/z/b/a;-><init>(Ljavax/inject/Provider;)V

    move-object v6, v5

    .line 8
    :goto_0
    new-instance v7, Le/m/a/b/j/c0/i/h0;

    move-object v4, v0

    check-cast v4, Le/m/a/b/j/c0/i/b0;

    move-object v5, v1

    check-cast v5, Le/m/a/b/j/c0/i/j0;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/m/a/b/j/c0/i/h0;-><init>(Le/m/a/b/j/e0/a;Le/m/a/b/j/e0/a;Le/m/a/b/j/c0/i/b0;Le/m/a/b/j/c0/i/j0;Le/m/a/b/j/z/a;)V

    return-object v7
.end method
